<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This is a simple Izhikevich model of a neuron. The Izhikevich model is a spiking neuron that is able to replicate the behavior of many different types of neurons. The model is described by the following equations:
    v' = 0.04v^2 + 5v + 140 - u + I
    u' = a(bv - u)
    if v >= 30 then v = c, u = u + d

The model has four parameters: a, b, c, and d. These parameters can be adjusted to replicate the behavior of different types of neurons. The model also has an input current I that can be used to stimulate the neuron. The model is implemented in the `izhikevich_neuron` module. The module has a `step` method that takes an input current and updates the state of the neuron. The module also has a `get_voltage` method that returns the current voltage of the neuron.

By 

## How to test



## External hardware

