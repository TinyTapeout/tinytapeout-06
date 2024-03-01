<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project involves reading a 4-bit ADC value through a dedicated interface. 
Another a 4-bit interface allows the user to set the desired target value. 
The integrated controller, designed with fixed parameters, regulates the fan speed 
through a PWM (Pulse Width Modulation) output operating at approximately 25 kHz. 
The controller maintains a minimum duty cycle of around 20%, and it has the capability 
to increase this value up to 100%. The output consists of a signed 4-bit controller value 
along with the corresponding PWM signal. Additionally, the current controller value can be read from 
the 7-Segment-Display. This configuration ensures precise control and adjustment of the 
fan speed based on the input parameters provided through the 4-bit interfaces, 
with the added feature of fixed controller parameters for simplicity and stability.

## How to test

After reset, the fan controller should initiate operation, adjusting the fan speed based on the setpoint and ADC value. 
The PWM output, set at approximately 25 kHz, regulates the fan speed.

## External hardware

4-Bit ADC, LED display, Fan
