<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The FIR FILTER ADAPT is a project that performs a FIR Filter behaviour. 

The Input of the filter is provided by the 8 input pins. These represent an signed integer. The Chip performs than a multiplikation with the filter-tap values and adds them up. 
The Filter needs as many clock cycles as taps to calculate the Filter output. After that the filtered signal is set to the output by using the output pins. 

To optimize calculation and memory requirements, the symmetric step response property of a FIR Filter is used. That means only one half of the step response is stored and to calculate the whole filter characteristic, the first half of the step response is flipped. 

In addition to the basic FIR Filter functionality, it is also possible to adapt the filter coefficients by enabling the configuration bit, then the input pins are interpreted as tap value and are shifted into the FIR tap memory

## How to test

The Testbench consists of three testcases which can be compared to a real life measurement to ensure correct functionality. 
These Tests are:
- Impulse Response with the Initial FIR Coefficents.
- Configuration of new Filter Coefficients and testing them by performing another impulse response.
- Perfoming a step response with the new filter coefficients. 

For more detailed information check out the test.py file.

## External hardware

This can be done by any microcontroller or if one is interested in the functionlity of an FIR Filter, even using buttons as input and leds as output is sufficent. 
But i recommend using at least an arduino microcontroller because timing and reproducibility is much more easily using automated testing. Have fun!
