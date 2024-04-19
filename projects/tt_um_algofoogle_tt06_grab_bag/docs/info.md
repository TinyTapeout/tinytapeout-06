<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

So far this is pretty basic:

*   A big-standard CMOS inverter... maybe a bit on the large side.
*   A simple 4-bit R2R DAC (actually 8-bit, but 4 LSB tied low).
*   A digital block that is a simple VGA controller, that lets you select from a few different tests, each driving 3x8-bit (24-bit RGB) outputs to 3 more 8-bit R2R DACs.

## How to test

TBC, because this is all different since I started!

## External hardware

Probably some sort of X-ray machine to look inside the chip...?

Come back later and I'll have a better explanation of how to hook up to a VGA display.
