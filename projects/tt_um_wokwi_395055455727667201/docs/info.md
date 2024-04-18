<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This pseudorandom number generator (PRNG) is compromised of scan flip-flops (SFF) and XOR gates. There are two PRNGs in this design, a PRNG with and without a hardware trojans

## How to test

Test by giving design a clock signal, and then set the PRNG by setting the scanin pins, and then toggle the scan enable pin. To reset turn off all the scanin pins and then leave the scan enable pin on for a few seconds.

## External hardware

Pattern generator and logic analyzer recommended.
