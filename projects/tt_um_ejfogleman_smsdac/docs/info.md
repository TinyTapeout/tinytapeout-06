<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## Operation

This design implements a linear 8-bit DAC suitable for low-frequency inputs.  An analog voltage is produced by connecting the encoder's outputs to a modified R-2R ladder on the PCB.  The modification converts it into an R-(4R-4R) ladder.  It achieves high-linearity by using segmented mismatch-shaping, so the DAC does not require matched resistors.  Error due to resistor mismatch appears at the output as 1st-order highpass shaped noise.  The encoder also reduces the bit-width from 8-bits, and quantization error is also 1st-order highpass shaped.  Thus, with passive filtering, a linear, low-noise dc output can be achieved.

Ideally, this encoder would be buffered through a clean analog supply and retimed to reduce glitches on output transitions.  However, reasonable performance should be possible driving the resistor ladder directly from the encoder through the IO supply.  

## How to test

Digital testing is possible by applying clock (1-50 MHz), a static data input on ui[7:0], and summing the output on uo[7:0] with the following weights: 
d_out = 8*uo[7:6] + 4*uo[5:4] + 2*uo[3:2] + uo[1:0]

The DAC is free-running off the project clock, and inputs appear at the output immediately after passing through a pair of clock sync registers.

## External hardware

An external resistor ladder is required to create the analog output voltage, and a capacitor is required to filter high-frequency noise.  
