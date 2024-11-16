## Quick Overview

This is a partial recreation of the original Zuse Z3 ALU. In Germany the Zuse Z3 is generally regarded as the first computer, however, unlike the ENIAC it is not turing-complete.
Even though it may not be the first turing-complete computer, to the best of my knowledge, it and its predecessor the Zuse Z1 contains the first implementation of a floating point unit.
It works purely on floating point numbers and only understands a few commands: loading/storing, reading in data and performing addition/subtraction, multiplication/division and lastly
computing the square root. It only employs two registers and 64 memory locations.

This is not a faithful recreation, because I did not want to convert the relay-based logic 1:1 to verilog. The memory is missing as well. However, it retains the original floating point format as well as algorithms.

## Number Representation

This project uses the Zuse Z3 floating point format, but without using hidden digits. All floats must be normalized, meaning the mantissa must be within 1.0 to 1.99999... The mantissa is 15 bits long, but the MSB must always be 1.
A number is represented via: +/- 1.x * 2 ^ e. E is the exponent: A signed 7 bit number! The sign is represented by a single bit (1 = positive, 0 = negative). X is the mantissa.

In order to convert a decimal number, for example, 42.24 to the Z3 format perform the following steps:
1. The number is positive, so the sign bit is 1. s = 1
2. Convert the integer part to binary. 42 = 101010
3. The highest bit is in position 5 (counting from 0). Thus, e = 5 -> 2^5
4. Now convert the fractional part to binary:

0.24 * 2 = 0.48 (0)

0.48 * 2 = 0.96 (0)

0.96 * 2 = 1.92 (1)

0.92 * 2 = 1.84 (1)

0.84 * 2 = 1.64 (1)

0.64 * 2 = 1.28 (1)

0.28 * 2 = 0.56 (0)

0.56 * 2 = 1.12 (1)

(this would continue, but we have enough digits to fill our mantissa)

Our number is thus: 101010.00111101

6. Take the number above and remove the dot. Now you got your mantissa
   
8. Thus in general the Z3 number will be 1 (sign) | 0000101 (exponent) | 10101000111101 (mantissa)
   
10. You can verify this by computing:
2^5 *( 2^0 + 2^-2 + 2^-4 + 2^-8 + 2^-9 + 2^-10 + 2^-11 + 2^-13) = 42.23828125

This is not exactly 42.24, which is to be expected, because some decimal numbers are not representible in binary, thus inducing a rounding error.

Here are some example bit strings in Python format, which you can send to the FPU:

b'\x85\xab\x00' = 42.75

b'\x82\xe0\x00' = 7.0

The number 0 is represented by any value, which has the exponent -64.

Infinity is represented by any value, which has the exponent 63.

## How to test
The design was created for a 10 MHz clock and uses a 9600 baud UART connection for communication. It lets you load values into the FPU and perform addition or subtraction.

The commands require a single byte and are defined as follows:

0x82: Set the R1 register

0x83: Set the R2 register

0x84: Set the status register (e.g., overflow, underflow)

0x85: Read the R1 register

0x86: Read the R2 register

0x87: Read the result register

0x88: Perform R1 + R2

0x89: Perform R1 - R2

0x8A: Perform R1 * R2

0x8B: Perform R1 / R2

0x8C: Perform sqrt(R1)

After sending the command to write a register you need to send 3 additional bytes where the first byte contains the sign bit (7) and the exponent (6:0), the following byte defines 
the mantissa bits 15 to 7. Remember that bit 15 must be 1. The last byte defines the lower mantissa bits. Notice how we transmit 16 bits but only use 15 bits of information.
The lowest bit of the last byte is thus ignored. You do not get an ack from the board! Simply read the register back if you are unsure if the transmission worked.

If you send a read command, you will receive 3 bytes in the exact same format as above. First the sign and exponent in the first byte followed by the mantissa bytes.

If you send a command to compute a result, you will receive no answer. You will have to manually read the result register. Do not worry, the FSM should wait until the FPU is done, so no
reading of undefined data will happen!

Using the example values from above, here is a complete command sequence:

b'\x82\x85\xab\x00' sends the number 42.75

b'\x83\x82\xe0\x00' send the number 7.0

b'\x88' sends the ADD command

b'\x87' reads the result register

The result should be b'\x85\xc7\x00'

The status register can signify the following events:

The result was zero bit position 0

The computation overflowed bit position 1

The computation underflowed bit position 2

## External hardware

Use the on board RPi 2400 for uart connections. It uses the default uart ports suggested by tiny tapeout.
