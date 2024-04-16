<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

We all  know the hexagon is the bestagon. If the cells in your eyes that catch light are hexagonal, it doesn't make sense that all displays use a square grid. This has to end now. That is why the Bestagon LED matrix driver is born.

## How it works

This circuit can drive a charlieplexed hexagonal LED matrix. This matrix has columns with 3-4-5-4-3 pixels.

## How to test

- Connect the display shown under "External hardware" (or if you want to see if the circuit is functioning: connect a few LEDs between the display output pins randomly)
- Set the Display Enable pin low. 
- The Data pin is now sampled on each rising clock edge. The data shall be entered column wise, bottom to top, right to left (in the schematic below, "1" represents the first bit entered).
  The following data may make you smile: 1001010100001010100
- Now set the Display Enable pin high.
- Keep pulsing the clock pin (at least 100Hz is recommended)

## External hardware

Charlieplexed hexagonal display:

![Schematic with LED numbering](https://github.com/x3e/tt06-wokwi-template/blob/main/docs/schematic.png?raw=true)

(Maybe add some resistors depending on what LEDs you chose. I recommend blue LEDs because they look cool.
