<!---

Rule 30 Engine!
-->

## How it works

This project is designed to run the Rule 30 cellular automata with initial starting value defined on the input bus.  Each iteration is output to the UART, which is operating as an 8N1 UART at 115,200 baud.

The Rule 30 field is 56 bits wide with a boundary condition of 0 surrounding these 56 bits.

## How to build

The Rule 30 driver and logic are written in Bluespec. Install the Bluespec compiler to compile these sources into Verilog.  The generated Verilog is also included in this repo as well in case you don't have the Bluespec compiler.

The Bluespec compiler can be found here: https://github.com/B-Lang-org/bsc.

Several Bluespec generated Verilog files need to be copied from the Bluespec library directory:

```
Counter.v
FIFO1.v
SizedFIFO.v
```

To compile the Bluespec, do the following:
```
cd src
make verilog
```

At this point all necessary Verilog files have been created.

## External hardware

The initial condition used for the Rule 30 iteration is defined on the input bus.  The output in `uo_out[4]` is used as the TX side of the UART.
