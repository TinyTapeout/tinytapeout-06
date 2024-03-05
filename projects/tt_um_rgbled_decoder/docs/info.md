<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

When nCS is pulled low, each clock pulse on SCLK shifts a bit from MOSI into an internal register.
The internal register length is 240 bits long (10 LEDs with 3 colors and 8 bit per color).
The contents of this register are then used to generate output pulses. 
The output pulses encode bits of the color data. They are 1.25us in length. A pulse representing a 1 
has a high-time of 800ns and an low-time of 450ns. A pulse representing a 0 has a high-time of 400ns 
and a low-time of 850ns. 
Each LED consumes 24 bits. Subsequent bits are transmitted to LEDs further on the chain.
When a full transmission (Every LED has received its 24 bits of color data) has occured, a reset occurs 
(output goes low for >= 50 us).

## How to test

Connect the LED_DATA pin to the DIN pin of a string of WS2812B LEDs. Use a microcontroller to shift in 
color data via the SPI Interface. 

## External hardware

Any SPI Master (RPi, Arduino, MCU, etc.), and a String of 10 WS2812B LEDs.