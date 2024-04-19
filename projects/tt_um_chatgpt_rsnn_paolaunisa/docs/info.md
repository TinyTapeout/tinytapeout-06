<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements 9 programmable digital recurrent LIF neurons. The neurons are arranged in 3 layers (3 in each). Spikes_in directly maps to the inputs of the first layer neurons. When an input spike is received, it is first multiplied by an 8 bit weight, programmable from a custom interface, 1 per input neuron. This 8 bit value is then added to the membrane potential of the respective neuron. 
When the first layer neurons activate, its pulse is routed to each of the 3 neurons in the next layer.
There are 9x3 programmable weights describing the connectivity between the input spikes and the first layer (9 weights=3x3), the first and second layers (9 weights=3x3), and second and third layers (9 weights=3x3).
Output spikes from the 3nd layer drive spikes_out. 


## How to test

After reset, program the neuron threshold, leak rate, feedback_scale and refractory period.
Additionally program the first, 2nd, 3rd layer weights. Once programmed activate spikes_in to represent input data, track spikes_out synchronously (1 clock cycle pulses). 


## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any

## Memory

The memory block stores 39 words of 8 bits. 
The first 12 words represent Feedback scale, Refractory Period, Decay rate, Membrane Threshold of each layer ( 4 parameters x 3 layers ).
The last 27 words represent the network weights ( 3 ins x 3 neurons x 3 layers ).


| Address |  Address   | Data Index |  Data Index   | Data Description            | Data Description       |
|---------|-----|--------------|-----|--------------------|-------|
| dec     | hex | MSB          | LSB | Description        | LYR # |
| 0       | 0   | 7            | 0   | Feedback scale     | 1     |
| 1       | 1   | 15           | 8   | Refractory Period  | 1     |
| 2       | 2   | 23           | 16  | Decay rate         | 1     |
| 3       | 3   | 31           | 24  | Membrane Threshold | 1     |
| 4       | 4   | 39           | 32  | Feedback scale     | 2     |
| 5       | 5   | 47           | 40  | Refractory Period  | 2     |
| 6       | 6   | 55           | 48  | Decay rate         | 2     |
| 7       | 7   | 63           | 56  | Membrane Threshold | 2     |
| 8       | 8   | 71           | 64  | Feedback scale     | 3     |
| 9       | 9   | 79           | 72  | Refractory Period  | 3     |
| 10      | A   | 87           | 80  | Decay rate         | 3     |
| 11      | B   | 95           | 88  | Membrane Threshold | 3     |
| 12      | C   | 103          | 96  | weight1_0          | 3     |
| 13      | D   | 111          | 104 | weight1_1          | 3     |
| 14      | E   | 119          | 112 | weight1_2          | 3     |
| 15      | F   | 127          | 120 | weight2_0          | 3     |
| 16      | 10  | 135          | 128 | weight2_1          | 3     |
| 17      | 11  | 143          | 136 | weight2_2          | 3     |
| 18      | 12  | 151          | 144 | weight3_0          | 3     |
| 19      | 13  | 159          | 152 | weight3_1          | 3     |
| 20      | 14  | 167          | 160 | weight3_2          | 3     |
| 21      | 15  | 175          | 168 | weight1_0          | 2     |
| 22      | 16  | 183          | 176 | weight1_1          | 2     |
| 23      | 17  | 191          | 184 | weight1_2          | 2     |
| 24      | 18  | 199          | 192 | weight2_0          | 2     |
| 25      | 19  | 207          | 200 | weight2_1          | 2     |
| 26      | 1A  | 215          | 208 | weight2_2          | 2     |
| 27      | 1B  | 223          | 216 | weight3_0          | 2     |
| 28      | 1C  | 231          | 224 | weight3_1          | 2     |
| 29      | 1D  | 239          | 232 | weight3_2          | 2     |
| 30      | 1E  | 247          | 240 | weight1_0          | 1     |
| 31      | 1F  | 255          | 248 | weight1_1          | 1     |
| 32      | 20  | 263          | 256 | weight1_2          | 1     |
| 33      | 21  | 271          | 264 | weight2_0          | 1     |
| 34      | 22  | 279          | 272 | weight2_1          | 1     |
| 35      | 23  | 287          | 280 | weight2_2          | 1     |
| 36      | 24  | 295          | 288 | weight3_0          | 1     |
| 37      | 25  | 303          | 296 | weight3_1          | 1     |
| 38      | 26  | 311          | 304 | weight3_2          | 1     |




## ChatGPT Transcripts:
* [TT6 - LIF Neuron](https://chat.openai.com/share/535c4a0c-c86d-4ba0-9a4f-99c0c1838d9a)
* [TT6 - LIF Neuron: overflow managing](https://chat.openai.com/share/b7ca6901-2c3b-4495-9e66-dd03410796d1)
* [TT6- LIF Neuron Test Bench](https://chat.openai.com/share/29ee34bb-a055-46f7-b410-eb5cb0ce6a53)
* [TT6 - RLIF Neuron](https://chat.openai.com/share/5e4851a5-1daf-4a8d-a139-cc3902eaedbe)
* [TT6 - RLIF Neuron Test bench](https://chat.openai.com/share/b06b4c8d-7c92-47de-810e-a645104e8219)
* [TT6-RLIF Layer](https://chat.openai.com/share/c9a540f7-5859-4f9d-8a51-1253a600b270)
* [TT6-RLIF Layer overflow managing](https://chat.openai.com/share/186d94ee-5bfe-4725-9e9f-a8b75aad12ca)
* [TT6-RLIF Layer Test Bench](https://chat.openai.com/share/66083653-98e3-4205-9dbc-be5cedb4a1d7)
* [TT-6 RSNN](https://chat.openai.com/share/dfd4aaf6-5d49-4ce6-8764-137a28d0ff33)
* [TT-6 RSNN Test Bench]( https://chat.openai.com/share/47821133-237d-49f5-a831-5e6392c57680)
* [TT-6 FIPO Memory]( https://chat.openai.com/share/89e4db9c-d54d-4df5-9114-fc9aec4bec26)
* [TT-6 FIFO Memory Test bench]( https://chat.openai.com/share/3ab57958-6f31-41c1-a924-d0eb99a4688d)
* [TT-6 RegN]( https://chat.openai.com/share/b2ebcf19-ea47-48c7-93d4-53bb519ef158)
* [TT-6 Control Memory]( https://chat.openai.com/share/827e75b4-09f1-4793-bec0-5460367164c0)
* [TT-6 Control Memory Test bench]( https://chat.openai.com/share/91674715-2c69-41c5-a647-fafee0bc78bf)
* [TT-6 Top Module]( https://chat.openai.com/share/d7273ad8-a6e3-449f-9e97-9a1521b1320a)
* [TT-6 Top Module Test Bench]( https://chat.openai.com/share/a5e2df3d-87dd-41ea-af40-e716a6e3c370)




