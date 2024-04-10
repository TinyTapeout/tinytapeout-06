
## How it works

This is a simple circuit to calculate: 
- a vector dot product ie the sum of `w_i*x_i` where `i` can be anything up to about 40 (`insn=2`)
- Minimum of a list of data (`insn=0`)
- Maximum of a list of data (`insn=1`)

It has been designed as a coprocessor. The data is first added by setting `load=1` and then supplying the data
for the dot product the `index` and `data`. Each set is a `w`,`x` pair. Its a 4 bit system and runs when `run=1` and needs at least 16 clock cycles produce the answer. The answer is 12 bit value.    


## How to test

I've tested this using a verilator simulation included below - I like the `cpp` workbench for this. The testing has been mainly for numerical stability.

## External hardware

I intend for this to be driven by the RP2040 and to work as a "coprocessor" for vector calculations
Other.
