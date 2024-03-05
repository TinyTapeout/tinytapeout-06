<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

 The design implements a moving average filter using a series of registers and a finite state machine (FSM). 
 The filter calculates the average of a set of recent values in a data stream, determined by the FILTER_POWER parameter. 
 This smooths out short-term fluctuations and highlights longer-term trends or cycles.
 The master module handles input and output processing, including bidirectional IO handling and filter selection based on input control signals.

## How to test

  To test the moving average filter, provide a series of digital input values to the 'ui_in' port and observe the smoothed output on 'uo_out'. 
  The 'uio_in' can be used to control the filter's width and operational parameters. 
  Test with varying input patterns and filter widths to evaluate the filter's response.

## External hardware
  There is no external Hardware
