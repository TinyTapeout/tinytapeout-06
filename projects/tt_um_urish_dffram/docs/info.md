## How it works

It uses a 32x32 1RW [DFFRAM](https://github.com/AUCOHL/DFFRAM) macro to implement a 128 bytes (1 kilobit) RAM module.

Reseting the project **does not** reset the RAM contents.

## How to test

Set the `addr` pins to the desired address, and set the `in` pins to the desired value. 
Then, set the `wen` pin to `1` to write the value to the RAM, or set it to `0` to read 
the value from the RAM, and pulse `clk`.

The `out` pins will contain the value read from the RAM.
