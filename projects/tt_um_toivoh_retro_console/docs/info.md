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

## How to test

TODO

## External hardware

A PMOD for VGA is needed for video output, that can accept VGA output according to https://tinytapeout.com/specs/pinouts/#vga-output.
Means of sound output is TBD, a PMOD for I2S might be needed (if so, haven't decided which one to use yet).
The RP2040 receives the sound samples, and could alternatively output them in some other way.
