<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# TODO

DJ8 is a 8-bit CPU, originally developped for XCS10XL featuring:
* 8 x 8-bit register file
* 3-4 cycles per instruction
* 15-bit address bus
* 8-bit data bus

Due to TT06 IO constraints, when writing to memory only 7 bits of the address bus can be used. 

It should be for example possible to connect a standard 32K parallel flash + 32b SRAM without external logic.

## Test ROM

A test ROM is included for easy testing on the TT06 demo board. It shows a rotating indicator on the 7-segment display.

To boot to ROM, first two DIP switches must be 0 and 1 at reset time. Pause the animation by reseting all DIP switches.

