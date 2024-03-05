<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Decodes PWM-Signal from RC Receiver with counter and threshold values to decide wether to set the output to HIGH or LOW.

## How to test

The program can be tested by applying a PWM-Signal to the input with a longer pulse time than 1.9ms, then the output will go to HIGH. If then you apply a PWM-Signal with a pulse time lower than 1.1 the output will go to LOW.

Additionally the 7-Segment-Display will always show how many outputs are currently active (HIGH).
