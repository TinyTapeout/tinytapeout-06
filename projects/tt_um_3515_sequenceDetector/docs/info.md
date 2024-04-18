<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

- In this project, we have made a sequence detector using finite state machine (FSM)
- This is made using verilog, and detects sequence '1001'
- The logic is made using cases, and it makes sure to detect the sequence while covering overlapping case as well

## How to test

- If the sequence is detected, the output register x is set to logic 1 that displays '8.' on 7-segment display
- If the sequence is not detected or the output is 0, 7-segment display shows '-'
- Leds can be tested in two ways when ui_in [7:1] is kept 7'b1111111 (condition):
    1. If first 4 bits of seg_test are 0, we can display numbers from 0 to 9 if we vary last 4 bits
    2. If first 4 bits of seg_test are 1, we can display each led seperately by varying last 4 bits

## External hardware

- We need to use LED display for 7-segment display output for seg ([7:0] uo_out) so that the output can be displayed and verified
- In addition to this, we need to use an input source from which we can manipulate input logic onto the input register x (ui_in[0]) 
