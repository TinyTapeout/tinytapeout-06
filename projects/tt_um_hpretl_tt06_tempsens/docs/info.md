<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

There will be a better explanation in the future. In short, it measures the on-chip temperature, and puts out the result.

## How to test

Simply turn it on, and see the result. IO usage documented in the `info.yml`.

For direct outside control (bypassing the internal measurement state machine), use the following settings:

* Set `uio_in[3:0] = 0b1111` (enable debug mode 15).
* Set the DAC by using `ui_in[5:0]` (6b direct control of `tempsens_dat[5:0]`).
* `ui_in[6]` is connected to `tempsens_enable`.
* `ui_in[7]` is connected to `tempsens_prechrgn`.
* The output of the temperature sensor `tempsens_tempdelay` is connected to `uio_out[4]`.
* Use the `clk` input to synchronize the temperature output of falling edge.

## External hardware

Requires a logic analyzer or similar to inspect the digital outputs.
