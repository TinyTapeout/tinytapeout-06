<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is an 8-channel PWM controller for LED brightness.

The PWM duty cycle is generated according to an X<sup>3</sup> curve, so the 
"percieved brightness" changes linearly with the register
setting. This design means we get the dynamic range of a 16-bit PWM but
use only 8 bits to specify the desired output. With an input clock of 32.7
MHz, the PWM frequency is 500 Hz.

After reset, the controller is in UI mode, where the ui[7:0] set the 8 PWM
value registers. The first PWM value register is set to ui[7:0], for the 
remaining PWM value registers they are set to 0 when ui[7:0] == 0, but in
other cases their value is ui[7:0] XOR X, where X is 0x10 times the register
number.

The individual registers can be accessed by I2C; SCL=UIO2, SDA=UIO1, which
should allow accessing it from the Rpi2040 on the demo board. The slave 
address is 0x6C, and the 8 PWM channels are controlled by register addresses
0 thru 7. As soon as the first I2C write occurs, the controller is set to
I2C mode, and the ui inputs no longer affect the registers.

## How to test

Play with the DIP-switches to see different segments of the 7-segment LED
display show different brightnesses.

## External hardware

Currently no external hardware is supported.
