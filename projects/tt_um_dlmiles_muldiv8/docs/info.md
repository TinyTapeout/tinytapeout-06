<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## Background

Combinational multiply / divider unit (8bit+8bit input)

This is an updated version of the original project that was submitted and
manufactured in TT04 https://github.com/dlmiles/tt04-muldiv4.  The previous
project was hand crafted in Logisim-Evolution then exported as verilog and
integrated into a TT04 project.

This version is the same design, extended to 8-bit wide inputs, but instead
of hand crafting the logic gates in a GUI we convert functional blocks into
SpinalHDL language constructs.  Part of the purpose of this design is to
understand the area and timing changes introduced by adding more bits, then
to explore alternative topologies.

The goal of the next iteration of this design maybe to introduce a FMA
(Fused Multiply Add/Accumulate) function and ALU function to explore if
there is some useful composition of these functions (that might be useful
in an 8bit CPU/MCU design, or scale to something bigger).  The next
iteration on from this could explore how to draw the transistors directly
(instead of using standard cell library) for such an arrangement, this may
result in non-rectangular cells that interlock to improve both area density
and timing performance.  Or it might go up in smoke... who knows.

# How It Works

Due to the limited total IOs available at the external TT interface it is
necessary to clock the project and setup UI_IN[0] to load each of the 2
8-bit input registers.

The data is latched at the CLK NEGEDGE and the value provided to the
combinational logic MUL/DIV operations (which are seperate logic modules)
with the answer becoming immediately available (after propagation and
ripple settling time) at the outputs.

The result output is also multiplexed and has an immediate and register
mode.  The immediate mode provides a direct visibility of the MUL/DIV
combintational timing between input and outputs (you need to account for
address multiplex of high-low 8bit sides of result).  The registered mode
capture the result in full so that it is possible to pipeline interleave
request and result information to achieve higher throughput.

So one half of the answer is immediately available to read and the other
half of the answer can be read by toggling UI_IN[0] (address bit0).
Clocking is needed for registered output mode, but not necessarily for
immediate mode.

// FIXME please check out the original githun for any enahcnaed
// documentation for this project, potentially improved information
// nearer PCB+IC delivery (to customer) schedule but also post-production
// post-physically testing results and information.
// I hope to produce some kind graphs showing the timing capture and
// reliability to show and demonstrate the cascade effect.  This assume
// I have the design correct to allow this to happen, but there are some
// tricked (like extending CLK on-duty cycle when latches are open) enough
// to see result capture output.

// FIXME provide wavedrom diagram (MULU, MULS, DIVU, DIVS)

// FIXME explain IMMediate mode and REGistered mode (to pipeline)

// FIXME provide blockdiagram of functional units
//    D
//   MUX
//   X Y registers (loaded from multiplexed D)
//    OP -> res flags
//   P P registers
//  DEMUX
//    R

// FIXME explain architective difference to previous example and
// considerations why to change.

// FIXME explain addressing mode to allow much wider units and
//  potentially uneven input sizes.


Multiplier (signed/unsigned)
Method uses Ripple Carry Array as 'high speed multiplier'
Setup operation mode bits MULDIV=0 and OPSIGNED(unsigned=0/signed=1)
Setup A (multiplier 8-bit) * B (multiplicand 8-bit)
Expect result P (product 16-bit)


Divider (signed/unsigned)
Method uses Full Adder with Mux as 'combinational restoring array divider algorithm'.
Setup operation mode bits MULDIV=1 and OPSIGNED(unsigned=0/signed=1)
Setup Dend (dividend 8-bit) / Dsor (divisor 8-bit)
Expect result Q (quotient 8-bit) with R (remainder 8-bit)

Divider has error bit indicators that take precedence over any result.
If any error bit is set then the output Q and R should be disregarded.
When in multiplier mode error bits are muted to 0.
No input values can cause an overflow error so the bit is always reset.

## How to test

Please check back with the project github main page and the published
docs/ directory.  There is expected to be some instructions provided
around the time the TT05 chips a received (Q4 2024).

At the time of writing receiving a physical chip (from a previous TT
edition) back has not occured, so there is no experience on the best
way to test this project, so I defer the task of writing this section
to a later time.

There should be sufficient instructions here start you own journey.

## External hardware

It is expect the RP2040 and a Python REPL should be sufficient test this
project.

## Thoughts to the future (next iteration)

uio_in[3] might moved to bit4 and DIV0/OVER combined into bit5
This would allow the address the contigious area below.
However during a test build of a MULDIV16 version it easily exceeds 1x1, as
this stage looking towards making builds with permutations of
design/topology and method to generate GDS.  So 1x1 is good to achieve this.

The uio_in[3] feature wants to use registered mode to lock result when last address
is clocked in this way we can pipeline result and demonstration of what pipelining
can do to increase thoughput.

The TB is limited to the 4bit version.  Ran out of time to validate
registered output and pipeline.


Encapsulate the SpinalHDL Scala netlist generation, and write a yosys JVM
module harness (a yosys C++ module that is a JVM thread/process runner, with
communication interface, data/ffi API/lifecycle).  Then write a yosys plugin
that allows it to directly include, use and call for generated data based on
parametric details.

Consider emitting a custom cell/macro/GDS_object that yosys can call for,
then emit verilog like a regular standard cell module.

Consider modifying OpenROAD/OpenLane to incorporate generated macros
directly into other detailed routing environment then have the existing
detailed routing work around it as-is.


## TODO

Fixup the original logicsim schematic labels.

The input re-ordering (which made the SpinalHDL algo easier)

Relabel the P6_EXTND_EN to P7_EXTND_EN the original prodict index label was
a bad choice in retrospect.


Provide the SpinalHDL directory to the project with the sbt project and
netlist generation code.


Fill out SpinalHDL unit testing testing.

Test support for SUPPORT_SIGNED=false (try to completely remove nets from
output instead of assigning constant False and letting synthesis optimize
away)

Implement support for seperate SUPPORT_SIGNED for each input with 3 modes
of operation ALWAYS/NEVER/BOTH(like now using control input bit)

Implement and test support for odd-sized inputs, so the width of X and Y or
DEND and DSOR can be different sizes.

When input width can be unequal, test out the EOVERFLOW in the divider is
wired to the correct port and works in this scenarios.

Provide unit testing for commong multipler sizes, obvious byte boudnaries
but also the sizes common in FPGA DSP primitives.
