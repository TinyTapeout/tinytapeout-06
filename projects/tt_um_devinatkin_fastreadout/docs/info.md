<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
![alt text](Logo.png)

## How it works

This project simulates an image sensor. Provide an input which represents the the pixel values for current row and column (512 bits each). Then the internals will simulate those light levels. The output will then be a series of packets representing the widths of the pixel outputs. This can then be re-recovered back into 

## How to test

Test Code will be provided in this repository. I will try and write this code both for an FPGA and for a Pi Pico. I'll extend this with instructions for how to verify that the code is indeed functional. 

## External hardware

This design will need to be hooked up to an external FPGA in order to drive it and verify its functionality. For this reason the top level testbench will mostly be synthesizable components which can be used on that device and will be targetted towards the Basys 3. 
