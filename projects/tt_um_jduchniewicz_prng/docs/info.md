<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project is based on 16-bit [Linear Feedback Shift Register](https://en.wikipedia.org/wiki/Linear-feedback_shift_register) but with a small twist - at each clock cycle the LFSR combines it's output from 2 halves, upper half (bits 15 to 8) is rotated left and the lower (bits 7 to 0) are rotated right and XOR'ed at the end.

Inspired by [this StackOverflow post](https://stackoverflow.com/questions/14497877/how-to-implement-a-pseudo-hardware-random-number-generator).

## How to test

You can experiment with different initialization seeds and see how it changes the generated sequence - all 0 initialization does not work, the PRNG always returns 0s from such seed. The proposed usage of this project is as a noise generator that could be fed to e.g. musical synthesizer or be used as a non-cryptographic randomness generator.


