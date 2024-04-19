<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project consists of a state machine with 4 outputs, which is used to control a bipolar stepper motor.

## How to test

The system has an external clock input, a reset input, a control input for selecting the direction of rotation of the motor, an enable input and 4 outputs for the stepper motor coils.

## External hardware

The system requires an external clock input to control the speed of the pulses and thus regulate the rotation speed of the motor.
