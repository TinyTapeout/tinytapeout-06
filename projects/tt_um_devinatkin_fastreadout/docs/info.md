<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
![alt text](Logo.png)

## How it works

This project simulates an image sensor with the intention of validating a readout method. Light levels are fed in, and then the ouput is used to re-recover those light levels. This is done by using a set of frequency modules to convert the light levels into frequencies, and then a set of frequency counters to measure the frequency of the output. The design is validated through the testbenches both simulating a full 1MP sensor (These are run in the long testbenches action) and a smaller number of pixels in the actual manufactured hardware and shorter testbenches. I cannot unfortunately think of any way to make this design more useful to anyone else, but I wish anyone who tries the best of luck.

## How to test

There are testbenches provided in this repository which should verify the functionaltiy of the design. The test directory also includes a top level testbench which can be used to verify the design once it is fabricated. 

## External hardware

The top level test under the test directory will have a circuit python equivalent written which will allow the design to be tested from the external RP2040 microcontroller. This will allow the design to be tested in the actual hardware as well as in simulation.