<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Based from https://wokwi.com/projects/341279123277087315

On power-up, the 7-segment display should display the text PILIPINASLASALLE one at a time per clock cycle. The "dp" output toggles every clock cycle.

Setting the input pin 7 to HIGH allows for manual override of the BCD value. In this mode, input pins 0-3 controls the BCD value. The text displayed for each BCD value are tabulated below:
| **in0** | **in1** | **in2** | **in3** | **Character** |
|:-------:|:-------:|:-------:|:-------:|:-------------:|
|   LOW   |   LOW   |   LOW   |   LOW   |       P       |
|   LOW   |   LOW   |   LOW   |   HIGH  |       I       |
|   LOW   |   LOW   |   HIGH  |   LOW   |       L       |
|   LOW   |   LOW   |   HIGH  |   HIGH  |       I       |
|   LOW   |   HIGH  |   LOW   |   LOW   |       P       |
|   LOW   |   HIGH  |   LOW   |   HIGH  |       I       |
|   LOW   |   HIGH  |   HIGH  |   LOW   |       N       |
|   LOW   |   HIGH  |   HIGH  |   HIGH  |       A       |
|   HIGH  |   LOW   |   LOW   |   LOW   |       S       |
|   HIGH  |   LOW   |   LOW   |   HIGH  |       L       |
|   HIGH  |   LOW   |   HIGH  |   LOW   |       A       |
|   HIGH  |   LOW   |   HIGH  |   HIGH  |       S       |
|   HIGH  |   HIGH  |   LOW   |   LOW   |       A       |
|   HIGH  |   HIGH  |   LOW   |   HIGH  |       L       |
|   HIGH  |   HIGH  |   HIGH  |   LOW   |       L       |
|   HIGH  |   HIGH  |   HIGH  |   HIGH  |       E       |

## How to test

Default mode: Set the clock input to a low frequency such as 1 Hz to see the text transition per clock cycle.

Manual mode: Set the input pin 7 to HIGH and toggle input pins 0-3. The character displayed for each input combination should be according to the table above.

## External hardware

7-segment display
