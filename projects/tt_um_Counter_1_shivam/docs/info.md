<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The Verilog module implements a 8 bit binary counter with clock (`clk`), reset (`rst_n`), up count (`ui_in[2]`), down count(`ui_in[3]`), hold (`ui_in[4]`) ,output pins for binary (`out`), hexa decimal (`hex`) and decimal (`dec`). Upon a clock rising edge or reset assertion, it resets the output to 0 or increments it by 1, respectively. This design facilitates counting operations in digital systems, maintaining a 8-bit output range.

## How to test2

We test it on Vivado and open sources (OpenROAD and OpenLane). 

## External hardware

defaults  
