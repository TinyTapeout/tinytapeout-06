<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The operation is quite simple; when entering a 4-bit binary number, this number is shown at the output on a 7-segment common anode display in hexadecimal. The input "h" is a 4-bit vector, and the output "S" is a 7-bit vector. For the output "S", the most significant bit corresponds to segment "a", and so on, until the least significant bit, which corresponds to segment "g", as shown in figure 1. Since the display is anode common, to indicate that a segment is on, it is indicated with a "0".

![display](https://github.com/vicmcantes/decodificador-binario-a-7-segmentos-hexadecimal/assets/165434004/2a957009-3e5c-467f-bb9b-59fced5c5660)

In the simulation shown in Figure 2, we can see that given a binary number that we introduce at the input, an output combination corresponds to the value to be shown on the 7-segment display in hexadecimal form, that is, given The binary number at the input corresponds to a 7-bit binary number, which is actually a pattern to light each segment of the 7-segment display, which obviously corresponds to the input number to be displayed.

![Simu](https://github.com/vicmcantes/decodificador-binario-a-7-segmentos-hexadecimal/assets/165434004/149fd13c-fc7e-4d7d-ad5e-c58ad6342ed7)

According to Figure 3, the connections of the proposed circuit to those of the project in general are detailed below.
1. For the input, which is a 4-bit vector "h", the overall project pins connected to the proposed circuit are as follows:
   
  in[0]: "h[0]" //Bit 0
  
  in[1]: "h[1]" //Bit 1
  
  in[2]: "h[2]" //Bit 2
  
  in[3]: "h[3]" //Bit 3
  
  in[4]: "no use"
  
  in[5]: "no use"
  
  in[6]: "no use"
  
  in[7]: "no use"

2. For the output, which is a 7-bit vector "S", the overall project pins connected to the proposed circuit are as follows:

  out[0]: "S[0]" //Segmento g
  
  out[1]: "S[1]" //Segmento f
  
  out[2]: "S[2]" //Segmento e
  
  out[3]: "S[3]" //Segmento d
  
  out[4]: "S[4]" //Segmento c
  
  out[5]: "S[5]" //Segmento b
  
  out[6]: "S[6]" //Segmento a
  
  out[7]: "no use"

The signals, both input and output, are logic highs and lows, that is, usually 5 volts to define a logic "1", and 0 volts for a logic "0". Let us remember that in the case of the output, an inverse logic is applied to the output since it is a common anode display, but in essence they are logical "1" and "0".

![latin2](https://github.com/vicmcantes/decodificador-binario-a-7-segmentos-hexadecimal/assets/165434004/99a0adce-a2cd-41c7-8f24-7b161d8f71af)


## How to test

To check the operation, a 4-position dip switch is connected to the input, connected to a suitable power supply for the system, with its respective precautions (resistances), according to the number that you want to show on the display, for which appropriately connect each switch to the corresponding bit it represents. For the output, it is convenient to connect a 7-segment display (common anode) to corroborate its operation, according to the pins that correspond to each segment, mentioned in the previous section.

## External hardware

A 4-position DIP Switch for the input, which will serve to form the 4-bit binary number, along with its proper power supply, and a 7-segment display (common anode), to visualize its operation, connected with due precautions to avoid damage. Added to all this is a breadboard to place these components.

![SWI-18-3](https://github.com/vicmcantes/decodificador-binario-a-7-segmentos-hexadecimal/assets/165434004/8f7e9bb3-00ba-4079-8a8b-cec0ac8dd407)

![AR1112-KPS1203D-Fuente-de-Alimentacion-120V-3A-V8](https://github.com/vicmcantes/decodificador-binario-a-7-segmentos-hexadecimal/assets/165434004/fbd71bf7-a1f9-430b-b7fa-0b36cef450b8)

![Displaysa](https://github.com/vicmcantes/decodificador-binario-a-7-segmentos-hexadecimal/assets/165434004/d4a507b2-7fe7-4070-b70c-3ea46773daba)

![image](https://github.com/vicmcantes/decodificador-binario-a-7-segmentos-hexadecimal/assets/165434004/bbcf537b-4248-403d-90aa-4d02150d95c4)

