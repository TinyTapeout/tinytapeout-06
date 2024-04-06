<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design reads instructions from SPI Flash memory and execute them.
It also supports SPI PSRAM.

This CPU have an instruction bus and a data bus.
Flash is connected to the instruction bus and PSRAM and some peripherals are connected to the data bus. 

## How to test
Connect SPI flash that stores instruction for the CPU.
When you clear rst_n, then CPU will load instructin from 0x0000.

## External hardware
- SPI Flash Memory (W25Q128 etc.)
- SPI PSRAM (IPS6404 etc.) if you want to use external memory