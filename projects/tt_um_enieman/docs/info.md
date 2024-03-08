<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## Motivation
This project was developed as a part of the MEST course "ChipCraft: The Art of Chip Design for Non-Experts". As a part of the course, students are walked through the design and implementation of a RISC-V core. At the time that I took this course, students opting to tape out their RISC-V core were limited to a single, hard-wired program in place of a true instruction "memory". This led me to put together a simple UART controller tied to a 64-byte register file that could act as programmable instruction memory. Future students (or anyone experimenting with processor design) can utilize the UART modules in this design to enable programmability of their processor designs.

I decided on UART over other protocols because of its simplicity and my own familiarity with it. USB-serial adapters are easy to find and there are several serial terminals out there. I also decided to implement a very simple auto-baud detection in my design instead of a fixed baud rate. This was done due to my own uncertainty in the clock frequency.

## How it works

This project implements a simplified RISC-V core that runs instructions from a 64-byte register file that is programmed by the user via a UART interface.

The RISC-V core adheres to RV32I with the following exceptions:
1. Does not implement FENCE, ECALL, or EBREAK instructions.
2. Only 32-bit loads are implemented. LH, LHU, LB, LBU are all treated as LW.
3. Only 32-bit stores are implemented. SH and SB are treated as SW.
4. Only implements 16 registers (x0 - x15)

Instruction memory and data memory are isolated. Instruction memory and data memory are implemented as 64-byte (16-word) and 16-byte (4-word) register files that are written to and read from via a UART interface.

The UART controller operates in two modes: "PROGRAM" and "DATA READ". Upon reset of the device, the controller enters "PROGRAM MODE". During this time, the user sends a sync packet, followed by the RV32I binary (64-bytes max). Once 64 bytes have been written (unused space can be filled with "ADD x0, x0, x0" instructions), the controller will enter "DATA READ" mode. In this mode, the user can read the contents of data memory by sending a single packet (the contents of this packet do not matter).

For those wanting to implement their own processor design, use the template TL-Verilog file `/src/tlv/uart_template.tlv` and modify line 89 with a URL pointing to your design. See `/src/tlv/cpu_custom.tlv` for an example processor design.

Step-by-step usage:
1. Connect the USBUART Pmod to the demo board via jumpers and a breadboard. The RX pin of the Pmod connects to in2, the TX pin to out2, and PWR/GND should be connected. No other pins of the Pmod are used.
2. (Optional) Connect the BTN Pmod to the demo board. This Pmod should connect only to in4-in7.
3. (Optional) Connect 8LD Pmod to out4-out7 (optional). out7 is high when reset button is pushed, out6 is high when device is in "PROGRAM" mode, out5 is high when zeros are transmitted on RX, out4 is high when zeros are transmitted on TX.
4. Connect the host computer to the USBUART Pmod. A serial terminal will be needed on the laptop. A serial terminal capable of sending binary files is highly recommended.
5. Connect the demo board to power.
6. Press the reset button (or press BTN3 on the BTN Pmod) to reset the device.
7. Configure the serial terminal for 8 data bits, no parity, and one stop bit.
8. Send a program file from `/test/bin` and go to step 12. If the serial terminal does not support this, you can manually program via steps 9-11.
9. Send a single sync packet. A packet of hex value 0x55 is recommended, however the only requirement is that it should be an odd-numbered value (the device measures the width of the start bit in clocks).
10. Send instructions as packets. Start with the least-significant byte of the first instruction, end with the most-significant byte of the last instruction.
11. The device will not switch to "DATA READ" until all instruction memory is written. If less than 16 instructions were written, fill in with no-ops (e.g. "ADD x0, x0, x0").
12. Read data memory by sending a single packet. The content of the packet does not matter.
13. To run a different program, repeat steps 6-12.

## How to test (option 1)

To run cocotb tests, run `make` in `/test` directory. The cocotb test will iterate through each program name in `/test/programs.f` and load/execute each program's corresponding binary file in `/test/bin`. Data memory contents are compared to each program's corresponding text file in `/test/solutions` to determine pass/fail.

To add new programs to the test, my current workflow is as follows. I did not get around to figuring out a simple, straightforward way of assembling in python, so the current workflow is admittedly cumbersome.
1. Create assembly program and store in `/test/asm/[program_name].asm`. Keep in mind that there is a max of 16 instructions!
2. Assemble `.asm` file with an online RV32I assembler. Paste output hex into a text file and save it as `/test/hexstr/[program_name].hexstr`.
3. Run `/scripts/hexstr_to_bin.py`. This will convert the hex strings to a binary file and save to `/test/hexstr/[program_name].bin`. It will also write the UART sync word to the beginning of the file (0x55) and backfill unused instructions with ADD x0, x0, x0 instructions.

## How to test (option 2)

Use Makerchip IDE (makerchip.com) for testing of RISC-V core only.

1. Go to makerchip.com and load the IDE.
2. Open `/src/tlv/uart_template.tlv`.
3. At line 25, change `set(MAKERCHIP, 0)` to `set(MAKERCHIP, 1)`
4. Lines 59 through 79 list a simple test program. If you want to use a different program, replace these lines with your program. Keep in mind that code under labels needs to be indented with three spaces.
5. Line 122 can be edited to set pass/fail criteria.
6. Use Ctrl + Enter to compile and start simulation. I have found the VIZ window to be most helpful in troubleshooting the CPU. Zoom in on the TinyTapeout chip on the dev board to see a CPU visualization. Advance clock cyles to watch the simulation progress.

## External hardware

1. USBUART Pmod (https://digilent.com/reference/pmod/pmodusbuart/start) - Note that jumpers and a breadboard are required to connect as this design does not use the bidirectional I/O yet.
2. BTN Pmod (https://digilent.com/reference/pmod/pmodbtn/start) - This is only necessary if ui_in[7] is needed for resetting the design (the demo board I developed on had a non-functioning reset button). If your reset button works, this isn't needed.
3. 8LD Pmod  (https://digilent.com/reference/pmod/pmod8ld/start) - This is optional, use if you want to see the UART TX and RX feedback, as well as what mode the design is in.
