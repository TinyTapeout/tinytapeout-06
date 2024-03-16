<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is a test of SPI Slave. It has X device registers, register 0x00 is ID and is read only.
Other registers can be written and read. 

To write a register, 16 bits must be written. 

Bit 15 (MSB, first sent) is the R/W bit, for writes, must be 0
Bit 14 to 8 is address
Bit 7 to 0 is data to be written

To read a register, 24 bits must be sent

Bit 23 (MSB, first sent) is the R/W bit, for reads, must be 1
Bit 22 to 16 is address
Bit 15 to 8 is dummy bits
Bit 7 to 0 is data read in MISO line

## How to test

In order to test reads, you can read the ID register (0x00) and the byte received should be 0x96.

In order to test writes, you can write a register different than ID register, and then read it back an check
you read the value previously written.

## External hardware

Some devices to peform SPI transactions
