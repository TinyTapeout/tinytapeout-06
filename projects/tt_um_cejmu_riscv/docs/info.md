<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# How it works

The project consist of a RISC-V VHDL Model and supports the [Tiny RV1 ISA](https://github.com/cbatten/ece4750-tinyrv-isa) without MUL. In addition AND and XOR are supported.

## How to test

To test our design you will need to use external hardware.

## External hardware

To use our design you will need to use the provided spi_slave_tt06_with_memory and synthesize it for an 12 MHz FPGA.
