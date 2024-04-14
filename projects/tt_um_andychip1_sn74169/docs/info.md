<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Verilog model of the SN74169.

## How to test

ui_in[3:0] = A[3:0] 4b parallel load

ui_in[4] = ENPB

ui_in[5] = ENTB

ui_in[6] = LOADB

ui_in[7] = UP/DOWNB

uo_out[3:0] = Q[3:0] 4b output

uo_out[4] = RCOB

uo_out[5] = !ui_in[0]  - for debugging

clk = system clock


## External hardware

Oscilloscope to observe the outputs.
