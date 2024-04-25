<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project is a programmable resistor controlled by setting ui[0] to ui[7] and ui[0] to ui[7] high to connect a set of 58.218 k ohm  resistors between pin ua[0] and ground in parallel using programmable analog switches. There is also an inverter with analog pin ua[5] as an input and analog pin ua[4] as an output. Try using the inverter as an amplifier as explained here: https://www.youtube.com/watch?v=03Ds1TnoMbA&ab_channel=MSMTUE and see if you get the same results when trying to use the inverters in my digital tile as an amplifier: https://github.com/JamesTimothyMeech/TT06/blob/main/info.yaml 

## How to test

Apply inputs to the inverters with a square wave or other signal generator and measure the output. To test the programmable resistor connect the supply voltage in series with an ammeter to pin ua[0]. Set ui[0] to ui[7] and ui[0] to ui[7] high to connect a set of 58.218 k ohm resistors to ground internally inside the chip. You should be able to measure differences in current as you connect each resistor to ground by setting the corresponding digital input pin high. 

## External hardware

TT06 printed circuit board, signal generator, an oscilliscope or similar to measure the input and output.
