<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This design consists of these blocks:

- CPU
- Memory controller for SPI Flash (for instruction memory) / PSRAM (for data memory)
- GPIO (Output only x4, In/Out x4)
- SPI Tx (mode 0 only)

Dedicated macro assembler is also available at [tt06-tmasm](https://github.com/JA1TYE/tt06-tmasm).

### CPU
This design has an 8-bit CPU that has a simple instruction set.

This CPU employs a Harvard architecture. So, it has an instruction bus and a data bus internally.
Both buses have 16-bit address space.

External SPI Flash is mapped to 0x0000-0xFFFF on the instruction memory space.
CPU will read an instruction from 0x0000 after reset.

PSRAM and some peripherals are mapped to the data memory space.
Address map is below:

|Address|Description|
|---|---|
|0x0000-0xEFFF|Mapped to SPI PSRAM|
|0xF000|GPIO Direction Set Register|
|0xF001|GPIO Output Data Register|
|0xF002|GPIO Input Data Register|
|0xF003|Reserved|
|0xF004|SPI Divider Value Register|
|0xF005|SPI CS Control Register|
|0xF006|SPI Status Register|
|0xF007|SPI Data Register|
|0xF008-0xFFFF|0xF000-0xF007 are mirrored in every 8 bytes|

### Peripherals
This design has GPIO and SPI peripherals.
#### GPIO
GPIO has 4x Output-only pins and 4x I/O pins.
These pins are mapped 8-bit registers. Upper 4-bits represent output-only pins.

|Address|Name|Description|
|---|---|---|
|0xF000|GPIO Direction|If bit is set, corresponding pin is configured as output, otherwise configured as input (Lower 4-bit only)|
|0xF001|GPIO Output Data|Output data value|
|0xF002|GPIO Input Data|Current pin status|

#### SPI Tx
SPI Tx only supports 8-bit data, mode 0.
CS signal is not controlled automatically.

|Address|Name|Description|
|---|---|---|
|0xF004|SPI Clock Divider Value|SPI SCLK frequency[Hz] = (Main Clock / 2) / (Value[3:0] + 1) |
|0xF005|SPI CS Value|CS pin output value (Valid lowest bit only)|
|0xF006|SPI Status|If bit[0] is set, transmission is ongoing|
|0xF007|SPI Tx Data|When write data to this register, SPI transmission will be started|

## How to test
Write program to SPI Flash (by using ROM Writer etc.) and connect it to the board (Please also see the Pinout section).
SPI PSRAM is also needed if you need data storage other than general-purpose regsiters.

When you negate rst_n, then CPU will load instruction from 0x0000 on SPI Flash.

## External hardware
- SPI Flash Memory (W25Q128 etc.)
- SPI PSRAM (IPS6404 etc.) if you want to use external memory