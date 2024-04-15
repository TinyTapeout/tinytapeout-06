<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a simple ``Hello World`` project for Chisel. It is a simple counter with 7-segment display output.
And a Morse code generator writing out ``hello world`` in Morse code.


The project displays a counter on the 7-segment display.
It also writes out ``hello world`` in Morse code on the DP of the 7-segment display.
Furthermore, it also playes the Morse code with PWM on the BIDIR PMOD, connected to
a PmodAMP2.

To better see the Morse code, the counter display can be disabled with
switch 0.

## How to Test

Currently, we use cocotb, this shall change to ChiselTest.

## External Hardware

Audio PMOD (PmodAMP2) for audio output on the lower row of the BIDIR PMOD.