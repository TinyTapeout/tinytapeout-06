<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

With ~ 200 gates and 8-inputs, 8-outputs, can we make a full CPU?  If
we depend on external memory, we can do like the Intel 4004 and
multiplex nibbles in and out.  However for this submission, we keep
the memory on-chip which puts some severe constaints on the size of
everything.  The only architeture that I could managed in that space
is one that relies heavily on self-modifying code, like the beloved
DEC PDP-8.

Features:
- Updatable code and data storage
- Instructions include load, store, alu, and conditional branches
- Can execute Fibonacci

CPU state
- 8 words of 6-bit memory, split into 2-bit of instruction and 4-bit
  of operand.
- 3-bit PC
- 4-bit Accumulator (ACC)

### The Instruction Set

All instructions have an opcode and an argument.

- `load` value (loads value to the accumulator)
- `store` address (stores the accumulator at the address, top bit ignored)
- `add` value  (adds value to the accumulator)
- `brzero` address (branches to address if the accumulator is zero)

Obviously this is very limiting, but it does show the basic structure
and could probably be tweaked to be more general with more time (but
space is limited).

### Example Fibonacci Program

``` C
 int a = 1, b = 1;
 for (;;) {
   int t = a;
   a += b;
   b = t;
   if (b == 8) for (;;)
 }
```

``` assembly
0: load 1  // a is here
1: store 4 // store to t at address 4

2: add 1   // b is here
3: store 0 // Update a at address 0

4: load _  // t is here, value overwritten
5: store 2 // update b

6: add 8  //  -8 == 8
7: brzero 7 // if acc - 8 == 0 we stop
// otherwise roll over to 0
```

Execution trace:

```
$ make -C src -f test.mk | tail -50 | head -17
        Running 0 (insn 0,  8)
00500  pc 1 acc  8
        Running 1 (insn 1,  4)
00510  pc 2 acc  8
        Running 2 (insn 2,  5)
00520  pc 3 acc 13
        Running 3 (insn 1,  0)
00530  pc 4 acc 13
        Running 4 (insn 0,  8)
00540  pc 5 acc  8
        Running 5 (insn 1,  2)
00550  pc 6 acc  8
        Running 6 (insn 2,  8)
00560  pc 7 acc  0
        Running 7 (insn 3,  7)
        Running 7 (insn 3,  7)
        Running 7 (insn 3,  7)
```

We actually computed fib all the way to 13 (largest that will fit in 4-bits).
Explain how your project works

## How to test

Use ui_in[7:4] and cmdarg and ui_in[3:2] as cmd.  Inputs are only
registered on posedge of clock.  Keep rst_n high.  Then issue the
sequence of commands as follows: (XXX please see tb in tt_um_tommythorn_4b_cpu_v2.v for now)

## External hardware

Nothing required but without observing outputs it's a bit boring.
