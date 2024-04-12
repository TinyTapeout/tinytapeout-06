<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This opamp has VDD=1.8V and VSS=0V. It's input common mode range is not very good so make sure your AC input signal is centered around 0.9V. The opamp is internally biased so you just need to apply a differential input.  

It should be able to hit 60dB gain at low frequencies. Please do not connects loads requiring more than a few mA. 

## How to test

Power up the chip, test opamp in closed loop configuration only.
VOUT is analog pin 0.
PLUS is a differential input on analog pin 1.
MINUS is a differential input on analog pin 2.

## External hardware

At the bare minimum a resistor at the output is needed to test the opamp as a source-follower. Use multimeter or oscilloscope to probe the output. 
