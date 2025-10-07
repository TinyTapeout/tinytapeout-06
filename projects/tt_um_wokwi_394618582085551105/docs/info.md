## How it works

The keypad rows are scanned one by one, and their state is
stored into a local 16-bit register. Each bit in the register
corresponds to one key on the keypad.

The output of the 16-bit register is then converted to the 
7-segment display with some simple combinatorial logic.

There are no debouncing, latching or some other advanced
features.

![Block Diagram](images/1.png)

## How to test

Connect a keypad (take a look at the pinout table below),
reset the hardware, and start pressing the keypad keys.
The corresponding numbers, and characters, should be shown
on the 7-segment display.

## External hardware

Keypad matrix 4x4. For example:

![Keypad matrix 4x4](images/2.png){width=40%}
