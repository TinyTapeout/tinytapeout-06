<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The design of the chip allows playing a simplified version of Flappy Bird on an 8x8 LED matrix. For peripheral hardware, only two buttons for controlling the bird's position and an 8x8 LED matrix are required. After successful software testing using Waveform, the design was synthesized in a Github repository. Following successful Waveform testing, the circuit was verified for functionality using an FPGA chip.

The 8-bit outputs act as the "High" signals for the LED matrix, while another set of 8-bit outputs serve as the "LOW" signals, forming a grid pattern conceptually. 
This setup enables individual LEDs to be lit up through precise control of one row and one colomn. 
Ensuring correct installation of the LED matrix and using appropriately sized resistors for protection is essential.

## How to test

To test this version use waveform tests or an oscilloscop.

## External hardware

two buttons and a 8x8 Led Matrix
https://de.aliexpress.com/item/32857281704.html?gatewayAdapt=glo2deu
