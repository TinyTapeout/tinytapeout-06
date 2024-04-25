<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
I made this design with the goal of seeing what different measurements I could perform on an inverter with an analog Tiny Tapeout tile: https://github.com/JamesTimothyMeech/tt06-programmable-thing compared to this digital one. 
This project contains a set of inverters of different sizes connected between the input and output pins. Input and output zero is a D Flip Flop. All other pins have an inverter connected between them. Please see the Wokwi circuit diagram: https://wokwi.com/projects/395134712676183041 or the info.yaml: https://github.com/JamesTimothyMeech/TT06/blob/main/info.yaml to see which pins are inverter inputs and which are inverter outputs. 

## How to test


Apply inputs to the inverters with a square wave or other signal generator and measure the output. Experiment by putting inverters in parallel and see if you can measure any differences in their speed. Try connecting a large capacitor to the input and a resistor between the input and the output to use the inverters as an amplifier: https://www.youtube.com/watch?v=03Ds1TnoMbA&ab_channel=MSMTUE does this work in the same way as the inverter on the analog tile? If not, why? 

## External hardware

TT06 printed circuit board, signal generator, an oscilliscope or similar to measure the input and output.
