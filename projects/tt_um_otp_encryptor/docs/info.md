<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

8 bit data inputs come through ui_in in the form of either plaintext or ciphertext. Bit 0 of uio_in is used to determine whether the chip will perform encryption or decryption. When it is high, decryption will be performed. When it is low, decryption will be performed. However, the enable signal must be high in both cases for either encryption or decryption to be performed. In the case of encryption, the chip will take an 8 bit value from an internal pseudorandom number generator to use as a one time pad. To create the ciphertext, the chip will xor the bits of the one time pad with their relative bits in the plaintext to create ciphertext. In order to later recover the plaintext, the one time pad is stored in an internal register file, and the index of the register of which the pad is stored in is outputed to bits 6 through 4 of uio_out. There are 8 registers in the register file (0-7). To decrypt ciphertext, the decrypt signal must be high (bit 0 of uio_in) and the index that the associated one time pad is stored in must be inputted to uio_in bits 3 through 1. Then, the one time pad will be recovered from the indexed register, the pad will be xored with the ciphertext, and the plaintext will be produced as output.

## How to test

Testing can be performed by ensuring that inputted plaintext can be recovered by taking the encrypted output and register index and feeding it into the system.

## External hardware

External hardware with basic memory, wiring, and data displaying functionality should be suitable to test this chip. Verilog testing was performed by using one external register for data output, one external register for index output, and a means to read the data from the registers. Basic binary instrumentation may be needed if direct access to wires is not possible in order to shift the register index from the output bits of 6 through 4 to the input bits of 3 through 1.
