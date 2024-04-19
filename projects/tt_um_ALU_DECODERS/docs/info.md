<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This is a pure combinational design.
This is a simple ALU (Arithmetic Logic Unit) whose output is connected to two different decorders, an Octal decoder for two 7 segments displays and an Gray decoder for the same two 7 segments displays. The output displays will show the result of the operations between two 3 bit numbers according to Sel_A_in and Sel_M_in.

The Sel_A_in has the following operations according to its value.
* Sel_A_in = 2'b00 , the ALU will be set in substraction. Num_A_in - Num_B_in.
* Sel_A_in = 2'b01 , the ALU will be set in Adition. Num_A_in + Num_B_in.
* Sel_A_in = 2'b10 , the ALU will be set in XOR. Num_A_in ^ Num_B_in.
* Sel_A_in = 2'b11 , the ALU will be set in AND. Num_A_in & Num_B_in.

The Sel_M_in has the following operations.
* Sel_M_in = 1'b0 , The output will be displayed in the octal system as the multiplexer selects the output of the Octal Decoder.
* Sel_M_in = 1'b1 , The output will be displayed in the Gray system as the multiplexer selects the output of the Gray Decoder.

Note: The Gray Decoder has been specially decoded to be shown in a decimal system for the 7 segments displays.

## How to test

In order to test this device, you will need to input the numbers to the pin where Num_A_in and Num_B_in are located, this values go from 0 =3'b000 up to 7 = 3'b111. From this point forward modify the correponding bits on the correspondent selectors based on list displayed in How it works and see the result on the 7 segment displays (External).

## External hardware

For external hardware you'll need:
. An external DC power source.
. 14 330 ohms resistors.
. 2 7 segments displays common cathode.
