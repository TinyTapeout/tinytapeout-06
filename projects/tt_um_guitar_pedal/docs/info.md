<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The design consists of a simple opamp in a non-inverting configuration. We achieve distortion simply by overdriving the opamp - because VDD is only 1.8V we very quickly run out of headroom and the transistors are pushed into the triode region which causes the output to be distorted, and usually look more square. There are 8 of these amplifiers in series, you can turn them on or bypass them by toggling inputs 0 through 7 - more amplifiers on means more distortion! In theory, we will see if it works.

## How to test

You need to provide an input signal to UA[0] and an output will come from UA[1] - this unfortunately requires a little extra hardware. On the input you will need a large capacitor in series with the signal followed by a voltage divider (two large resistors of the same value) to bias in the input in the middle of the operating range of the opamp. On the output we will need to place another large capacitor in series before running it to an amp - don't connect directly to a speaker, this circuit can't drive a speaker on its own it needs to go through an amp first.

## External hardware

- 2 resistors (large, same value - for a voltage divider on the input)
- 2 large capacitors (bigger the better, but around 10uf should be fine)
- 2 1/4 inch jacks (to make plugging a guitar in easy, you could probably figure it out without these)
