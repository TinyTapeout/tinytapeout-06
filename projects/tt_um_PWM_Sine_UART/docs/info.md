<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Through UART communication, a number from 1 to 7 is sent, indicating the frequencies set in the code, which are from 100 Hz to 700 Hz, then through a pin I generate a PWM signal which varies in time to generate a sine wave of the frequency that was requested.

## How to test

Only physical tests were carried out with the circuit, a Bluetooth antenna was added to the UART communication port, and a low pass filter was added to the output of the system to improve the signal a little and then it was measured with the oscilloscope and I verify that it delivers the requested frequencies.

## External hardware

-Bluetooth HC05.
-oscilloscope.
-A low pass filter.
