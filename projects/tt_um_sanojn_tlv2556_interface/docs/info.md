<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is an interface that allows a TI TLV2556 ADC to be controlled via a UART. The ADC settings are static. The UART interface allows prompting a conversion and will receive the measured value as human readable values. 

## How to test

Requires a 48 MHz clock.

Connect a TLV2556 and a UART to the appropriate pins. Note that the CTS and RTS pins have opposite polarity as they're intended to be connected directly to a CH340 UART-over-USB chip.

Connect with a terminal emulator set to 230400 Baud, 8N1.

Send a single hexadecimal character from 0 to B over the serial port. The digit represents the channel you wish to convert. The design will cause the tlv2556 to do a conversion, read out the measured value and send it back in human readable form over the serial port.

Type CR or LF to enter "continuous mode". The design will loop through all channels, converting each in turn, and print a page worth of measured values to the serial port.

