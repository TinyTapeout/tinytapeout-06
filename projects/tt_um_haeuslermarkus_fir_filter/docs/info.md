<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The FIR FILTER ADAPT is a project that performs a FIR Filter behaviour. 

The Input of the filter is provided by the xxx input pins. These represent an signed integer. The Chip performs than a multiplikation with the filter-tap values and adds them up. 
The Filter needs as many clock cycles as taps to calculate the Filter output. After that the filtered signal is set to the output by using the output pins. 

To optimize calculation and memory requirements, the symmetric step response property of a FIR Filter is used. That means only one half of the step response is stored and to calculate the whole filter characteristic, the first half of the step response is flipped. 

In addition to the basic FIR Filter functionality, it is also possible to adapt the filter coefficients by enabling the configuration bit, then the input pins are interpreted as tap value and are shifted into the FIR tap memory

## How to test

To test the functionality of an FIR Filter, the easiest way is to perform an dirac impuls. This results in an ouput that is exactly the tap value configuration. If these values differ an problem occures. 

## External hardware

This can be done by any microcontroller or if one is interested in the functionlity of an FIR Filter by using buttons as input and leds as output. 
But i recommend using at least an arduino microcontroller cause timing and reproducibility is much more easily using automated testing.
