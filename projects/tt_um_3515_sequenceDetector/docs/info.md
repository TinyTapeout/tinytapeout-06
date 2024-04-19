<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

- In this project, we have designed a sequence detector using finite state machine (FSM)
- It is designed using verilog, and detects sequence '1001'
- The logic is made using cases, and it detects the sequence while covering overlapping cases as well

## How to test

- If the sequence is detected, the output register z is set to logic 1 that displays '8.' on 7-segment display
- If the sequence is not detected (the output register is 0), 7-segment display shows '-'
- LEDs can be tested in two ways when ui_in [7:1] is kept 7'b1111111 (status for testing - condition = 7'b1111111):
    1. If first 4 bits of reg seg_test (uio_in [7:4]) are 0 during testing, we can display numbers from 0 to 9 if we vary last 4 bits (uio_in[3:0]) from 0000 to 1001
    2. If first 4 bits of reg seg_test (uio_in [7:4]) are 1 during testing, we can display each led seperately by varying last 4 bits (uio_in[3:0]) from 0000 to 0111

## External hardware

- We need to use 8 LEDs for 7-segment LED display output ([7:0] uo_out), so that the output can be displayed and verified accordingly at seg
- In addition to this, we need to use an input source from which we can manipulate input logic onto the input register x (ui_in[0])
