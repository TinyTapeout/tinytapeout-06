## How it works
The CPU is based on Ben Eater's [8-bit breadboard CPU](https://eater.net/8bit). A built-in debugger allows pausing the CPU, loading programs, inspecting/modifying registers, etc.

## How to test

The debugger is accessible over I2C at address 0x2A (0x54 write, 0x55 read). The provided `dbg` program can be used to load programs, inspect registers, etc.

## External hardware

Optionally, data can be provided on the input pins and consumed on the output pins. They are accessible to the CPU as the IN and OUT registers.
