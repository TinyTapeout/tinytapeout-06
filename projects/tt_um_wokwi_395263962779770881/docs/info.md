<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project is a hardware implementation of the Bivium-B stream cipher used as a non-linear feedback shift register (NLFSR). The NLFSR is defined with the least-significant bit (LSB) at the left-most register R0 and the most-significant bit (MSB) at the right-most register R176. The LFSR circular shifts bits from left to right (R_n -> R_n+1), with the two feedback taps:

R93 = (R90 * R91) + (R65 + R92) + R170
R0  = (R174 * R175) + (R161 + R176) + R68

The output of the NLFSR is:

z   = R65 + R92 + R161 + R176

The NLFSR contains an initialization/fail-safe feedback that prevents the LFSR from entering an all-zero state. If the LFSR is ever in an all-zero state, a "1" value is inserted into R0.

A schematic of the circuit may be found at:

https://wokwi.com/projects/395263962779770881

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

The CLK sets the clocking for the flip-flop registers for latching the NLFSR values. In the schematic shown in the Wokwi project, a switch is used to select either the system clock or an externally provided or manual clock that allows the user to manually step through each latching event.

An 8-input DIP switch provides some flexibility to initalizing the NLFSR. DIP03 (IN2) allows the user to toggle the Input Select function, which is a multiplexer that select whether the left-most register (R0) takes in as the input the NLFSR feedback value or a value that is manually selected by the user. The switch also controls whether R93 takes in a NLFSR feedback or a value directly from R91.

DIP02 (IN1) allows a the user to manually enter a 0 or a 1 value into the leftmost register.

The cicuit has 8 outputs. They output the following values:

| Output   | Value in    |
| -------- | -------     |
| 01       | R0  (NLFSR input)|
| 02       | R68 |
| 03       | (R174 * R175) + (R161 + R176) |
| 04       | R65 |
| 05       | R92 |
| 06       | R161 |
| 07       | R176 |
| 08       | z (NLFSR output) |

The output allows for some self-testing, where OUT01 = OUT02 + OUT03 and OUT08 = OUT004 + OUT05 + OUT06 + OUT07.

## How to test

The circuit can be tested by powering on the circuit, and first setting the Input Select switch (DIP03) to "1" to reset/initialize the entire LFSR to all-zeros. The Input Select switch can then be switched to "0" to allow the LFSR to run from its all-zero initialized value. The output values of the NLFSR from this zeroized state may be observed using a logic analyzer, and can be compared with the values obtained for the python simulation:

https://github.com/icarislab/tt06_biviumb-prng_cu/blob/main/docs/biviumb-prng_python_simulation.py

## External hardware

No external hardware is required.
