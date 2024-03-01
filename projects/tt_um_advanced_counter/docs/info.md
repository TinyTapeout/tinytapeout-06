<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The design uses in it's core a series of modified 2-bit-up-down-counters that allow for setting a custom maximum value. Carry information is only provided if this is intended by the operating mode. The mode can is selected from individual inputs by a mode selection module. The output of the counters is serialized and encoded for the 7-segment-display.

## External hardware

For each digit used (due to limitations that's only 2) a push button in active high configuration is used. A third push button for the refreshing of limits is also required. Further more, 3 switches are used to determine the operating mode.
On the output side, for each digit an 8-bit-shift-register and a 7-segment-display is used, as the output value is serialized. For the shift clock two inverse outputs are provided, in case a shift register with both a load and output input. In that case, the shift\_clk is used for loading and not\_shift\_clk is used for output. The design was made with the register HC595 in mind, but will work with other 8-bit shift registers.
