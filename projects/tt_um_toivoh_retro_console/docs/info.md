<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## Overview

AnemoneGrafx-8 is a retro console containing

- a PPU for VGA graphics output
- an analog emulation polysynth for sound output

The console is designed to work together with the RP2040 microcontroller on the Tiny Tapeout 06 Demo Board, the RP2040 providing

- RAM emulation,
- connections to the outside world for the console (except VGA output),
- the CPU to drive the console.

Features:

- PPU:
  - 320x240 @60 fps VGA output (actually 640x480 @60 fps VGA)
    - Some lower resolutions are also supported, useful if the design can not be clocked at the target 50.35 MHz
  - 16 color palette, choosing from 256 possible colors
  - Two independently scrolling tile planes
    - 8x8 pixel tiles
    - color mode selectable per tile:
      - 2 bits per pixel, using one of 15 subpalettes per tile
      - 4 bits per pixel, halved horizontal resolution
  - 64 simultaneous sprites (more can be displayed at once with some Copper tricks)
    - mode selectable per sprite:
      - 16x8, 2 bits per pixel using one of 15 subpalettes per sprite
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
      - sweepable frequency
      - noise option
    - Three waveform generators with 8 waveforms: sawtooth/triangle/2 bit sawtooth/2 bit triangle/square wave/pulse wave with 37.5% / 25% / 12.5% duty cycle
    - 2nd order low pass filter
      - sweepable volume, cutoff frequency, and resonance

The console is designed to be clocked at 50.35 MHz, twice the pixel clock of 25.175 MHz used for VGAmode 640x480 @60 fps. (The frequency does not have to be terribly precise though, and there are ways to clock the console considerably slower and still get a useful output.)

Contents:
- Overview
- Design rationale
- How it works
- IO interfaces
- Using the PPU
- Using AnemoneSynth
- How to test
- External interfaces

## Design rationale
The design target was

- PPU with 2 bpp graphics, with
	- VGA output at 640x480 @60 fps, doubled from PPU output at 320x240 @60 fps,
	- 2 planes of 8x8 pixel tiles,
	- at least 8 sprites per scan line.
- Four voice analog emulation synthesizer with each voice in the style of the monosynth https://github.com/toivoh/tt05-synth.

Design considerations:
- On chip memory takes a lot of area, maybe 1 tile per 64 bytes
	- 8 kB of video RAM for the PPU would be infeasible on-chip
	- 192+80 bits per voice would need a lot of space
- Solution: Use the RP2040 microcontroller (with 264 kB of RAM) on the Tiny Tapeout demo board as a RAM emulator
	- Store only what is necessary on chip, use higher bandwidth to reduce needed on-chip storage
		- Let PPU render the same scan line contents twice to double pixels vertically, instead of trying to do it once and store the results
- Limited number of pins ==> use serial interface(s) for RAM emulation
- PPU needs predictable memory access latency, but only reading
	- I was able to implement a RP2040 solution that uses PIO (programmable IO) and DMA but not CPU
		- Gives fixed read latency, RP2040 can add extra latency to reach suitable delay
	- PPU designed assuming data arrives just in time to calculate address 4 reads later
- Synth uses context switching to keep track of state of only one voice at a time
	- Needs some bandwidth, but low/fixed latency is less important
	- Use synchronous serial interface with start bit and TX/RX FIFOs to allow RP2040 CPU to service the interface
- Sizing:
	- PPU
		- 16 bit address ==> might as well read 16 bit data words
		- 8 bits/pixel read bandwidth needed for two tile planes with (16 bit) tile map and 2 bpp graphics
		- 16 bits/pixel read bandwidth gives space to read in new sprites during scan line
			- keeping track of only 4 sprites at a time to reduce on-chip storage
		- Overhead to keep track of each sprite means that it might as well use 32 bits of pixel data per scan line
		- Palette registers take a lot of space; limit to 16 palette colors
	- Synth:
		- Context switching cannot be overlapped with processing
		- 3x 20 bits of extra on-chip buffers allow producing four voice output samples between context switches, keeping down context switching time

## How it works
The console consists of two parts:

- The PPU generates a stream of pixels that can be output as a VGA signals
	- based on tile graphics, map, and sprite data read from memory, and the contents of the palette registers.
- The synth generates a stream of samples by
	- context switching between voices at a rate of 96 kHz
		- producing four 96 kHz sample contributions from each voice in one go and adding to internal buffers
	- outputting each 96 kHz sample once it has received contributions from each voice

### PPU

	                index
	                depth,
	    sprite unit --->-\       index       rgb       rgb222
	        || |          compose --> palette -> dither----->-
	   tile map unit -->-/                                    \
	        || |    index, depth                               VGA ->
	       Copper                                              out
	        |^ |   x, y                                       /
	        || +<---------raster scan -> delay ------------->-
	        V|                                hsync, vsync, active
	---> read unit --->
	data           addr

The PPU is composed of a number of components, including:

- The _sprite unit_ reads and buffers sprite data and sprite pixels, outputting color index and depth for the topmost sprite pixel
- The _tile map unit_ reads and buffers tile map and tile pixel data, outputting color index and depth for the topmost tile map pixel
- The _Copper_ reads an instruction stream of PPU register write, wait for x/y, and jump instructions, and updates PPU registers accordingly
- The _read unit_ prioritizes read requests to graphics memory between the sprite unit, tile map unit, and Copper, and keeps track of the queue of reads that have been sent but the data has not yet been received

The PPU uses 4 clock cycles to generate each pixel, which is duplicated into two VGA pixels of two cycles each.
(The two VGA pixels can be different due to dithering.)

Many of the registers and memories in the PPU are implemented as shift registers for compactness.

#### The read unit
The read unit transmits a sequence of 16 bit addresses, and expects to recieve the corresponding 16 bit data word after a fixed delay. In this way, it can address a 128 kB address space. The delay is set so that the tile map unit can request tile map data, and receive it just in time to use it to request pixel data four pixels later.
The read unit transmits 4 address bits per cycle through the `addr_out` pins, and recieves 4 data bits per cycle through the `data_in` pins, completing one 16 bit read every _serial cycle_, which corresponds to one pixel or four clock cycles.

The tile map unit has the highest priority, followed by the Copper, and finally the sprite unit, which is expected to have enough buffering to be able to wait for access. The tile map unit will only make accesses on every other serial cycle on average, and the Copper at most once every 6 serial cycles (or every 2 in fast mode), but they can both be disabled/paused for parts of the frame to give more bandwidth to the sprite unit.

#### The tile map unit
The tile map unit handles two independently scrolling tile planes, each composed of 8x8 pixel tiles.
The two planes get read priority on alternating serial cycles.
Each plane sends a read every four serial cycles, alternating between reading tile map data and the corresponding pixel data for the scan line.
The pixel data for each plane (16 bits) is stored in a shift register and gradually shifted out until the register can be quickly refilled. The sequencing of the refill operation is adjusted to provide one extra pixel of delay in case the pixel data arrives one pixel early (as it might have to do since the plane only gets read priority every other cycle).

#### The sprite unit
The sprite unit is the most complex part of the PPU. It works with a list of 64 sprites, and has 4 sprite buffers that can hold sprite data for the current scan line. Once the final x coordinate of a sprite has passed, the corresponding sprite buffer can be reused to load a new sprite on the same scan line, as long as there is time to load the data before it should be displayed.

Sprite data is stored in memory in two structures:

- The sorted buffer
- The object attribute buffer

The sorted buffer must list all sprites to be displayed, sorted from left to right, with y coordinate and index. (16 bits/sprite)
The object attribute buffer contains all other object attributes: coordinates (only 3 lowest bits of y needed), palette, graphic tile, etc. (32 bits/sprite)

Sprite processing proceeds in three steps, each with its own buffers and head/tail pointers:

- Scan the sorted list to find sprites that overlap the current y coordinate (in order of increasing x value), store them into the id buffer (4 entries)
- Load object attributes for sprites in the id buffer, store in a sprite buffer and free the id buffer entry (4 sprite buffers)
- Load sprite pixels for sprites in the sprite buffers

Each succeeding step has higher priority to access memory, but will only be activated when the preceeding step can feed it with input data.

Pixel data for each sprite buffer is stored in a 32 bit shift register, and gradually shifted out as needed. If sprite pixels are loaded after the sprite should start to be displayed, the shift register will catch up as fast as it can before starting to provide pixels that can be displayed. This will cause the leftmost pixels of the sprite to disappear (or all of them, if too many sprites are crowded too close).

### AnemoneSynth
	    phase      phase      sample        sample      sample
	main                 wave-
	osc  --> linear      form       state         FIR         output
	         combin- ==> gene- ===> variable ---> down-  ---> buffer
	sub  --> ations      rators     filter        sampling
	osc                                           filter

AnemoneSynth does ANalog EMulation ONE voice at a time:
it has 4 voices, but there is only memory for one voice at a time. The synth makes frequent context switches between the voices to be able to produce an output signal that contains the sum of the outputs.

Each voice contributes four 96 kHz time steps worth of data to the output buffer before being switched out for the next.
As soon as all voices have contibuted to an output buffer entry, it is fed to the output, and the space is reused for a new entry.
The voices are processed in a staggered fashion: First voice 0 contributes to output sample 0-3, finalizing output sample 0, then voice 1 contributes to output sample 1-4, finalizing output sample 1, etc...

The synth is nominally sampled at 3072 kHz to produce output samples at a rate of 96 kHz. The high sample rate is used so that the main oscillator can always produce an output that is exactly periodic with a period corresponding to the oscillator frequency, while maintaing good frequency resolution (< 1.18 cents at up to 3 kHz).
The 32x downsampling is done with a 96 tap FIR filter, so that each input sample contributes to three output samples.
The FIR filter is optimized to minimize aliasing in the 0 - 20 kHz range after the 96 kHz output has been downsampled to 48 kHz with a good external antialiasing filter, assuming that the input is a sawtooth wave of 3 kHz or less.

To reduce computations, most of the samples that a voice would feed into the FIR filter are zeros.
Usually, the voice steps eight 3072 kHz samples at a time, adding a single nonzero sample. Seen from this perspective, each voice is sampled at 384 kHz. This is just enough so that the state variable filter appears completely open when the cutoff frequency is set to the maximum.

To maintain frequency resolution, the main oscillator can periodically take a step of a single 3072 kHz sample, to pad out the period to the correct length. This results in advancing the state variable filter an eigth of the usual time step, and sending an output sample with an eigth of the usual amplitude through the FIR filter.
The sub-oscillator does not have the same independent frequency resolution at the 3 highest octaves since it does not control the small steps, but is often used at a much lower frequency, and can often sync up harmonically with the main oscillator.

The state variable filter is implemented using the same ideas as described and used in https://github.com/toivoh/tt05-synth, using a shift-adder for the main computations. The shift-adder is also time shared with the FIR filter; each FIR coefficient is stored as a sum / difference of powers of two (the FIR table was optimized to keep down the number of such terms). The shift-adder saturates the result if it would overflow, which allows to overdrive the filter.

Each oscillator uses a phase of 10 bits, forming a sawtooth wave. A clock divider is used to get the desired octave.
To get the desired period, the phase sometimes needs to stay on the same value for two steps.
To choose which steps, the phase value is bit reversed and compared to the mantissa of the oscillator's period value (the exponent controls the clock divider). This way, only a single additional bit is needed to keep track of the oscillator state beyond the current phase value.

Each time a voice is switched in, five sweep values are read from memory to decide if the two oscillator periods and 3 control periods for the state variable filters (see https://github.com/toivoh/tt05-synth) should be incremented or decremented. A similar approach is used as for the oscillator update above, with a clock divider for the exponent part of the sweep rate, and bit reversing the swept value to decide whether to take a small or a big step when one should be taken.

## IO interfaces
AnemoneGrafx-8 has four IO interfaces:

- VGA output `uo` / `(R1, G1, B1, vsync, R0, G0, B0, hsync)`
- Read-only memory interface `(addr_out[3:0], data_in[3:0])` for the PPU
- TX/RX interface `(tx_out[1:0], rx_in[1:0])` for the synth, system control, and vblank events
	- `rx_in[1:0] = uio[7:6]` can be remapped to `rx_in_alt[1:0] = ui[5:4]` to free up `uio[7:6]` for use as outputs
- Additional video outputs `(Gm1_active_out, RBm1_pixelclk_out)`. Can output either
	- Additional lower RGB bits to avoid having to dither the VGA output
	- Active display signal and pixel clock, useful for e g HDMI output

The pins also have additional functions:

- `data_in[0]` is sampled into `cfg[0]` as long as `rst_n` is high, to choose the pin configuration:
	- `cfg[0] = 0`: `uio[7:6]` is used to input `rx_in[1:0]`,
	- `cfg[0] = 1`: `uio[7:6]` is used to output `{RBm1_pixelclk_out, Gm1_active_out}`, `rx_in_alt[1:0]` is used for RX input.
- When the PPU is in reset (due to `rst_n=0` or `ppu_en=0`), the `addr_out` pins loop back the values from `data_in`, delayed by two register stages. This should be useful to set up the correct latency for the PPU RAM interface.

### VGA output
The VGA output follows the [Tiny VGA pinout](https://tinytapeout.com/specs/pinouts/#vga-output), giving two bits per channel.
The PPU works with 8 bit color:

	        Bits  2    1     0
	Channel
	red         | R1 | R0 | RBm1 |
	green       | G1 | G0 | Gm1  |
	blue        | B1 | B0 | RBm1 |

where the least significant bit it is identical between the red and blue channel.
By default, dithering is used to reduce the output to 6 bit color (two bits per channel).
Dithering can be disabled (using `dither_en=0` in the `ppu_ctrl` register), and the low order color bits `{RBm1, Gm1}` can be output on `{RBm1_pixelclk_out, Gm1_active_out}` (using `rgb332_out=1` in the `ppu_ctrl` register and `cfg[0]=1`).

The other output option for `(Gm1_active_out, RBm1_pixelclk_out)` is to output the `active` and `pixelclk` signals: (using `rgb332_out=0` in the `ppu_ctrl` register and `cfg[0]=1`)

- `active` is high when the current RGB output pixel is in the active display area.
- `pixelclk` has one period per VGA pixel (two clock cycles), and is high during the second clock cycle that the VGA pixel is valid.

### Read-only memory interface
The PPU uses the read-only memory interface to read video RAM. The interface handles only reads, but video RAM may be updated by means external to the console (and needs to, to make the output image change!).

Each read sends a 16 bit word address and receives the 16 bit word at that address as data, allowing the PPU to access 128 kB of data.
A read occurs during one _serial cycle_, or 4 clock cycles. As soon as one serial cycle is finished, the next one begins.

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
- During the first serial cycle, a fixed address of `0x8421` is transmitted, and the corresponding data is discarded.

### TX/RX interface
The TX/RX interface is used to send a number of types messages and responses, mostly for use by the synth.
It uses start bits to allow each side to initiate a message when appropriate; subsequent bits are sent on subsequent clock cycles.
The `tx_out` and `rx_in` pins are expected to remain low when no messages are sent.

The `tx_out[1:0]` pins are used for messages from the console:

- a message is initiated with one cycle of `tx_out[1:0] = 1` (low bit set, high bit clear),
- during the next cycle, `tx_out[1:0]` contains the 2 bit _TX header_, specifying the message type,
- during the following 8 cycles, a 16 bit payload is sent through `tx_out[1:0]`, from lowest bits to highest.

The `rx_in[1:0]` pins are used for messages to the console:

- a message is initiated with one cycle when `rx_in[1:0] != 0`, specifying the _RX header_, i e, the message type,
- during the following 8 cycles, a 16 bit payload is sent through `rx_in[1:0]`, from lowest bits to highest.

TX message types:

- 0: Context switch: Store payload into state vector, return the replaced state value with RX header=1, increment state pointer.
- 1: Sample out: Payload is the next output sample from the synth, 16 bits signed.
- 2: Read: Payload is address, return corresponding data with RX header=2.
- 3: Vblank event. Payload should be ignored.

RX message types:

- 1: Context switch response with data.
- 2: Read response with data.
- 3: Write register. Top byte of payload is register address, bottom is data value.

Available registers:

- 0: `sample_credits` (initial value 1)
- 1: `sbio_credits` (initial value 1)
- 2: `ppu_ctrl` (initial value `0b01011`)

The function of the registers is documented in the respective sections.

## Using the PPU
The PPU is almost completely controlled through the contents of VRAM (video RAM).
The Copper is restarted when a new frame begins, and starts to read instructions at address `0xfffe`.
The Copper should be used to set up the PPU registers for the new frame before the active area starts, and is the only thing that can write PPU registers.
The PPU registers in turn control the display of tile planes and sprites.

### PPU registers
There are 32 PPU registers, which control different aspects of the PPU's operation.
Each register contains up to 9 bits. The registers are laid out as follows:

	Address Category    Bits
	                      8    7    6    5    4    3    2    1    0
	 0 - 15 pal0-pal15 | r2   r1   rb0  g2   g1   g0   b2   b1  | X |
	     16 scroll     |      scroll_x0                             |
	     17 .          |  X | scroll_y0                             |
	     18 .          |      scroll_x1                             |
	     19 .          |  X | scroll_y1                             |
	     20 copper_ctrl|      cmp_x                                 |
	     21 .          |      cmp_y                                 |
	     22 .          |      jump_low                              |
	     23 .          |      jump_high                             |
	     24 base_addr  |      base_sorted                           |
	     25 .          |      base_oam                              |
	     26 .          |      base_map1    |      base_map0     | X |
	     27 .          |      X            |b_tile_s | b_tile_p | X |
	     28 gfxmode1   |      r_xe_hsync             | r_x0_fp      |
	     29 gfxmode2   |vpol|hpol|  vsel   |      r_x0_bp           |
	     30 gfxmode3   |      xe_active                             |
	     31 displaymask|      X       |lspr|lpl1|lpl0|dspr|dpl1|dpl0|

where `X` means that the bit(s) in question are don't care.

Initial values:

- The `gfxmode` registers are initialized to `320x240` output (640x480 VGA output; pixels are always doubled in both directions before VGA output).
- The `displaymask` register is initialized to load and display sprites as well as both tile planes (initial value `0b111111`).
- The other registers, except in the `copper_ctrl` category, need to be initialized after reset.

Each PPU register is described in the appropriate section:

- Palette (`pal0-pal15`)
- Tile planes (`scroll`, `base_map0`, `base_map1`, `b_tile_p`, `lpl0`, `lpl1`, `dpl0`, `dpl1`)
- Sprites (`base_sorted`, `base_oam`, `b_tile_s`, `lspr`, `dspr`)
- Copper (`copper_ctrl`)
- Graphics mode `gfxmode1-gfxmode3`)

### Palette
The PPU has a palette of 16 colors, each specified by 8 bits, which map to a 9 bit RGB333 color according to

	        Bits  2    1     0
	Channel
	red         | r2 | r1 | rb0 |
	green       | g2 | g1 | g0  |
	blue        | b2 | b1 | rb0 |

where the least significant bit is shared between the red and blue channels.
Each palette color is set by writing the corresponding `palN` register. The serial cycle when a palette color register is written, it will be used as the current output pixel if the raster sweep is inside the active display area.

Tile and sprite graphics typically can 2 or 4 bits per pixel. They have a 4 bit `pal` attribute that specifies the _subpalette_, or mapping from tile pixels to palette colors:

	pal           Color 0     Color 1     Color 2     Color 3
	value         (unless
	               transparent)
	    0               0           1           2           3
	    4               4           5           6           7
	    8               8           9          10          11
	   12              12          13          14          15
	     
	    2               2           3           4           5
	    6               6           7           8           9
	   10              10          11          12          13
	   14              14          15           0           1
	     
	    1               0           4           8          12
	    5               1           5           9          13
	    9               2           6          10          14
	   13               3           7          11          15
	     
	    3               8          12           1           5
	    7               9          13           2           6
	   11              10          14           3           7
	     
	   15              ----------- 16 color mode ------------

_Color 0 is always transparent unless the `always_opaque` bit of the sprite/tile is set._
If no tile or sprite covers a given pixel, palette color 0 is used the background color.

4 color and 16 color mode uses different graphic tile formats (see below).
In 16 color mode, each pixel selects a palette directly, but index 0 is still transparent unless `always_opaque=1`.

### Tile graphic format
Tile plane and sprite graphics are both based on 16 byte graphic tiles, storing 8 rows of pixels with each row as a separate 16 bit word, from top to bottom:
- 2 bit/pixel tiles are 8x8 pixels
- 4 bit/pixel tiles are 4x8 pixels (strecthed to 8x8 pixels when used in tile planes)

The format of each line is

	         15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
	2 bpp   |  p7 |  p6 |  p5 |  p4 |  p3 |  p2 |  p1 |  p0 |
	4 bpp   |     p3    |     p2    |     p1    |     p0    |

where `p0` is the leftmost pixel, then comes `p1`, etc.

### Tile planes
The PPU supports two independently scrolling tile planes, where plane 0 is in front of plane 1.
Four `display_mask` bits control the behavior of the tile planes:

- When `dpl0` (`dpl1`) is cleared, plane 0 (1) is not displayed.
- When `lpl0` (`lpl1`) is cleared, no data for plane 0 (1) is loaded.

If a plane is not to be displayed, its `lplN` bit can be cleared to free up more read bandwidth for the sprites and Copper. The plane's `lplN` bit should be set at least 16 pixels before it should be displayed, to avoid visual artifacts.

The tile planes are drawn based on three VRAM regions with starting addresses controlled by PPU registers:

	plane_tiles_base = b_tile_p  << 14
	map0_base        = base_map0 << 12
	map1_base        = base_map1 << 12

The `scroll_x` and `scroll_y` registers for each plane are added to the raster position of the current pixel to find the pixel position in the corresponding tile map to display.
The raster position is x=128, y=255 for the bottom right corner of the screen, increasing to the right and decreasing going up.

The tile map for each plane is 64x64 tiles, and is stored row by row.
Each map entry is 16 bits:

	  15 - 12        11         10   -   0
	| pal     | always_opaque | tile_index |

where the tile is read from word address

	tile_addr = plane_tiles_base + (tile_index << 3)

and `pal` and `always_opaque` work as described in the Palette section.

### Sprites
Each sprite can be 16x8 pixels (4 color) or 8x8 pixels (16 color).
The PPU supports up to 64 simultaneous sprites in OAM, but only 4 can overlap at the same time.
More than 64 sprites can be displayed in a single frame by using the Copper to change base addresses mid frame.

Once a sprite is done for the scan line, the PPU can load a new sprite into the same slot, to display later on the same scan line, but it takes a number of pixels (partially depending on how much memory traffic is used by the tile planes and the Copper.)
Five reads are needed to load a new sprite (1 for the sorted list, 2 for OAM, 2 for the pixels). More may be needed to skip through the sorted list, but the PPU can scan ahead to gather the next 4 sprite hits on the scan line. The pixel reads are dependent on the OAM reads, which are dependent on the sorted list reads. 
With both tile planes active (and the Copper inactive), a bandwidth of 8 bits/pixel is available to read in new sprites. With `5*16 = 80` bits/sprite, a new sprite can be loaded every 10 pixels on average (5 pixels if the tile planes are inactive).

Two `display_mask` bits control the behavior of the sprite display:

- When `dspr` is cleared, no sprites are displayed.
- When `lspr` is cleared, no data for sprites is loaded.

It will take some time after `lspr` is set before new sprites are completely loaded and can be displayed.
Sprites start loading for a new scan line as soon as the active display part of the previous scan line is finished.

Sprites are drawn based on three VRAM regions with starting addresses controlled by PPU registers:

	sprite_tiles_base = b_tile_s    << 14
	sorted_base       = base_sorted <<  6
	oam_base          = base_oam    <<  7

Sprites are described by two lists, each with 64 entries:

- The _sorted list_ lists sprites sorted horizontally.
- _Object Attribute Memory_ (OAM) defines most properties for the sprites.

To display sprites correctly, they must be listed in the sorted list in order of increasing x coordinate, starting from `sorted_base`.
Each entry in the sorted list is 16 a bit word with contents

	  15   14   13 - 8   7 - 0
	| m1 | m0 |  index |   y   |

where

- `m0` (`m1`) hides the sprite on even (odd) scan lines if it is set, (each output pixel is displayed on two VGA scan lines)
- `index` is the sprite's index in OAM,
- `y` is the sprite's y coordinate.

If there are less than 64 sprites to be displayed, the remaining sorted entries should be masked by setting `m0` and `m1`, or moving the sprite to a y coordinate where it is not displayed.
If there are more sprites than can be displayed in the same area, `m0` can be set to mask some and `m1` to mask others, showing them on alternating scan lines.

For each sprite, OAM contains two 16 bit words `attr_y` and `attr_x`, which define most of the sprite's properties. `attr_y` for sprite 0 is stored first, followed by `attr_x`, then `attr_y` for sprite 1, etc...
The contents are

	attr_y:  15 14   13   -   4   3   2 - 0
	       |   X   | tile_index | X | ylsb3 |

	attr_x:  15 - 12        11         10 - 9   8 - 0
	       |   pal   | always_opaque |  depth |   x   |

where

- the sprite's graphics are fetched from the two consecutive graphic tiles starting at `sprite_tiles_base + (tile_index << 4)`,
- `ylsb3` is the lowest 3 bits of the sprite's y coordinate,
- `pal` and `always_opaque` work as described in the Palette section,
- `depth` specifies the sprite's depth relative to the tile planes,
- `x` is the sprite's x coordinate.

If several visible sprites overlap, the lowest numbered sprite with an opaque pixel wins.
The `depth` value then decides whether the winning sprite is displayed in front of the tile planes:

- 0: In front of both tile planes.
- 1: Behind plane 0, in front of plane 1.
- 2: Behind both tile planes.
- 3: Not displayed.

A sprite with a `depth` value of 3 will block sprites with higher index from being displayed in the same location. If a sprite should not be displayed but does not need to block other sprites in this manner, omit it from the sorted list instead.

The sprite x coordinate value starts at 128 at the left side of the screen, and increases to the right.
The sprite y cooridnate value starts at 255 at the bottom of the screen and decreases going upward.

### Copper
The Copper executes simple instructions, which can

- write to PPU registers,
- wait until a given raster position is reached,
- jump to continue Copper execution at a different VRAM location, or
- halt the Copper until the beginning of the next frame.

The Copper is restarted each time a new frame begins, just after the last active pixel of the previous frame has been displayed. It always starts at VRAM location `0xfffe`, with `fast_mode = 0`.
Placing a jump instruction at `0xfffe-0xffff` allows to quickly switch between prepared lists of Copper instructions, and to choose where they should be placed in VRAM.

Each Copper instruction is 16 bits:

	  15 - 7 |     6       5 - 0
	|  data  | fast_mode |  addr |

where

- `data` is the data to be written to a PPU register,
- `fast_mode` enables the Copper to run 3 times as fast, but is incompatible with waiting and jumping,
- `addr` specifies the PPU register to be written (see PPU registers).

The Copper halts if it receives an instruction with `addr = 0xb111111`, otherwise it writes `data` to the PPU register given by `addr`, if one exists.

The `copper_ctrl` PPU registers have specific effects on the Copper:

#### Compare registers
Writing a value to `cmp_x` or `cmp_y` causes the Copper to delay the next write until the current raster x/y
position is >= the specified compare value.

The raster position for x intially goes from `24 + r_x0_fp` to `32 + r_xe_hsync` as the raster scan goes through the front porch and horizontal sync (counted as the first part of the scan line).
Due to a bug, during the back porch and active regions, it is then calculated as 

	x_raster = {x[X_BITS-1:7], x[6:5] - 2'd3, x[4:0]}

where `x` goes from `96 + r_x0_bp` to `xe_active`.
This makes `x_raster` non-monotonic, making it harder to wait for some x positions.
A partial workaround for waiting for an `x_raster` value that is lower than a previous value in the scan line is to start with a write to `cmp_x` of the highest value expected before reaching the given position, followed directly with a write to `cmp_x` of the actual value.

The raster position for y counts as zero until the active region starts in the y direction.
Then, the compare value is `512 + y - 2*screen_height` where `y` is the number of scan lines since the start of the active region in the y direction.

#### Jumps
Usually, the Copper loads instructions from consecutive addresses.
A sequence of two instructions is needed to execute a jump:

- First, write the low byte of the jump address to `jump_low`.
- Then, write the high byte of the jump address to `jump_high`. The jump is executed.

There should be no writes to `cmp_x` or `cmp_y` between these two instructions, as the same register is used to store the compare value and the low byte of the jump address while waiting for the write to `jump_high`.

#### Fast mode
Whenever an instruction arrives at the Copper, the value of `fast_mode` in the instruction overwrites the current value.
When `fast_mode = 0`, the Copper does not start to read a new instruction until the previous one has finished. This allows waiting for compare values and jumping to work as intended.
When `fast_mode = 1`, the Copper can send a new read every other serial cycle (unless blocked by reads from the tile planes, which have higher priority), queuing up several reads before the instruction data from the first one arrives. This can allow the Copper to work up to 3 times as fast, and works as intended as long as no writes are done to the `copper_ctrl` registers.

The `fast_mode` bit

- Should be set to zero
	- at least three instructions before a write to any of the `copper_ctrl` registers,
	- for instructions that follow a write to `cmp_x` or `cmp_y`.
- Can be set to one by an instruction that writes to `jump_high` (but not the other `copper_ctrl` registers) unless it needs to be zero due to any of the above.

### Graphics mode registers
The `gfxmode` registers control the timing of the VGA raster scan.
The horizontal timing can be changed in fine grained steps, while the vertical timing supports 3 options.

The intention of the `gfxmode` registers is to support output in video modes

	VGA mode   Frame rate   PPU output mode at full PPU clock rate
	 640x480       60 fps                                  320x240
	 640x400       70 fps                                  320x200
	 640x350       70 fps                                  320x175

These VGA modes are all based on a pixel clock of 25.175 MHz, which can be achieved if the console is clocked at twice the pixel clock, or 50.35 MHz. (VGA monitors should be quite tolerant of deviations around this frequency, 50.4 MHz should be fine and can be achieved with the RP2040 PLL.)

The intention is also to support reduced horizontal PPU resolution while generating a VGA signal according to one of the above VGA modes, in case the console has to be clocked at a lower frequency. This will lower the output frequency that can be achieved by the synth as well.

#### Vertical timing
The `vsel` bits select between vertical timing options:

		   VGA     PPU output
	vsel   lines   height                        recommended polarity
	   0     480      240                        vpol=1, hpol=1
	   1      64       32  test mode (not VGA)   -
	   2     400      200                        vpol=0, hpol=1
	   3     350      175                        vpol=1, hpol=0

The `hpol` and `vpol` bits control the horizontal and vertical sync polarity (0=positive, 1=negative). Original VGA monitors may use these to distinguish between modes; more modern monitors should be able to detect the mode from the timing.

#### Horizontal timing
Possible horizontal timings include

	PPU output   VGA pixels                                          
	width        /PPU pixel   PPU clock    gfxmode1 gfxmode2 gfxmode3
	  320                 2   50.35  MHz     0x0178   0x0188   0x01bf
	  212                 3   33.57  MHz     0x00f9   0x0190   0x0153
	  208                 3   33.57  MHz     0x00f8   0x018d   0x014f
	  160                 4   25.175 MHz     0x00bc   0x0194   0x011f

where the `vsel`, `hpol`, and `vpol` bits have been set to 480 line mode, but can be easily changed by updating the `gfxmode2` value.
The 208 width mode is a tweak on the 212 width mode to fit a whole number of tiles (26) in the horizontal direction. These modes have been designed to stretch a PPU pixel horizontally into 2, 3, or 4 VGA pixels; other modes are possible with other settings.

The "PPU clock" column lists the recommended clock frequency to feed the console in order to achieve the 60 fps (`vsel=0`) or 70 fps (`vsel=2` or `vsel=3`).
In practice, VGA monitors seem quite tolerant of timing variations, and might, e g, accept a 640x480 BGA signal at down to 2/3 of the expected clock rate.

The `gfxmode` registers control the horizontal parameters timing according to

	active:      xe_active - 127  PPU pixels
	front porch: 8  - r_x0_fp     PPU pixels
	hsync:        1 + r_xe_hsync  PPU pixels
	back porch:  32 - r_x0_bp     PPU pixels

where `xe_active` must be >= 128.

#### The `ppu_ctrl` register
The `ppu_ctrl` register controls some additional aspects of the PPU.
It can be written through the TX/RX interface.

The contents are

	       4           3           2        1     0
	| rgb332_out | dither_en | vblank_int | X | ppu_en |

with initial value `0b01011`. Functions:

- The PPU is kept in reset as long as `ppu_en=0`.
- When `vblank_int=1`, the PPU sends a vblank message (TX header=3) on the TX channel whenever a frame is done.
- The `dither_en` bit controls dithering:
	- when `dither_en=1`, the PPU applies dithering to the output pixels,
	- when `dither_en=0`, `{R1, R0}, {G1, G0}, {B1, B0}` just contain the top 2 bits of each color channel.
- The `rgb332_out` bit controls what is output on the `Gm1_active_out` and `RBm1_pixelclk_out` pins, when they are configured as outputs:
	- when `rgb332_out=1`, the bottom bit of `G` and `RB` is output (combine with `dither_en=0` to get the whole `RGB332` output)
	- when `rgb332_out=0`, the pixel clock and active signal are output instead.

## Using AnemoneSynth
AnemoneSynth has four identical voices, each with

- two oscillators (main and sub-),
- three waveform generators,
- a second order filter.

The synth is designed for an output sample rate of `output_freq` = 96 kHz (higher sample rates are used in intermediate steps), which should be achievable if the console is clocked at close to the target frequency of 50.35 MHz. The user can reduce `output_freq` by requesting output samples less frequently.

The hardware processes one voice at a time, and periodically performs a context switch through the TX/RX interface to write the state of the active voice out to RAM and read in the state of the next voice to make active.
The voice state can be divided into dynamic state (updated by the synth) and parameters (not updated by the synth).

The periods of the two oscillators, as well as three control periods for the filter, are part of the dynamic state.
These periods are continuously updated according to the voice's sweep parameters, which can specify a certain rate of rise or fall, or a replacement value. Sweep parameters are not stored in the voice state, but are read from RAM as needed to update the periods. Envelopes can be realized by changing sweep parameters over time.
The behavior of a voice is controlled through its parameters and its sweeps.

### Voice state
The voice state consists of twelve 16 bit words, or 192 bits:

	bit       bit
	address   width   name
	      0       1   delayed_s
	      1       2   delayed_p
	      3       3   fir_offset_low
	      6      10   phase[0]          main oscillator phase
	     16      10   phase[1]          sub-oscillator phase
	     26       6   running_counter
	     32      20   y                 filter state (output)
	     52      20   v                 filter state
	     72      14   float_period[0]   main oscillator period
	     86      14   float_period[1]   sub-oscillator period
	    100      10   mod[0]            control period 0
	    110      10   mod[1]            control period 1
	    120      10   mod[2]            control period 2
	    130       5   lfsr_extra
	    135       1   ringmod_state

	    136      13   wf_params[0]      waveform 0 parameters
	    149      13   wf_params[1]      waveform 1 parameters
	    162      13   wf_params[2]      waveform 2 parameters
	    175      13   voice_params      voice parameters
	    188       4   unused

The parameter part of the state begins at `wf_params[0]`.
There are three sets of waveform parameters `wf_params`, each consisting of 13 bits:

	bit       bit
	address   width   name         default
	      0       3   wf
	      3       2   phase0_shl         0
	      5       2   phase1_shl         0
	      7       2   phase_comb         0/1/2 for waveform 0/1/2
	      9       2   wfvol              0
	     11       1   wfsign             0
	     12       1   ringmod            0

The default values should be seen as a suggestion of an initial point to start from when experimenting with parameters settings. There is no hardware mechanism to set these values as defaults.

The voice parameters `voice_params` also consist of 13 bits:

	bit       bit
	address   width   name             default
	      0       1   lfsr_en                0
	      1       2   filter_mode            0
	      3       3   bpf_en                 0
	      6       1   hardsync               0
	      7       4   hardsync_phase         0
	     11       2   vol                    0

### Frequency representation
Frequencies are represented by periods in a simple floating point format, with 4 bits for the octave and 10 or 6 bits for the mantissa:

	{oct[3:0], mantissa[9:0]} = float_period[i]  // for oscillator periods
	{oct[3:0], mantissa[5:0]} = mod[i]           // for control periods

The period value can be calculated as

	osc_period[i] = (1024 + mantissa) << oct     // for oscillator periods
	mod_period[i] =   (64 + mantissa) << oct     // for control periods

except that `oct=15` corresponds to an infinite period, or a frequecy of zero.
The oscillator frequencies are given by

	osc_freq[i] = output_freq * 32 / osc_period[i]

so at `output_freq = 96 kHz`, the highest achievable oscillator frequency is 3 kHz (and the lowest is a bit below 0.1 Hz).
The control frequencies are given by

	mod_freq[i] = output_freq * 256 / mod_period[i]

The floating point representation for the periods helps keep the same relative frequency resolution over all octaves. It also means that a linear sweep of the floating point period representation will sound very much like an exponential sweep of the frequency, which is similar to the linear-to-exponential conversion used by most analog synths.

### Signal path

	     phase         phase        sample        sample
	main                      wave-
	osc  --->  linear         form
	           combin-  ===>  gene-  ===>  filter  --->  output
	sub  --->  ations         rators
	osc

The signal path starts at the two oscillators, which feed 3 waveform generators. Each waveform generator can be fed with a different linear combination of oscillator phases. The waveforms are fed into the filter. Finally, the output of the filter is summed for all the voices to create the synth's output signal.

#### Oscillators
The main and sub-oscillators are both sawtooth oscillators.
When we talk about phase, it refers to such a sawtooth value, increasing at a constant rate over the period, and wrapping once per period.
The sub-oscillator can produce noise instead by setting `lfsr_en=1`. (TODO: Describe noise frequency dependence on `osc_period[1]`.)

Each voice is nominally sampled at `32 * output_freq`, with 32 subsamples per output sample. Most of the time, it advances by 8 subsamples at a time, but occasionally by a single subsample, which is used to improve the frequency resolution at the three highest octaves, and avoid aliasing.
The choice of when to step by 8 subsamples and when to step by 1 is controlled by the main oscillator, which means that the sub-oscillator has less independent frequency resolution for the 3 highest octaves (1 bit less when its `oct=2`, 2 bits less when its `oct=1`, and 3 bits less when its `oct=0`). The sub-oscillator will often be at a much lower frequency than the main oscillator.

It is possible to combine the output of the oscillators in different ways to derive new frequencies,
but if possible, the main oscillator's frequency should be set to the voice's intended pitch, (or the pitch divided by an integer that is as small as possible), to allow the synth's supersampling to produce the best results and to avoid aliasing artifacts, especially at high pitches.
If the voice's output signal is periodic with the main oscillator's period, there should be very little aliasing artifacts. If the output waveform varies slowly when the voice output is chopped up into periods equal to the main oscillator period, there should still be little aliasing.

The sub-oscillator can be hard-synced to the main oscillator by setting `hardsync=1`.
When enabled, the (10 bit) phase of the sub-oscillator resets to `hardsync_phase << 6` whenever the main oscillator completes a period.

#### Combining the oscillators
The `phase_comb`, `phase0_shl` and `phase1_shl` parameters of each waveform specify how to calculate the waveform generator's input phase from the oscillator phases, with `phase_comb` selecting between four modes:

	phase_comb    Waveform generator input phase
	         0    (main << phase0_shl) + (sub << phase1_shl)
	         1    (main << phase0_shl) - (sub << phase1_shl)
	         2    (main << phase0_shl)
	         3                           (sub << phase1_shl)

A good starting point is to set `phase_comb` to 0 for one waveform, 1 for one, and 2 for one, leaving the other waveform parameters the same. Combined with a sub-oscillator at around a 1/1000 of the main oscillator frequency, this creates a detuning effect. Higher frequency compared to the main oscillator gives more detuning.

#### Waveform generator
The `wf` parameter selects between 8 waveforms:

	wf    Waveform
	 0    sawtooth wave
	 1    sawtooth wave, 2 bit
	 2    triangle wave
	 3    triangle wave, 2 bit
	 4    square wave
	 5    pulse wave, 37.5% duty cycle
	 6    pulse wave, 25%   duty cycle
	 7    pulse wave, 12.5% duty cycle

All waveforms have a zero average level. The peak-to-peak amplitude of the pulse waves is half that of the other waveforms.

The waveform amplitude is multiplied by `2^-wfvol` before feeding into the filter. If `wfsign=1`, it is inverted.
If `wfvol=3, wfsign=1`, the waveform is silenced.

If `ringmod=1`, the waveform is inverted when the output of the previous waveform generator is negative (before the effects of `wfvol`, `wfsign`, and `ringmod` have been applied, waveform 2 is previous to waveform 0).

#### Filter
The output from each waveform generator is fed into the filter.
The `filter_mode` parameters selects the filter type:

	filter_mode   Filter type
	          0   2nd order filter
	          1   2nd order filter, transposed
	          2   2nd order filter, two volumes, default damping
	          3   Two cascaded 1st order low pass filters

The meaning of the `mod` states depends on the filter mode:

	filter_mode    mod_freq[0]   mod_freq[1]   mod_freq[2]
	          0    cutoff        fdamp         fvol
	          1    cutoff        fdamp         fvol
	          2    cutoff        fvol2         fvol
	          3    cutoff        cutoff2       fvol

(see Frequency representation for the definition of `mod_freq`).

The transposed filter mode 1 is expected to be a bit noisier than the default mode 0, and have somewhat different overdrive behavior.
The `bpf_en[i]` parameter can be used in filter modes 1 and 3 to change the point where waveform `i` feeds into the filter:

- For `filter_mode=1`,  `bpf_en[i]=1` makes the filter behave as a band pass filter for that waveform.
- For `filter_mode=3`,  `bpf_en[i]=1` feeds the waveform straight into the second low pass filter.

The volume feeding into the filter is generally given by 

	gain = fvol / cutoff

but for `filter_mode=3`,

- `fvol2` is used instead of `fvol` for waveform 1,
- `cutoff2` is used instead of `cutoff` when  `bpf_en[i]=1`.

It is possible to overdrive the filter, which will saturate. This can be a desirable effect.

For filter modes 0-2, the filter cutoff frequency is given by

	cutoff_freq = cutoff / (2*pi)

Filter mode 3 uses two cascaded 1st order low pass filters, the first with cutoff frequency given by `cutoff` and the second by `cutoff2` (TODO: check).

Filter modes 0 and 1 implement resonant filters, the resonance is given by

	Q = cutoff / f_damp

where the resonance can start to be noticeable when `Q` becomes > 1.
The resonance for filter mode 2 is fixed at `Q=1`.

#### Output
The filter output from each voice is multiplied by `2^(-vol)` and the contributions are added together to from the synth's output.

### Sweeps
Each voice has five sweep values, which can be used to sweep the oscillator and control frequencies gradually up or down, or set them to new values without interfering with synth's state updates.

Each sweep value is a 16 bit word.
A voice will periodically send read messages (TX header = 2) to read its sweep values, with

	address = (voice_index << 3) + sweep_index

where `voice_index` goes from 0 to 3 and `sweep_index` describes the target of the sweep value:

	sweep_index   target
			  0   float_period[0]
			  1   float_period[1]
			  2   mod[0]
			  3   mod[1]
			  4   mod[2]

The sweep value can have two formats:

	 15  14  13  12  11  10   9   8   7   6   5   4   3   2   1   0
	| X | 0 | replacement value                                    |
	| X | 1 | X        |sign| oct           | mantissa             |

In the first case, the target value is simply replaced. For `mod` targets, the lowest four bits of the replacement value are discarded.

In the second case, the target is incremented (`sign=0`) or decremented (`sign=1`) at a rate that is described by `oct` and `mantissa`, which follow the same kind of simple floating point format as is used for `mod` values.
The maximum rate that the target can be incremented or decremented by one is `output_freq / 2`, achieved when `oct` and `mantissa` are zero. In general, the sweep rate is

	sweep_rate = 32 * output_freq / ((64 + mantissa) << oct)

Sweeping will never cause the target value to wrap around, but may cause it to stop a single step short of the extreme value.
When `oct=15`, sweeping is disabled. This can be accomplished by setting the sweep value to all ones.

### Power chords and other frequency combinations
A single voice can be set up to produce power chords, e g, letting the 3 waveform generators produce outputs in precise or approximate frequency ratio 2 : 3 : 4 or 3 : 4 : 6.
It is usually preferable that the frequency ratios are not exact, to get some detuning.

For the 2 : 3 : 4 case, assume that the sub-oscillator frequency is set to roughly half the main oscillator frequency, with the sub-oscillator frequency representing one frequency unit.
The desired frequncies can be achieved in different ways, e g:

	Frequency   Combination            Computation
			2    main                  2         = 2
			2   (main<<1) - (sub<<1)   2*2 - 1*2 = 2
			3    main     +  sub       2   + 1   = 3
			3   (main<<1) -  sub       2*2 - 1   = 3
			4   (main<<1)              2*2       = 4
			4    main     + (sub<<1)   2   + 1*2 = 4

The way that a frequency is achieved matters when the sub-oscillator is not at exactly half the main oscillator frequency. A mix such as `main, main*2 - sub, main + sub*2` will produce three independent frequencies with some detuned upwards and some downwards (since different signs for the sub-oscillator are used).

For the 3 : 4 : 6 case, assume that the sub-oscillator frequency is set to roughly one fourth of the main oscillator frequency, with the sub-oscillator frequency still representing one frequency unit.
In this case, the desired frequncies can, e g, be achieved as

	Frequency   Combination            Computation
			3    main     -  sub       4   - 1   = 3
			4    main                  4         = 4
			4   (main<<1) - (sub<<2)   4*2 - 1*4 = 4
			6    main     + (sub<<1)   4   + 1*2 = 6
			6   (main<<1) - (sub<<1)   4*2 - 1*2 = 6

A mix such as `main - sub, main, main + 2*sub` might be good.

Power chords work well with overdriving the filter. Filter mode 3 might sometimes be useful, overdriving the first low pass filter but allowing the second to take out some of the high end.

These are just some examples of how the `phase_comb`, `phase0_shl`, and `phase1_shl` parameters can be used to produce waveforms with different frequencies within the same voice.

### Context switching
To perform a context switch, the synth

- Sends a sequence of 12 context switch messages on the TX channel, with TX header=0 and payload equal to the each of its twelve 16 bit state words in turn.
- Receives a sequence of 12 context switch responses on the RX channel, with RX header=1 and payload equal to the replacement value for the corresponding state word.

These sequences can and should overlap (for time efficiency); as soon as a context switch message has been sent on the TX channel, a corresponding response can be sent on the RX channel. The synth can send several context switch messages before receiving any response, as long as the `sbio_credits` register has been set appropriately (see below).

One way to implement the context switch response mechanism is as a swap operation.
A state buffer of 3 x 12 sixteen bit words is needed, and a pointer into it.
Each time a context switch message arrives,

- the old value at `buffer[pointer]` is sent back in a context switch response message,
- the new state value is assigned to `buffer[pointer]`,
- `pointer` is incremented, and wrapped around if it reaches the end of the buffer.

Only 3 x 12 words of state are needed here because the final 12 state words are stored in the synth at any time.
Which buffer entries correspond to the state of which voice will shift over time.

Another way to implement the context switch response is to keep a state buffer of 4 x 12 words, with each 12 word section dedicated to the state of a specific voice. This is probably easier to work with.
Separate read and write pointers are used, with `read_pointer` initialized 12 steps (one voice) ahead of `write_pointer`.
Each time a context switch message arrives,

- the value at `buffer[read_pointer]` is sent back in a context switch response message,
- the new state value is assigned to `buffer[write_pointer]`,
- both pointers are incremented, and wrapped around if they reach the end of the buffer.

In this case, since the same voice state is always kept at the same buffer position, the parameter part of the state does not need to be written to the buffer when a context switch message arrives.

### Changing voice parameters
The sweep parameters can be changed at any time, since they are just read by the synth.
More care is needed to update voice parameters that are part of the state, since it is periodically being switched in and out.

The easiest way to change voice parameters is probably if the second scheme described for context switching above is used, and the parameter part of the state received from the synth during context switching is ignored.
Then, the parameters can be changed at any time in the corresponding position in the state buffer, and will be read into the synth as needed when context switching into the voice.

Dynamic state can also be changed between the time it is switched out and in again, but more care is needed.

The synth begins with the state of the first voice in its on-chip state, but the state is uninitialized.
During the first context switch, the write data can be ignored to throw away this uninitialized state, making the voice read its state from the state buffer the next time.

### Credit mechanisms
The _sample credits_ mechanism lets the user limit the rate at which the synth produces samples.
The two bit `sample_credits` register is initialized to one at reset, and decremented each time a new sample is finished and sent as a message (with TX header=1).
When `sample_credits` is zero, the synth pauses at some point before sending the next sample.
When the user is ready to receive more samples, it should write a nonzero value to the `sample_credits` register.
By writing a value that is larger than one, the synth can continue processing also after sending a sample.

The synth tries to limit the number of outstanding messages that have not received a reply, so as not to overload the receive FIFO in the RP2040 (or whoever receives the messages). Each context switch and read message (TX header = 0 or 2) expects a single reply (RX header = 1 or 2). A counter for outstanding messages is increased whenever a message of the former type is sent, and decreased whenever a message of the latter type is received. 
No credited messages will be sent as long as the outstanding counter equals the value in the `sbio_credits` register; the synth will wait for a credited response first to decrease the number of outstanding messages.

Sample out and vblank messages do not expect a response and do not increase the outstanding counter, but should be infrequent enough that it is enough to reserve one extra space for each in the receive FIFO.
Write register messages (RX header=3) do not affect the outstanding message counter and can be sent to the synth at any time.

## How to test

A RAM emulator program for RP2040 is needed to test the console (TODO: publish source code).
The RAM emulator code can be modified to update VRAM to test the PPU, and update synth parameters to test the synth. The RAM emulator could also receive commands to do these things over the RP2040's USB-UART.

### Testing the PPU
A Pmod is needed for VGA output, see below.

Write Copper instructions to VRAM to initialize the PPU registers that don't have predefined initial values (see PPU registers).
Set up tile planes, sprites, or both, the `displaymask` register can be used to disable tile planes or sprites if they are not used.
TODO: example (in the RAM emulator code?)

### Testing AnemoneSynth
Means of sound output is TBD, see below.

Disable all sweeps (set the sweep parameters to all ones) and set the voice parameters to the default values described in the Voice state section.
Set

- the main oscillator frequency to the desired pitch,
- `float_period[1] = float_period[0] + (10 << 10)`,
- `mod[0]` and `mod[1]` to twice the main oscillator frequency,
- `mod[2] = mod[0] + (2 << 6)`.

TODO: example (in the RAM emulator code?)

## External hardware

A Pmod for VGA is needed for video output, that can accept VGA output according to https://tinytapeout.com/specs/pinouts/#vga-output.
Means of sound output is TBD. The RP2040 receives the sound samples and could output them in different ways depending on programming. The pins `ui[7:4]` (or at least `ui[7:6]`, depending on pin configuration) have been left unused in the design so that the RP2040 can drive them to output sound.
Supporting a Pmod for I2S would be one possibility.
