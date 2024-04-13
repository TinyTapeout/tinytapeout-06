## How it works

The keypad rows are scanned one by one, and their state is
stored into a local 16-bit register. Each bit in this register
corresponds to one key on the keypad.

The output of the 16-bit register is then converted to the 
7-segment display with some simple combinatorial logic.

There are no debouncing, latching or some other advanced
features.

## How to test

Connect a keypad, reset, and start pressing the keypad keys.
Corresponding numbers, and character should be shown on the 
7-segment display.

## External hardware

Keypad matrix 4x4
