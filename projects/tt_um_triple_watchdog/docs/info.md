<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The circuit is composed of three watchdog modules working in lockstep. They share a common clock, a common reset line (active low) and a common 8-bit input word. An external system must write a value in ui_in in order to kick the watchdog, and the value must be different than the previous one each time. The timeout is fixed and set in 1ms. Once the timeout happens, the WD module goes to IDLE mode until a reset is issued and each internal watchdog will set an output pin high.

### Pinout

| Pin               | Direction | Comment                                            |
|-------------------|-----------|----------------------------------------------------|
| clk               | input     |                                                    |
| rst_n             | reset     | Active low                                         |
| ui_in[8]          | input     | System must write a new value to kick the watchdog |
| watchdog_expired1 | output    | 1: wd has expired; 0: wd has not expired           |
| watchdog_expired2 | output    | 1: wd has expired; 0: wd has not expired           |
| watchdog_expired3 | output    | 1: wd has expired; 0: wd has not expired           |

## How to test

- Provide a 10ns period clock in its clk input
- Set rst_n to low
- Write a value in ui_in before 1ms after reset is released
- Write a different value in ui_in to prevent the watchdog expiring

## External hardware

None
