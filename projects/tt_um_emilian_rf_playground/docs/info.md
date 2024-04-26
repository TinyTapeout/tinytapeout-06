## How it works

IDAC8 is a Digital to Analog conversion based on string of basic cells dividing the current by two repeatedly and optionally sourcing some current into the output pin.

idac1cell takes the following ports:
- VREF_IN - bias voltage for a 4/1 W/L transistor resulting in an InputCurrent
- OE - controls whether the output is enabled.
- IOUT - source current of InputCurrent/2 into here.
- VDD / VSS - power supply 1.8V
- VREF_OUT - output bias voltage for a 4/1 W/L transistor that results in INputCurrent/2.

The circuit uses current mirrors and identical transistors to divide the current by two. See tb_idac1cell.sch and SVG output for sample outputs and the schematic inside the xschem directory.

8 cells of idac1cell are chained together into one IDAC8. Essentially the OE pins correspond to
digital inputs and the IOUT

## How to test

- UI[7..0] are the digital inputs for currents of I, I/2, I/4, ...

- UA0 is the voltage output for the I/256 current (can be ignored.. only present for chaining or testing).

- UA1 is the current output (can hold a ~10K resistor to ground).

- UA2 is the voltage input (around 0.7V) corresponding to the high bit current.

Set UI to 0b10000000 and adjust UA0 so that the current through UA1 to the resistor is around 0.1mA. Then you can modify UI and observe the output changing into UA1 according to the 8 bit DAC output.

## External hardware

- Multimeter on the UA1 10K resistor to ground.
- Potentiometer for setting UA0 bias voltage.
- set UI inputs via switches.
