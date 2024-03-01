<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This tinytapeout projects implements i2c to drive ws2812b individual addressable LEDs. The IC can be addressed with the address 0x4A. The register address corrosponds with the sequential bytes of the leds as follows:

|address | data   |
|--------|--------|
|  0x00  | green0 |
|  0x01  | red0   |
|  0x02  | blue0  |
|  0x03  | green1 |
|  0x04  | red1   |
|  0x05  | blue1  |
|  0x06  | green2 |
| ...    | ...    |
|  0x  | green |
|  0x  | red   |
|  0x  | blue  |

i2c uses external pullups and open collector outputs. In order to implement this the IOs were configured so that the input is handled as input by the verilog module. The out put is set to 0 and the i2c output of the verilog modules toggles between in- and output mode. Therefor listening to the i2c communication should work just fine with the IOs in input mode, where they have a high impedance. If something has to be sent (e.g. acknowledge) the IO is set to output a low value and pulls the i2c line to ground. Should there be any problems with this configuration the SDA and SCL lines are also present on the normal outputs.

## How to test

Connect an i2c-master to the chip and write values to the desired registers. The IC supports sequetial write by auti incrementing the register address if more than one byte is sent. The LED should update immediately.

## External hardware

Microntroller/computer (e.g. STM32, Arduino, Raspberry Pi, ...), ws2812b LED (strip, matrix, ...), external pullup resistors for i2c
