<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a an implementation of a classic systolic array multiplier with uart interface. 

This implimention can multiply 2x2 matrix by another 2x2 matrix. The calculations are done in float16.

## How to test

Your "How to Test" section outlines a clear testing protocol for your systolic array multiplier with a UART interface, designed to multiply 2x2 matrices using float16 representations. To make it more structured and clear, I've refined your instructions below:

---

## How to Test

1. **Initialization Sequence**: Begin by sending the initialization sequence `11111110` to the device. This sequence prepares the device to start receiving data for matrix multiplication.

2. **Sending Matrix Data**:
    - You will need to send the elements of the two matrices you wish to multiply. Each matrix element is a float16 number, which must be transmitted as two separate 8-bit frames (high byte first).
    - Since you are multiplying 2x2 matrices, you must send a total of 8 float16 numbers, equating to 16 data frames of 8 bits each.
    - For clarity, send the matrix elements in row-major order. For example, if your matrices are A and B, with elements `a11, a12, a21, a22` for A and similarly for B, send them in the order `a11, a12, a21, a22, b11, b12, b21, b22`.

3. **Receiving the Result**:
    - Upon completion of the data processing, the device will first send back an acknowledgment sequence `11111110`, indicating that the multiplication process is complete and the device is about to send the result.
    - Following this, expect to receive the result of the matrix multiplication in a similar format to the input. The device will send 4 float16 numbers (representing the resulting matrix elements) as 8-bit frames (high byte first), which you will need to interpret accordingly.

4. **Interpreting the Results**:
    - Collect the 8-bit frames received from the device and reconstruct them into float16 numbers to obtain the resulting matrix elements.
    - These elements represent the resultant matrix from the multiplication of the two input matrices.

## External hardware

No external hardware is used for this project. 