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




