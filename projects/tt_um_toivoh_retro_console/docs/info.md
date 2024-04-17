<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## What it is

AnemoneGrafx-8 is a retro console containing
- a PPU for VGA graphics output
- an analog emulation polysynth for sound output

The design is intended to work together with the RP2040 microcontroller on the Tiny Tapeout 06 Demo Board, the RP2040 providing
- RAM emulation
- Connections to the outside world for the console (except VGA output)
- The CPU to drive the console

Features:
- PPU:
  - 320x240 @60 fps VGA output (actually 640x480 @60 VGA)
    - Some lower resolutions are also supported, useful if the design can not be clocked at 50.35 MHz
  - 16 color palette, choosing from 256 possible colors
  - Two independently scrolling tile planes
    - 8x8 pixel tiles
    - color mode selectable per tile:
      - 2 bits per pixel, using 4 subpalettes (selectable per tile)
      - 4 bits per pixel, halved horizontal resolution (4x8 stretched to 8x8 pixels)
  - 64 simultaneous sprites (more can be displayed at once with some Copper tricks)
    - mode selectable per sprite:
      - 16x8, 2 bits per pixel using 4 subpalettes (selectable per sprite)
      - 8x8, 4 bits per pixel
    - up to 4 sprites can be loaded and overlapping at the same pixel
      - more sprites can be visible on same scan line as long as they are not too cramped together
  - Simple Copper-like function for register control synchronized to pixel timing
    - write PPU registers
    - wait for x/y coordinate
- AnemoneSynth:
  - 16 bit 96 kHz output
  - 4 voices, each with
    - Two oscillators
      - Option to let the sub-oscillator generate noise
    - Three waveform generators with choice of sawtooth, triangle, pulse waves with 4 different duty cycles, 2 bit sawooth and triangle
    - 2nd order low pass filter
      - Sweepable volume, cutoff frequency, and resonance

## How it works

The console consists of two parts:
- The PPU generates a stream of pixels that can be output as a VGA signals, based tile graphics, map, and sprite data read from memory, and the contents of the palette registers.
- The synth generates a stream of samples by
	- context switching between voices at a rate of 96 kHz
		- adding the contributions for four 96 kHz samples from the voice to internal buffers in one go
	- outputting each 96 kHz sample once it has received contributions from each voice

### PPU

	                index
	                depth,
	    sprite unit ---->-\        index         rgb         rgb222
	        || |           compose ----> palette --> dither ------->-
	   tile map unit --->-/                                          \
	        || |     index, depth                                     VGA out --->
	       copper                                                    /
	        |^ |   x, y                        hsync, vsync, active /
	        || +<---------raster scan -> delay ------------------->-
	        V|
	---> read unit --->
	data           addr

The PPU is composed of a number of components, including:
- The _sprite unit_ reads and buffers sprite data and sprite pixels, and outputs index and depth for the topmost sprite pixel
- The _tile map unit_ reads and buffers tilemap and tile pixel data,  and outputs index and depth for the topmost tile map pixel
- The _copper_ reads an instruction stream of register writes, wait for x/y, and jump instructions, and updates PPU registers accordingly
- The _read unit_ prioritizes read requests to graphics memory between the sprite unit, tile map unit, and copper, and keeps a track of the recipient of each data word when it comes back a number of cycles after the address was sent

The PPU uses 4 clock cycles to generate each pixel, which is duplicated into two VGA pixels of two cycles each.
(The two VGA pixels can be different due to dithering.)

Many of the registers and memories in the PPU are implemented as shift registers for compactness.

#### The read unit
The read unit transmits a sequence of 16 bit addresses, and expects to recieve the corresponding 16 bit data word after a fixed delay. In this way, it can address a 128 kB address space. The delay is set so that the tile map unit can request tilemap data, and receive it just in time to use it to request pixel data four pixels later.
The read unit transmits 4 address bits per cycle through the `addr_out` pins, and recieves 4 data bits per cycle through the `data_in` pins, completing one 16 bit read every _serial cycle_, which corresponds to one pixel or four clock cycles.

The tile map unit has the highest priority, followed by the copper, and finally the sprite unit, which is expected to have enough buffering to be able to wait for access. The tile map unit will only make accesses on every other serial cycle on average, and the copper at most once every few cycles, but they can both be disabled to give more bandwidth to the sprite unit.

#### The tile map unit
The tile map unit handles two independently scrolling tile planes, each composed of 8x8 pixel tiles.
The two planes get read priority on alternating serial cycles.
Each plane sends a read every four serial cycles, alternating between reading tile map data and the corresponding pixel data for the line.
The pixel data for each plane (16 bits) is stored in a shift register and gradually shifted out until the register can be quickly refilled. The sequencing of the refill operation is adjusted to provide one extra pixel of delay in case the pixel data arrives one pixel early (as it might have to do since the plane only gets read priority every other cycle).

#### The sprite unit
The sprite unit is the most complex part of the PPU. It works with a list of 64 sprites, and has 4 sprite buffers that can load sprite data for the current scan line. Once the final x coordinate of a sprite has passed, the corresponding sprite buffer can be reused to load a new sprite on the same line, as long as there is time to load the data before it should be displayed.

Sprite data is stored in memory in two structures:
- The sorted buffer
- The object attribute buffer

The sorted buffer must list all sprites to be displayed, sorted from left to right, with y coordinate and index. (16 bits/sprite)
The object attribute buffer contains all other object attributes: coordinates (only 3 lowest bits of y needed), palette, graphic tile, etc. (32 bits/sprite)

Sprite processing proceeds in three steps, each with its own buffers and head/tail pointers:
- Scan the sorted list to find sprites overlapping the current y coordinate (in order of increasing x value), store them in the id buffer (4 entries)
- Load object attributes for sprites in the id buffer, store in a sprite buffer and free the id buffer entry (4 sprite buffers)
- Load sprite pixels for sprites in the sprite buffer

Each succeeding step has higher priority to access memory, but will only be activated when the preceeding step can feed it with input data.

Pixel data for each sprite buffer is stored in a 32 bit shift register, and gradually shifted out as needed. If sprite pixels are loaded after the sprite should start to be displayed, the shift register will catch up as fast as it can before starting to provide pixels to be displayed. This will cause the leftmost pixels of the sprite to disappear (or all of them, if too many sprites are crowded too close).

### Synth

                    phase              phase
	main oscillator ---->    linear    ---->  waveform  ---> State variable ---> FIR downsampling ---> output buffer
	 sub oscillator ----> combinations       generators          filter               filter

The synth has 4 voices, but there is only memory for one voice at a time; the synth makes frequent context switches between the voices to be able to produce an output signal that contains the sum of the outputs.
Each voice contributes four 96 kHz time steps worth of data to the output buffer before being switched out for the next.
As soon as all voices have contibuted to an output buffer entry, it is fed to the output, and the space is reused for a new entry.

The synth is nominally sampled at 3072 kHz to produce output samples at a rate of 96 kHz. The high sample rate is used so that the main oscillator can always produce a an output that is exactly periodic with a period corresponding to the oscillator frequency, while maintaing good frequency resolution (< 1.18 cents at up to 3 kHz).
The 32x downsampling is done with a 96 tap FIR filter, so that each input sample contributes to three output samples.
Th FIR filter is optimized to minimize aliasing in the 0 - 20 kHz range after the 96 kHz output has been downsampled to 48 kHz with a good external antialiasing filter, assuming that the input is a sawtooth wave of 3 kHz or less.

To reduce computations, most of samples that a voice would feed into the FIR filter are zeros.
Usually, the voice steps 8 samples at a time, adding a single nonzero sample. Seen from this perspective, each voice is sampled at 384 kHz. This is just enough so that the state variable filter appears completely open when the cutoff frequency is set to the maximum.

To maintain frequency resolution, the main oscillator can periodically take a step of a single 3072 kHz sample, to pad out the period to the correct length. This results in advancing the state variable filter an eigth of a normal time step, and sending an output sample with an eigth of the normal amplitude through the FIR filter.
The sub-oscillator does not have the same independent frequency resolution since it does not control the small steps, but is often used at a much lower frequency.

The state variable filter is implemented using the same ideas as described and used in https://github.com/toivoh/tt05-synth, using a shift-adder for the main computations. The shift-adder is also time shared with the FIR filter; each FIR coefficient is stored as a sum / difference of powers of two (the FIR table was optimized to keep down the number of such terms). The shift-adder saturates the result if it would overflow, which allows to overdrive the filter.

Each oscillator uses a phase of 10 bits. A clock divider is used to get the desired octave.
To get the desired period, the phase sometimes needs to stay on the same value for two steps.
To choose which steps, the phase value is bit reversed and compared to the mantissa of the oscillators period value (the exponent controls the clock divider). This way, only a single additional bit is needed to keep track of the oscillator state beyond the current phase value.

Each time a voice is switched in, five sweep values are read from memory to decide if the two frequencies and 3 control periods for the state variable filters (see https://github.com/toivoh/tt05-synth) should be swept up or down. A similar approach is used as above, with a clock divider for the exponent part of the sweep rate, and bit reversing the swept value to decide whether to take a small or a big step.

## IO interfaces
AnemoneGrafx-8 has four interfaces:
- VGA output `uo` / `(R1, G1, B1, vsync, R0, G0, B0, hsync)`
- Read-only memory interface `(addr_out[3:0], data_in[3:0])` for the PPU
- Memory/host interface `(tx_out[1:0], rx_in[1:0])` for the synth, system control, and vblank events
	- `rx_in[1:0] = uio[7:6]` can be remapped to `rx_in_alt[1:0] = ui[5:4]` to free up `uio[7:6]` for use as outputs
- Additional video outputs `(Gm1_active_out, RBm1_pixelclk_out)`. Can output either
	- Additional lower `RGB` bits to avoid having to dither the VGA output
	- Active signal and pixel clock, useful for e g HDMI output

Additionally
- `data_in[0]` is sampled into `cfg[0]` as long as `rst_n` is high to choose the output mode
	- `cfg[0] = 0`: `uio[7:6]` is used to input `rx_in[1:0]`,
	- `cfg[0] = 1`: `uio[7:6]` is used to output `{RBm1_pixelclk_out, Gm1_active_out}`.
- When the PPU is in reset (due to `rst_n` or `ppu_rst_n`), `addr_out` loops back the values from `data_in`, delayed by two register stages.

### VGA output
The VGA output follows the [Tiny VGA pinout](https://tinytapeout.com/specs/pinouts/#vga-output), giving two bits per channel.
The PPU works with 8 bit color:

	R = {R1, R0, RBm1}
	G = {G1, G0, Gm1}
	B = {B1, B0, RBm1}

where the least significant bit it is identical between the red and blue channel.
By default, dithering is used to reduce the output to 6 bit color (two bits per channel).
Dithering can be disabled, and the low order color bits `{RBm1, Gm1}` be output on `{RBm1_pixelclk_out, Gm1_active_out}`.

The other output option for `(Gm1_active_out, RBm1_pixelclk_out)` is to output the `active` and `pixelclk` signals:
- `active` is high when the current RGB output pixel is in the active display area.
- `pixelclk` has one period per VGA pixel (two clock cycles), and is high during the second clock cycle that the VGA pixel is valid.

### Read-only memory interface
The PPU uses the read-only memory interface to read video RAM. The interface handles only reads, but video RAM may be updated by means external to the console (and needs to, to make the output image change!).

Each read sends a 16 bit word address and receives the 16 bit word at that address, allowing the PPU to access 128 kB of data.
A read occurs during a _serial cycle_, or 4 clock cycles. As soon as one serial cycle is finished, the next one begins.

The address `addr[15:0]` for one read is sent during the serial cycle in order of lowest bits to highest:

	addr_out[3:0] = addr[3:0]   // cycle 0
	addr_out[3:0] = addr[7:4]   // cycle 1
	addr_out[3:0] = addr[11:8]  // cycle 2
	addr_out[3:0] = addr[15:12] // cycle 3

The corresponding `data[15:0]` should be sent in the same order to `data_out[3:0]` with a specific delay that is approximately three serial cycles (TODO: describe the exact delay needed!).
The `data_in` to `addr_out` loopback function has been provided to help calibrate the required data delay.

To respond correctly to reads requests, one must know when a serial cycle starts.
This accomplished by an initial synchronization step:
- After reset, `addr_pins` start at zero.
- During the first serial cycle, a fixed address of `0x8421` is transmitted, and the corresponding data is discarded

### Memory / host interface
The memory / host interface is used to send a number of types messages and responses.
It uses start bits to allow each side to initiate a message when appropriate, subsequent bits are sent on subsequent clock cycles.
`tx_out` and `rx_in` are expected to remain low when no messages are sent.

`tx_out[1:0]` is used for messages from the console:
- a message is initiated with one cycle of `tx_out[1:0] = 1` (low bit set, high bit clear),
- during the next cycle, `tx_out[1:0]` contains the 2 bit _tx header_, specifying the message type,
- during the following 8 cycles, a 16 bit payload is sent through `tx_out[1:0]`, from lowest bits to highest.

`rx_in[1:0]` is used for messages to the console:
- a message is initiated with one cycle when `rx_in[1:0] != 0`, specifying the _rx header_, i e, the message type
- during the following 8 cycles, a 16 bit payload is sent through `rx_in[1:0]`, from lowest bits to highest.

TX message types:
- 0: Context switch: Store payload into state vector, return the replaced state value (rx header=1), increment state pointer.
- 1: Sample out: Payload is the next output sample from the synth, 16 bit signed.
- 2: Read: Payload is address, return corresponding data (rx header=2).
- 3: Vblank event. Payload should be ignored.

The state pointer should wrap after 36 words.

RX message types:
- 1: Context switch response.
- 2: Read response.
- 3: Write register. Top byte of payload is register address, bottom is data value.

Available registers:
- 0: `sample_credits` (initial value 1)
- 1: `sbio_credits` (initial value 1)
- 2: `ppu_ctrl` (initial value `0b01011`)

## Using the PPU
The PPU is almost completely controlled through the VRAM (video RAM) contents.
The copper is restarted when a new frame begins, and starts to read instructions at address `0xfffe`. Copper instructions can write PPU registers; using the copper is the only way to write and initialize these registers.

The PPU registers in turn control the display of tile planes and sprites.

### PPU registers
The PPU has 32 PPU registers, which control different aspects of its operation.
Each register has up to 9 bits. The registers are laid out as follows:

	Address Category    Contents
	                      8    7    6    5    4    3    2    1    0
	 0 - 15 pal0-pal15 | r2   r1   rb0  g2   g1   g0   b2   b1  | X |
	16      scroll     |      scroll_x0                             |
	17      .          |  X | scroll_y0                             |
	18      .          |      scroll_x1                             |
	19      .          |  X | scroll_y1                             |
	20      copper_ctrl|      cmp_x                                 |
	21      .          |      cmp_y                                 |
	22      .          |      jump_lsb                              |
	23      .          |      jump_msb                              |
	24      base_addr  |      base_sorted                           |
	25      .          |      base_oam                              |
	26      .          |      base_map1    |      base_map0     | X |
	27      .          |      X            |b_tile_s | b_tile_p | X |
	28      gfxmode1   |      r_xe_hsync             | r_x0_fp      |
	29      gfxmode2   |vpol|hpol|  vsel   |      r_x0_bp           |
	30      gfxmode3   |      r_xe_active                           |
	31      displaymask|      X       |lspr|lpl1|lpl0|dspr|dpl1|dpl0|

where `X` means that the bit(s) in question are ignored.

Initial values:
- The `gfxmode` registers are initialized to `320x240` output (640x480 VGA output; pixels are always doubled in both directions before VGA output).
- The `displaymask` register is initialized to load and display sprites as well as both tile planes (initial value `0b111111`).
- The other registers, except the `copper_ctrl` category, need to be initialized after reset.

Each PPU register is described in the appropriate section:
- Palette (`pal0-pal15`)
- Tile planes (`scroll`, `base_map0`, `base_map1`, `b_tile_p`, `lpl0`, `lpl1`, `dpl0`, `dpl1`)
- Sprites (`base_sorted`, `base_oam`, `b_tile_s`, `lspr`, `dspr`)
- Copper (`copper_ctrl`)
- Graphics mode `gfxmode1-gfxmode3`)

### Palette
The PPU has a palette of 16 colors, each specified by 8 bits, which map to a 9 bit RGB333 color according to

	R = {r2, r1, rb0}
	G = {g2, g1, g0}
	B = {b2, b1, rb0}

where the least significant bit is shared between the red and blue channels.
Each palette color is set by writing the corresponding `palN` register. The instant when a palette color register is written, its color value will be used to display the current pixel if it is inside the active display area.

Tile and sprite graphics typically use 2 bits per pixel. They have a 4 bit `pal` attribute that specifies the mapping from tile pixels to paletter colors according to:

    pal     color 0     color 1     color 2     color 3
      
      0           0           1           2           3
      4           4           5           6           7
      8           8           9          10          11
     12          12          13          14          15
      
      2           2           3           4           5
      6           6           7           8           9
     10          10          11          12          13
     14          14          15           0           1
      
      1           0           4           8          12
      5           1           5           9          13
      9           2           6          10          14
     13           3           7          11          15
      
      3           8          12           1           5
      7           9          13           2           6
     11          10          14           3           7
      
     15 ---------------- 16 color mode ----------------

_Note that color 0 is transparent unless the `always_opaque` bit of the sprite/tile is set._
If no tile or sprite covers a given pixel, palette color 0 is used as background color.

In 16 color mode, two horizontally consecutive 2 bit pixels are used to form one 4 bit pixel.
- For 16 color tiles, each pixel is twice as wide to preserve the same total width.
- 16 color sprites are half as wide (8 pixels instead of 16).

### Tile graphic format
Tile planes and sprites are based on 8x8 pixel graphic tiles with 2 bits/pixel.
Each graphic tile is stored in 8 consecutive 16 bit words; one per line.
Within each line, the first pixel is stored in the bottom two bits, then the next pixel, and so on.

### Tile planes
The PPU supports two independently scrolling tile planes. Plane 0 is in front of plane 1.
Four `display_mask` bits control the behavior of the tile planes:
- When `dpl0` (`dpl1`) is cleared, plane 0 (1) is not displayed.
- When `lpl0` (`lpl1`) is cleared, no data for plane 0 (1) is loaded.

If a planes is not to be displayed, its `lplN` bit can be cleared to free up more read bandwidth for the sprites and copper. The plane's `lplN` bit should be set at least 16 pixels before the plane should be displayed.

The VRAM addresses used for the tile planes are

	plane_tiles_base = b_tile_p  << 14
	map0_base        = base_map0 << 12
	map1_base        = base_map1 << 12

The `scroll` registers specify the scroll position of the respective plane (TODO: describe offset).

The tile map for each plane is 64x64 tiles, and is stored row by row.
Each map entry is 16 bits:

	  15 - 12        11         10   -   0
	| pal     | always_opaque | tile_index |

where the tile is read from word address

	tile_addr = plane_tiles_base + (tile_index << 3)

### Sprites
Each sprite can be 16x8 pixels (4 color) or 8x8 pixels (16 color).
The PPU supports up to 64 simultaneous sprites in oam memory, but only 4 can overlap at the same time. Once a sprite is done for the scan line, the PPU can load a new sprite into the same slot, to display later on the same scan line, but it takes a number of pixels (partially depending on how much memory traffic is used by the tile planes and the copper.) More than 64 sprites can be displayed in a single frame by using the copper to change base addresses mid frame.

Two `display_mask` bits control the behavior of the sprite display:
- When `dspr` is cleared, no sprites are displayed.
- When `lspr` is cleared, no data for sprites is loaded.

It will take some time `lspr` is set before new sprites are completely loaded and can be displayed.

The VRAM addresses used for sprite display are

	sprite_tiles_base = b_tile_s << 14
	sorted_base       = base_sorted << 6
	oam_base          = base_oam    << 7


## How to test

TODO

## External hardware

A PMOD for VGA is needed for video output, that can accept VGA output according to https://tinytapeout.com/specs/pinouts/#vga-output.
Means of sound output is TBD, a PMOD for I2S might be needed (if so, haven't decided which one to use yet).
The RP2040 receives the sound samples, and could alternatively output them in some other way.
