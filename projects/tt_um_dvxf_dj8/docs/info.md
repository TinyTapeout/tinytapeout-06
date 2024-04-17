<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# How it works

DJ8 is a 8-bit CPU, originally developped for XCS10XL featuring:
* 8 x 8-bit register file
* 3-4 cycles per instruction
* 15-bit address bus
* 8-bit data bus

## Memory Map

| From | To | Description
|--|--|--|
| 0x0000 | 0x7fff | External memory
| 0x8000 | 0xffff | Internal Test ROM (32 bytes, mirrored)

#### External memory map if using the recommended setup (see [pinout](#pinout))

| From | To | Description
|--|--|--|
| 0x2000 | 0x1fff | External RAM (32 bytes)
| 0x4000 | 0x5fff | External Flash ROM (16KB)

## Pinout
Due to TT06 IO constraints, pins are shared between *Address bus LSB* and *Data bus OUT*. It means that during memory write instructions, the address space is only 64 bytes.

| Pins | Standard mode | During memory write execute+writeback cycles
|--|--|--|
| ui[7..0] | Data bus IN | Data bus IN 
| uio[7..0] | Address bus LSB (7..0) | ***Data bus OUT***
| uo[6..0] | Address bus MSB (14..8) | Address bus MSB (14..8)
| uo[7] | Write Enable | Write Enable

You can connect a 8KB parallel Flash ROM + 32b SRAM without 
external logic and use uo[6] for RAM OE# and uo[5] for Flash ROM OE#.

To get a bidirectional data bus (needed for SRAM), uio bus must be connected to ui bus with resistors. To be tested!

## Reset

At reset time, PC is set to 0x4000.

All other registers are set to 0x80.

# How to test

An internal test ROM is included for easy testing on the TT06 demo board, no external hardware needed. It shows a rotating indicator on the 7-segment display. Its speed can be changed with DIP switches, the internal delay loop is entirely deactivated when all switches are reset.

To jump to the internal test ROM, set DIP8 = 0, DIP7 = 1 and reset the CPU. That way, the CPU sees a "JMP GH" instruction on the bus when it fetches the first instruction, and jumps to GH. At reset time GH = 0x8080 which is in internal test ROM area.

# External hardware

External parallel flash + optional SRAM