<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

So far this is pretty basic:

*   A big-standard CMOS inverter... maybe a bit on the large side.
*   A simple R2R DAC.

## How to test

For the CMOS inverter:

1.  Provide a digital input on `ui_in[0]`.
2.  Expect to see the inverse output on `uo_out[0]` but also on `ua[0]`.

For the R2R DAC:

1.  All of the `uio_in` (bidirectional) inputs go into the R2R DAC.
2.  Its output is on `ua[1]`.


## External hardware

Probably some sort of X-ray machine to look inside the chip...?

