<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works 
If you apply a Servo Signal it will be processed via Flip-Flops so that the Servo Signal controls the Pin's on the Output. 
If the Servo Pulse is 1ms (0 degree) no LED will light up and if the Servo Pulse is 2ms (180 degrees) all the LED's will light up.

## How to test
Add 8 LED's to the Output's and connect a Servo Signal to Input 0

## External hardware
8 LED's and resistors. (If your LED's need more Output Power then the Chip can provide, use a driver)
Maybe the resistors can have a low value, because the LED's are only ON when the Servo Signal is HIGH. So the maximum is 20% duty cicle.

## How to use
Add 8 LED's to the Output's and connect a Servo Signal to Input 0
