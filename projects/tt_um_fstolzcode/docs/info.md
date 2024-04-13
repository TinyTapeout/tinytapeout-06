## How it works

This is a partial recreation of the original Zuse Z3 ALU. In Germany the Zuse Z3 is generally regarded as the first computer, however, unlike the ENIAC it is not turing-complete.
Even though it may not be the first turing-complete computer, to the best of my knowledge, it and its predecessor the Zuse Z1 contains the first implementation of a floating point unit.
It works purely on floating point numbers and only understands a few commands: loading/storing, reading in data and performing addition/subtraction, multiplication/division and lastly
computing the square root. It only employs two registers and 64 memory locations.

This is not a faithful recreation, because I did not want to convert the relay-based logic 1:1 to verilog. Furthermore, the multiplication/divison and square root modules were not
implemented because of space constraints. Obviously the memory is missing as well. However, it retains the original floating point format as well as algorithms.

## How to test

This project uses the Zuse Z3 floating point format. All floats must be normalized, meaning the mantissa must be within 1.0 to 1.99999... The mantissa is 15 bits long, but the MSB must always be 1.
A number is represented via: +/- 1.x * 2 ^ e. E is the exponent: A signed 7 bit number! The sign is represented by a single bit (1 = positive, 0 = negative).

The design was created for a 10 MHz clock and uses a 9600 baud UART connection for communication. It lets you load values into the FPU and perform addition or subtraction.
The commands require a single byte and are defined as follows:

0x81: Set the R1 register
0x82: Set the R2 register

0x84: Read the R1 register
0x88: Read the R2 register
0x90: Read the result register

0xA0: Perform R1 + R2
0xC0: Perform R1 - R2

After sending 0x81 or 0x82 you need to send 3 additional bytes where the first bytes contains the sign bit (7) and the exponent (6:0), the following byte defines 
the mantissa bits 15 to 7. Remember that bit 15 must be 1. The last byte defines the lower mantissa bits. Notice how we transmit 16 bits but only use 15 bits of information.
The lowest bit of the last byte is thus ignored. You do not get an ack from the board! Simply read the register back if you are unsure if the transmission worked.

If you send a read command, you will receive 3 bytes in the exact same format as above. First the sign and exponent in the first byte followed by the mantissa bytes.

If you send a addition/subtraction request, you will receive no answer. You will have to manually send the 0x90 command. Do not worry, the FSM waits until the FPU is done, so no
reading of undefined data will happen!

## External hardware

Use the on board RPi 2400 for uart connections. It uses the default uart ports suggested by tiny tapeout.
