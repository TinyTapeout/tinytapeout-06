<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is an AudioChip that outputs two Audiosignals as PWM. It can be used as a audio generating device for electronic instruments, namely modular synthesizers. It is planned to build a Eurorack module for a modular synthesizer around this mikrochip. The inputs and outputs are designed to fit into the concept of such instruments. The source code of AudioChip is written in spinalHDL and generates verilog. The SpinalHDL source resides in this repository: Add link here.

## How to test

Attach a lowpass filters to the PWM outputs and you get analog audio signal waveforms. The inputs alter the waveforms.

## External hardware

Lowpass filters for the PWM outputs.
