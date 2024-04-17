## How it works

A resistor ladder between power and ground is used to generate 15 reference
voltages at regular intervals. The input signal is compared with each of them
in turn to get a unary ADC output. To avoid loading the input too much, some
voltage followers are added before the comparators. Finally, a digital encoder
circuit with error correction converts the unary output to binary using a tree
of majority gates and multiplexers. The digital circuit also implements some
debugging logic.

## How to test

For basic operation, set the first two digital inputs to 0 and apply a voltage
between 0 and 1.8 V to the analog input pin. The first four output pins should
give a binary readout.

The second set of four output pins samples the unary output at bits 1, 5, 9 and
13 to indicate if the input voltage is over the reference voltages
0.18 V, 0.66 V, 1.14 V and 1.62 V respectively.

Bidirectional pins are configured as outputs where the first four is an XOR of
some unary pins and the second four multiplexes unary pins using input pins 2
and 3 as a selector. Both features allow checking when the input signal crosses
one of the intermediate reference thresholds.

|      Input range |           Unary | Binary | Sample |  XOR | Mux00 | Mux01 | Mux10 | Mux11 |
| ---------------- | --------------- | ------ | ------ | ---- | ----- | ----- | ----- | ----- |
| 0    V to 0.06 V | 000000000000000 |   0000 |   0000 | 0000 |  0000 |  0000 |  0000 |  0000 |
| 0.06 V to 0.18 V | 000000000000001 |   0001 |   0000 | 0001 |  0001 |  0000 |  0000 |  0000 |
| 0.18 V to 0.3  V | 000000000000011 |   0010 |   0001 | 0011 |  0011 |  0000 |  0000 |  0000 |
| 0.3  V to 0.42 V | 000000000000111 |   0011 |   0001 | 0111 |  0111 |  0000 |  0000 |  0000 |
| 0.42 V to 0.54 V | 000000000001111 |   0100 |   0001 | 1111 |  1111 |  0000 |  0000 |  0000 |
| 0.54 V to 0.66 V | 000000000011111 |   0101 |   0001 | 1110 |  1111 |  0001 |  0000 |  0000 |
| 0.66 V to 0.78 V | 000000000111111 |   0110 |   0011 | 1100 |  1111 |  0011 |  0000 |  0000 |
| 0.78 V to 0.9  V | 000000001111111 |   0111 |   0011 | 1000 |  1111 |  0111 |  0000 |  0000 |
| 0.9  V to 1.02 V | 000000011111111 |   1000 |   0011 | 0000 |  1111 |  1111 |  0000 |  0000 |
| 1.02 V to 1.14 V | 000000111111111 |   1001 |   0011 | 0001 |  1111 |  1111 |  0001 |  0000 |
| 1.14 V to 1.26 V | 000001111111111 |   1010 |   0111 | 0011 |  1111 |  1111 |  0011 |  0000 |
| 1.26 V to 1.38 V | 000011111111111 |   1011 |   0111 | 0111 |  1111 |  1111 |  0111 |  0000 |
| 1.38 V to 1.5  V | 000111111111111 |   1100 |   0111 | 1111 |  1111 |  1111 |  1111 |  0000 |
| 1.5  V to 1.62 V | 001111111111111 |   1101 |   0111 | 1110 |  1111 |  1111 |  1111 |  0001 |
| 1.62 V to 1.74 V | 011111111111111 |   1110 |   1111 | 1100 |  1111 |  1111 |  1111 |  0011 |
| 1.74 V to 1.8  V | 111111111111111 |   1111 |   1111 | 1000 |  1111 |  1111 |  1111 |  0111 |

The circuit also provides debug functionality to independently check the ADC
and the encoder.

If the first input pin is set to 1, the circuit is in _encoder debug mode_
where the rest of the input pins as well as the bidirectional pins (which are
now turned into inputs) are used instead of the ADC.  The output pins function
as described above, the bidirectional pins obviously cannot provide output in
this case.

Otherwise, if the second input pin is set to 1, the circuit is in _ADC debug
mode_ where the raw unary output from the ADC is directly sent to the output
and bidirectional pins.

## External hardware

You can use your favourite microcontroller to generate an analog input by
outputting a PWM signal and adding an external capacitor to ground that
together with the microcontroller's built-in resistance makes a simple low-pass
RC filter.
