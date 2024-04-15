<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

For some motor driver and BLDC motor combinations with encoders, the controller works universally through its I2C interface via PID control and Nichols-Ziegler auto-tuning algorithm for automated PID constants.
I2C Addressing:
Slave Address: 0x72
Subaddresses:
## How to test
Test when a motor setup is ready by simply communicating through I2C with SCL at about 100kHz. With the adressing above, one can automate PID control or take over (override) to manual settings. Generated PWM and desired motor period is also interfaced through I2C and fully configurable.
## External hardware

Motor Driver has to be used in order to convert digital pwm signals to power signals.

BLDC motor with positive and negative inputs & at least 2 encoders must be used to infer speed and direction.

Pullup resistors are needed to communicate through i2c, if not provided.
