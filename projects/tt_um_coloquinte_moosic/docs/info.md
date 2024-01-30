<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a simple counter that is incremented every time the first input bit is set.

The trick is that is it locked using logic locking, so that it won't work unless the proper key is set first.

## How to test

You need to initialize the key with inputs "11100110" (or 0xe6). The 6 most significant bits (111001) are the key, and the second bit is the key enable.
Then you can run the counter: "00000001" will increment it, while "00000000" will keep the same value.

## External hardware

This is purely self-contained to demonstrate logic locking.
