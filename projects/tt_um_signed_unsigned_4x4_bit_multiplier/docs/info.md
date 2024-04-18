<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The combinational multiplier takes as input a 4-bit multiplicand and a 4-bit multiplier and produces as output an 8-bit product.
The numbers may all be either unsigned or signed integers as controlled by the signed_mode input. All 4+4+8+1 signals are active high.

The multiplier in unsigned mode uses an array of 4 x 4 cells that each consists of a full adder and an AND-gate (NAND-gate for a few cells in signed mode).
The columns and rows of the array distribute the bits of the multiplicand and multiplier, respectively, to the two inputs of the AND-gate of each cell.
The partial sums are fed from cell to cell diagonally (from upper left to lower right), while the carries are fed from cell to cell vertically.
The sum that emanate at the right edge of the array constitute the lower half of the product, while the sum and carries at the lower edge of the array
proceed to a ripple carry adder (with a carry-in of 0) that produces the upper part of the product.

For signed multiplication the multiplier above is modified by employing the Modified Baugh-Wooley multiplication algoritm, which avoids sign-extension
of the multiplicand by flipping product bits in MSB positions of both operands (cancel out for cell that combine MSBs of both operands) with NAND-gates,
and adding ones at the least and most significant bit positions of the final ripple-carry adder.

For a more detailed explanation of the Modified Baugh-Wooley algoritm see the book
Computer Arithmetic, Algoritms and Hardware Designs by Behrooz Parhami, Oxford University Press, 2000, or the original article by
C. R. Baugh and B. A. Wooley, A Two's Complement Parallel Array Multiplication Algoritm, IEEE Trans. Computers, Vol 22, pp. 1045-1047, December 1973.

## How to test

The multiplier may be tested using a TinyTapeout demoboard with various combinations of multiplicand and multipliers using the input switches and
checking the expected product with the 7-segment LED display (with decimal point).

## External hardware

None beyound the TinyTapeout demoboard.
