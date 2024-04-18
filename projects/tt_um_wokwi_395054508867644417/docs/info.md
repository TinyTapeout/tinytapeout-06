<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

If OE == 0 then Y[0:1], YP, Z[0:1] and ZP are in a high-z state.

Output Y[0:1] = (SEL == 0) ? A[0:1] : B[0:1]
Output Z[0:1] = (SEL == 0) ? ~A[0:1] : ~B[0:1]

Output YP and ZP are the parity of Y and Z respectively.

POPCNT_Y[0:1] and POPCNT_Z[0:1] are the population count of {Y[0:1],YP} and {Z[0:1],ZP} respectively.
These pins are never in high-z state.
