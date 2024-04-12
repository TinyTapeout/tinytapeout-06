<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a FIFO that can pass data asynchronously across clock domains. This was a project I created when I was first learning logic design, and it took me a couple weeks to settle on a design that I felt was clean and reusable.

The FIFO can hold 32 4-bit values, or 16 bytes. So use them wisely and greatly!

The original design can be found at [https://github.com/KennethWilke/sv-cdc-fifo](https://github.com/KennethWilke/sv-cdc-fifo)

The architecture of this design was influenced by
[this paper](http://www.sunburst-design.com/papers/CummingsSNUG2002SJ_FIFO1.pdf)
written by Clifford E. Cummings of
[Sunburst Design](http://www.sunburst-design.com) by the implementation was fully written by me. 

## How to test

Hold `write_reset` and `read_reset` LOW while running the clock for a bit to reset, then raise to initialize the module.

### Writing to the FIFO

Prepare your data on the 4-bit `write_data` bus, ensure the `full` state is low and then raise `write_increment` for 1 cycle of `write_clock` to write data into the FIFO memory.

### Reading from the FIFO

The FIFO will present the current output on the `read_data` bus. If `empty` is low, this output should be valid and you can acknowledge receive of this vallue by raising `read_increment` for 1 cycle of `read_clock`.
