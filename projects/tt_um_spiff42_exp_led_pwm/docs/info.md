<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The LED PWM Controller currently takes 8 bits from ui[7:0] and generates
a PWM signal on uo[0]. The PWM duty cycle is generated according to an X^3
curve, so the "percieved brightness" changes linearly with the DIP switch
settings. This design means we get the dynamic range of a 16-bit PWM but
use only 8 bits to specify the desired output.

## How to test

Setting the DIP switches results in changing the brightness of segment A
(top) on the 7-segment display.

## External hardware

Currently no external hardware is supported.
