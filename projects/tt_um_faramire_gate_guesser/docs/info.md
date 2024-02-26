<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The input and inout (used as inpputs) pins are connected to 8 different logic gates, which lead to the outputs. Only one logic layer of combinatoric logic.
Each input is hooked up to only one gate.

## How to test

No clock, enable or reset is used. As this is just one layer of combinatoric logic, you can simply check against a precalculated truth table. To play, flip the inputs and observe the output until you recognise what it must be.

## External hardware

Connect 16 switches to the input and inout pins, the 8 outputs are hooked up to one LED each (or other display hardware of your choice).

The solution is:

<details> 
  <summary> SPOILER </summary>
  
  out0 = in0 and in2
  
  out1 = not in1
  
  out2 = in5 and in7 and inA
  
  out3 = in6 xor inC
  
  out4 = in4 nand in9
  
  out5 = in8 xnor B
  
  out6 = inE nor inF
  
  out7 = in3 or inD
  
</details>

