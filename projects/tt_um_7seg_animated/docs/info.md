<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Animates the 7-segment display by reading in the input switches to create a custom 7-segment character. Nothing will be displayed until you toggle input 7 to start the character animation sequence.

Inputs 0 through 6 map to outputs 0 though 6 (display segments a through g). Output 7 becomes active while input 7 is active.

The circuit works by iterating over the character bit pattern, enabling segments sequentially at a speed of about 0.12 seconds per segment.

## How to test

Toggle the input switches to create a character with inputs 0-6, toggle input 7 to start the character animation sequence.

## External hardware

none
