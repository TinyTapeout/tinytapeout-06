<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# Sky130 FET OpAmp

This is the implementation of a simple Operational Amplifier (OpAmp) buit with FET from the Sky130 PDK. The design is based on [Diego's and Julia's design from Fulgor Foundation](https://github.com/diegohernando/caravel_fulgor_opamp/tree/master/xschem).

## How it works

Basically works as an OpAmp, that is, a high-impedance high-gain on open-loop amplifier block, without feedback loop acts as a comparator, with feedback loop may work as inverting and non-inverting amplifier with gain setteable with feedback network as with any OpAmp like LM317, not too much more to add here.

## Internal schematics

The following is a capture of Xschem of the internals of OpAmp:

![OpAmp schematics](/docs/img/xschem.png "OpAmp schematics")

### A note on the R1/R2 network:

This is to generate a virtual ground and provide a negative voltage as VDD. In TinyTapeout 6 the only available power is 1.8 VDC referenced to a ground, for the OpAmp we considered convenient to have a negative voltage, so we implemented this network in a way that the external signal ground (ZREF) be the reference ground and the actual power ground became a -0.9 Volts point from the OpAmp point of view.

## Magic Layout

Next we show a view of the Layout created in Magic for the OpAmp cell only:

![Magic layout](/docs/img/magic.png "Magic layout")

The OpAmp cell integrated with TinyTapeout top cell shows less detail and is shown as reference:

![Magic layout](/docs/img/magictop.png "Magic layout")

## How to test

Two testbenches are included for the OpAmp: a [Non-Inverting amplifier](../xschem/opamp_tb.sch) and an [Inverting amplifier](../xschem/opamp_inv_tb.sch) 

To test the Operational Amplifier any of those circuits, that are very easy to setup, can be utilized and check the corresponding output gains.

/!\ Beware that the input signal ground (Vin) must not be connected to the same ground as Chip power, it must be connected to ZREF pin. /!\
/!\ Observe that output signal will have a DC offset due to the use of a virtual ground inside the OpAmp. /!\

## External hardware

Power source, resistors, signal generator, oscilloscope.

