<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project is a hardware implementation of a maximum-cycle 32-bit Galois linear feedback shift register (LFSR) with taps at registers (R32, R30, R26, R25). The LFSR is defined with the most-significant bit (MSB) at the left-most register R32 and the least-significant bit (LSB) at the right-most register R01. The LFSR shifts bits from left to right (R_n+1 -> R_n), with the R30, R26, and R25 populated by XORing bits from R_n+1 with R1, the LFSR output. The LFSR contains an initialization/fail-safe feedback that prevents the LFSR from entering an all-zero state. If the LFSR is ever in an all-zero state, a "1" value is inserted into R32.

A schematic of the circuit may be found at:

https://wokwi.com/projects/394707429798790145

The circuit has 10 inputs:

| Input    | Setting                     |
| -------- | -------                     |
| CLK      | Clock                       |
| RST_N    | Not Used                    |
| 01       | Not Used                    |
| 02       | Manual R0 Input Value       |
| 03       | Input Select                |
| 04       | Not Used                    |
| 05       | Not Used                    |
| 06       | Not Used                    |
| 07       | Not Used                    |
| 08       | Not Used                    |

The CLK sets the clocking for the flip-flop registers for latching the LFSR values. In the schematic shown in the Wokwi project, a switch is used to select either the system clock or an externally provided or manual clock that allows the user to manually step through each latching event.

An 8-input DIP switch provides some flexibility to initalizing the LFSR. DIP03 (IN2) allows the user to toggle the Input Select function, which is a multiplexer that select whether the left-most register (R32) takes in as the input the LFSR feedback from R01, or a value that is manually selected by the user. If manual input is selected, the taps on R30, R26, and R25 are turned off and their inputs are shifted in from R_n+1.

DIP02 (IN1) allows a the user to manually enter a 0 or a 1 value into the leftmost register.

The cicuit has 8 outputs. They output the values of the 8 right-most registers (R08, R07, R06, R05, R04, R03, R01, R01).

| Output   | Value in    |
| -------- | -------     |
| 01       | R08 |
| 02       | R07 |
| 03       | R06 |
| 04       | R05 |
| 05       | R04 |
| 06       | R03 |
| 07       | R02 |
| 08       | R01 |

## How to test

The circuit can be tested by powering on the circuit, and first setting the Input Select switch (DIP03) to "1" to reset/initialize the entire LFSR to all-zeros. The Input Select switch can then be switched to "0" to allow the LFSR to run from its all-zero initialized value. The first 100 8-bit output values of the LFSR from this zeroized state may be observed using a logic analyzer, and should be:

[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[1 0 0 0 0 0 0 0],[0 1 0 0 0 0 0 0],[0 0 1 0 0 0 0 0],
[0 0 0 1 0 0 0 0],[0 0 0 0 1 0 0 0],[0 0 0 0 0 1 0 0],[0 0 0 0 0 0 1 0],
[0 0 0 0 0 0 0 1],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[1 0 0 0 0 0 0 0],[1 1 0 0 0 0 0 0],
[0 1 1 0 0 0 0 0],[0 0 1 1 0 0 0 0],[0 0 0 1 1 0 0 0],[1 0 0 0 1 1 0 0],
[0 1 0 0 0 1 1 0],[1 0 1 0 0 0 1 1],[0 1 0 1 0 0 0 1],[0 0 1 0 1 0 0 0],
[0 0 0 1 0 1 0 0],[0 0 0 0 1 0 1 0],[0 0 0 0 0 1 0 1],[0 0 0 0 0 0 1 0],
[0 0 0 0 0 0 0 1],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[1 0 0 0 0 0 0 0],
[0 1 0 0 0 0 0 0],[1 0 1 0 0 0 0 0],[0 1 0 1 0 0 0 0],[0 0 1 0 1 0 0 0],
[0 0 0 1 0 1 0 0],[0 0 0 0 1 0 1 0],[0 0 0 0 0 1 0 1],[0 0 0 0 0 0 1 0],
[0 0 0 0 0 0 0 1],[1 0 0 0 0 0 0 0],[0 1 0 0 0 0 0 0],[0 0 1 0 0 0 0 0],
[0 0 0 1 0 0 0 0],[1 0 0 0 1 0 0 0],[0 1 0 0 0 1 0 0],[0 0 1 0 0 0 1 0],
[0 0 0 1 0 0 0 1],[0 0 0 0 1 0 0 0],[0 0 0 0 0 1 0 0],[0 0 0 0 0 0 1 0],
[0 0 0 0 0 0 0 1],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0],
[1 0 0 0 0 0 0 0]

A python implementation of the 32-bit Galois LFSR can be found at the link below. It may be used for testing the hardware for sequences longer than the initial 100 values.

https://github.com/icarislab/tt06_32bit-fibonacci-prng_cu/main/docs/32-bit-fibonacci-prng_pythong_simulation.py

## External hardware

No external hardware is required.
