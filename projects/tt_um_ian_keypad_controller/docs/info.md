<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This Project works by driving power to the Cols Columns one by one, then waits for any changes on the Rows (triggered by Human Input) and scans a case to find the combination between the row and col columns before finding the right combination and recording the corresponding key. 

This key is passed on to a decode module that finds the correct Seven Segment combination and then passes it on to the 1 digit seven Segment Display where it is displayed.

## How to test

Connect your keypad to the PMOD pins and experiment by clicking some buttons and seeing their outputs!

## External hardware

Keypad PMOD: https://t.ly/lTZF0
