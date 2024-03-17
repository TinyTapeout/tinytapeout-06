<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a simple synthesized time-to-digital converter (TDC), consisting of a delay line and parallel capture FF. Depending on `__TDC_INTERLEAVED__` either a simple or an interleaved delay line is implemented.

In the TT 1x1 block size a 192-stage interleaved delay can be fitted.

## How to test

Apply two signals to `ui_in[0]` and `clk`.

After capturing (rising edge of `clk`) the result (i.e., the time delay between rising edge of `ui_in[0]` and `clk`) can be muxed-out to `uo_out[7:0]` using `ui_in[7:3]` as byte-wise selector. `ui_in[7:3]=0000` gives result byte 0, `ui_in[7:3]=0001` gives result byte 1, etc.

## External hardware

Two signal generators generating logical signals with a programmable delay.
