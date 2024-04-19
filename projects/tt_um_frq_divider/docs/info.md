<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a clock divider. It works by dividing the frequency by a counter. The parameters for dividing were calculated for 27 frequencies, multiples of 50mHz. These parameters are stored in a ROM, which can be accessed by a 4-bit input, and it can output 28-bit data.

## How to test

To function, it needs a 50MHz input. You select the frequency by choosing it from the table shown in the Readme.md. Then, you get the output through an output pin, which can be tested by an oscilloscope and fed into a microcontroller or any circuit requiring a square wave signal to function.

## External hardware

Requires a 50MHz oscillator.




