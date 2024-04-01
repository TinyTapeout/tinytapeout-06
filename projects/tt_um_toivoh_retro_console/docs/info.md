<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The console consists of two parts:
- The PPU generates a stream of pixels that can be output as a VGA signals, based tile graphics, map, and sprite data read from memory, and the contents of the palette registers.
- The synth generates a stream of samples by
	- context switching between voices at a rate of 96 kHz
		- adding the contributions for four 96 kHz samples from the voice to internal buffers in one go
	- outputting each 96 kHz sample once it has received contributions from each voice

## How to test

TODO

## External hardware

A PMOD for VGA is needed for video output, that can accept VGA output according to https://tinytapeout.com/specs/pinouts/#vga-output.
Means of sound output is TBD, a PMOD for I2S might be needed (if so, haven't decided which one to use yet).
The RP2040 receives the sound samples, and could alternatively output them in some other way.
