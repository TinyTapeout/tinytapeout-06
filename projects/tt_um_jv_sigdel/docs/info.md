<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A 1st order passive sigma delta modulator can be realized by attaching R1, R2 and C to a digital input.
Further information is found here:
https://personalpages.hs-kempten.de/~vollratj/InEl/SigmaDelta_ADC_real.html

A high level simulator:
https://personalpages.hs-kempten.de/~vollratj/InEl/SigmaDelta.html

![Tiny Tapeout Tile](TTsigdelFunktion.png "Tiny Tapeout Tile")

## How to test

Add the RC network and apply a DC voltage at the input in0 and out5.
Select sampling, oversamplingrate and filter in1..6.
The 4 output lines 0..3 should give a 4-Bit value.
The out6,7 give a pwm signal changing with the input voltage.

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
