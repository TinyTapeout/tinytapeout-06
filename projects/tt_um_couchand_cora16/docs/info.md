<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

Couch's One-Register Accumulator machine, 16-bit width.

## How it works

One register should be enough for anybody.  Well, there's also the program counter, status flags, stack pointer, data pointer, but who's counting?

External SPI memory is used for a simple instruction fetch/execute cycle.  High-bandwidth I/O is provided through a full byte-width input and output bus.  The machine allows single-stepping through execution to aid debugging.

Pin | Function
----+---------
`step` | Set high for a clock cycle to step, hold high to run.
`busy` | When high, the machine is currently working on an instruction.
`halt` | When high, the machine has halted execution.
`trap` | When `halt` is low and `trap` is high, the machine has trapped.  Step once to attempt recovery (success depends significantly on context).
       | Note: when both `halt` and `trap` are high, the machine has experienced an irrecoverable fault, please reset.
`in[7:0]` | General-purpose byte input.  Use as data source `IN` for any one-argument instruction.
`out[7:0]` | General-purpose byte output.  Set with the `OUT` instruction.

## How to test

1. Load the program to run into the external SPI RAM.
2. Reset the CPU.
3. Raise `step` high for a clock for each instruction to step.
4. Hold `step` high to run free (you are advised to handle `trap`).
5. Observe `busy`, `halt` and `trap` for the module status.

## External hardware

The module expects an SPI RAM attached to the relevant SPI pins.  The onboard Raspberry Pi emulation should work just fine.

## Instruction set

Status byte | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0
------------+---+---+---+---+---+---+---+--
            | x | x | **E**lse | x | x | **C**arry | **N**eg | **Z**ero

Impact on the status flags is documented as:

* `-`: No effect
* `0`: The flag is cleared to zero
* `1`: The flag is set to one
* `#`: The flag is affected by the operation

### One-byte instructions

Name | Bit Pattern | Description | Status
-----+-------------+-------------+-------
Nop  | `0000 0000` | No operation | `---- ----`
Halt | `0000 0001` | Halt machine | `---- ----`
Trap | `0000 0010` | Trap execution | `---- ----`
Drop | `0000 0011` | Drop a word from the stack | `---- ----`
Push | `0000 0100` | Push a word to the stack | `---- ----`
Pop  | `0000 0101` | Pop a word from the stack to the accumulator | `---- ----`
Return | `0000 0110` | Return to the address on top of the stack | `---- ----`
Not  | `0000 0111` | One's complement of the accumulator | `---- -1##`
Out Lo | `0000 1000` | Output the low byte of the accumulator | `---- ----`
Out Hi | `0000 1001` | Output the high byte of the accumulator | `---- ----`
Set DP | `0000 1010` | Set the data pointer value to the accumulator value | `---- ----`
Test | `0000 1011` | Set the status flags based on the accumulator value | `---- --##`
Branch Indirect | `0000 1100` | Add the accumulator to the program counter | `---- ----`
Call Indirect | `0000 1101` | Call the subroutine address in the accumulator | `---- ----`
Status        | `0001 0000` | Load the status flags into the accumulator | `---- ----`
Load Indirect | `0100 01mm` | Load a word from the address in the accumulator, using addressing mode `m` (bug: modes not supported) | `---- ----`


### Two-byte instructions

Name | Bit Pattern | Description | Status
-----+-------------+-------------+-------
Load | `1000 0sss vvvv vvvv` | Load a value into the accumulator | `---- ----`
Store | `1001 0sss vvvv vvvv` | Store a value to memory | `---- ----`
Add | `1000 1sss vvvv vvvv` | Add a value to the accumulator | `---- -###`
Sub | `1001 1sss vvvv vvvv` | Subtract a value from the accumulator | `---- -###`
And | `1010 0sss vvvv vvvv` | Bitwise and a value with the accumulator | `---- --##`
Or  | `1010 1sss vvvv vvvv` | Bitwise or a value with the accumulator | `---- --##`
Xor | `1011 0sss vvvv vvvv` | Bitwise exclusive or a value with the accumulator | `---- --##`
Shift | `1011 1sss vvvv vvvv` | Shift the accumulator (see note below on direction) | `---- -###`
Branch | `1100 0pp pppp pppp` | Add the offset `p` to the program counter | `---- ----`
Call   | `1101 0pp pppp pppp` | Call the subroutine at address `p` | `---- ----`
If     | `1111 000 0000 cccc` | Skip the following instruction if the condition doesn't hold | `---- ----`

Many of these instructions specify a source type `s` and value `v`.  These are the options:

Source Type | Bit Pattern | Interpretation
------------+-------------+---------------
Const Lo | `000` | Take the value `v` as the low byte of a constant
Const Hi | `001` | Take the value `v` as the high byte of a constant
Input Lo | `010` | Input the low byte, ignore the value `v`
Input Hi | `011` | Input the high byte, ignore the value `v`
Data Direct | `100` | Read a value from the address `v` (relative to the data pointer)
Data Indirect | `101` | Read a pointer from the address `v` (relative to the data pointer), and load a value from that address
Stack Direct | `110` | Read a value from the address `v` (relative to the stack pointer)
Stack Indirect | `111` | Read a pointer from the address `v` (relative to the stack pointer), and load a value from that address

Note: the `SHIFT` instruction stashes the shift direction within this source field.

Source Type | Shift Bit | Source Limitation
------------+-----------+------------------
Constant    | Lo/Hi     | Only 8-bit constants supported
Input       | Lo/Hi     | Only 8-bit inputs supported
Memory      | Addr[0]   | Only aligned addresses supported (TODO: maybe require that everywhere??)

The following table lists the condition codes for the `IF` instruction.

Condition | Bit Pattern | Description
----------+-------------+------------
Zero      | `0000`      | Skip the next instruction if the `Z` bit is cleared
Not Zero  | `0001`      | Skip the next instruction if the `Z` bit is set
Else      | `0010`      | Skip the next instruction if the `E` bit is cleared
Not Else  | `0011`      | Skip the next instruction if the `E` bit is set
Neg       | `0100`      | Skip the next instruction if the `N` bit is cleared
Not Neg   | `0101`      | Skip the next instruction if the `N` bit is set
Carry     | `0110`      | Skip the next instruction if the `C` bit is cleared
Not Carry | `0111`      | Skip the next instruction if the `C` bit is set

### Three-byte instructions

Name | Bit Pattern | Description | Status
-----+-------------+-------------+-------
Call Word | `0011 1110 wwww wwww wwww wwww` | Call the subroutine at address `w` | `---- ----`
Load Immediate Word | `0011 1111 wwww wwww wwww wwww` | Set the accumulator to `w` | `---- ----`
