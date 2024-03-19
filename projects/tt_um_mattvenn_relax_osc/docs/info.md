<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works


In electronics a [relaxation oscillator](https://en.wikipedia.org/wiki/Relaxation_oscillator) is a nonlinear electronic oscillator circuit that produces a nonsinusoidal repetitive output signal, such as a triangle wave or square wave.

The R&C have been chosen to make a ~2MHz signal.
An inverter after the oscillator makes a full swing square wave.

## How to test

Measure the oscillator out on pin 0 (tbc, might cause issues due to the analog mux parasitics). Measure the square wave out on digital output pin 0.

