<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This project is the most minimal extension (add CLR & MUL to ISA) of Ramyad Hadidi's 8-bit CPU that details the design and implementation of an 8-bit single-cycle microprocessor. The processor includes a register file and an Arithmetic Logic Unit (ALU). The design was crafted to handle a simple instruction set architecture (ISA) that supports basic ALU operations, load/store operations, and status checks for the ALU carry -- all within less than a week. While the current version lacks a program counter and external memory, thus omitting any form of jump operations, it provides a solid foundation for understanding basic computational operations within a custom CPU architecture.

### ISCA Overview
The ISA is straightforward and is primarily focused on register operations and basic arithmetic/logic functions. Below is the breakdown of the instruction set:
```
// ISA --------------------------------------------------------------
//-- R level
`define MVR 4'b0000            // Move Register
`define LDB 4'b0001            // Load Byte into Regsiter
`define STB 4'b0010            // Store Byte from Regsiter
`define RDS 4'b0011            // Read (store) processor status
// 1'b0100 NOP
// 1'b0101 NOP
// 1'b0110 NOP
// 1'b0111 NOP
//-- Arithmatics
`define NOT {1'b1, `ALU_NOT}
`define AND {1'b1, `ALU_AND}
`define ORA {1'b1, `ALU_ORA}
`define ADD {1'b1, `ALU_ADD}
`define SUB {1'b1, `ALU_SUB}
`define XOR {1'b1, `ALU_XOR}
`define INC {1'b1, `ALU_INC}
`define MUL {1'b1, `ALU_MUL}
// 1'b1111 NOP
```

## How to test

The processor has been tested through a suite of 12 testbenches, each designed to validate a specific functionality or operation. These testbenches cover basic ALU operations, data movement between registers, and the load/store functionalities. Although basic operational tests are passing, timing interactions between instructions have not been exhaustively verified, and it is anticipated that a sophisticated compiler would handle these timing considerations effectively, reminiscent of approaches taken in historical computing systems. [ADD TESTS FOR MUL EXTENSION]

## External hardware

Currently, the processor does not interface with any external hardware components. It operates entirely within a simulated environment where all inputs and outputs are managed through testbenches. This setup is ideal for educational purposes or for foundational experimentation in CPU design.
