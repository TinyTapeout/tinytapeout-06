<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This HDL block accepts a pulse density modulated (PDM) microphone signal and produces an encoded output at a lower sampling frequency while maintaining audio intelligibility.

Expected Inputs: 
clk (clk) 
slow_clk (ui_in[1]) for the ADPCM block at 1/8 frequency of clk
Pulse Density Modulated input pdm_in (ui_in[2]) at clocked with clk
block_enable (ui_in[3]) (active high): single bit enable for the entire block

Outputs:
encPcm (uo_out[4:1]): the final 4 bit ADPCM encoded output
outValid (uo_out[0]): Output Valid flag for the ADPCM block, goes high for one cycle of slow_clk each time a new valid adpcm value is output

## How to test

Provide two synchronized external clocks, clk and slow_clk, slow_clk a frequency 8x slower than clk (e.g. clk = 512 kHz, slow_clk = 64 khz)
Connect the data pin of a pdm microphone clocked with clk to pdm_in.
Intially set block_enable to low, then when recording/compression should begin, set block_enable to high.
Now, a CIC decimated and ADPCM encoded output of the microphone data will stream from encPcm, which can be stored to memory, or decoded for writing to an audio file or playback.
