## What's the project?

A 64 byte RAM implemented using 512 latches.

Resetting the project does not reset the RAM contents.

## How to test

To read a byte from memory:

* Set the `addr` pins to the desired address and set `wr_en` low
* Pulse `clk`
* `data_out` (the output pins) reads the value at the memory location.

To write a byte to memory:

* Set the `addr` pins to the desired address, set `data_in` (the bidirectional pins) to the desired value, and set `wr_en` high
* Pulse `clk`
* The memory location will be written on the next cycle.  The `data_out` pins will now read the old value at this address.
* The next cycle can not be a write.  

On the cycle immediately after a write the value of `wr_en` and `data_in` will be ignored - the cycle is always a read.  If `addr` is left the same then the value read will be the value just written to that location.

## How it works

Setting values into latches reliably is a little tricky.  There are two important considerations:

* The latch gate must only go high for the latches for the byte that is addressed.  The other latch gates must not glitch.
* The data must be stable until the latch gate is definitely low again.

To ensure the restrictions are met, writes take 2 cycles, and only 1 write can be in flight at once, so the cycle after any write is always treated as a read.

The scheme used is described in detail below.

### Writing: Ensuring stable inputs to the latches.
  
The write address, `addr_write`, is always set to the same value for 2 clocks when doing a write.
When the write is requested `addr_write` and `data_to_write` are captured.  `wr_en_next` is set high.
If `wr_en_next` was already high the write is ignored, so the inputs to the latches aren't 
modified when a write is about to happen.

On the next clock, `wr_en_valid` is set to `wr_en_next`.  `addr_write` is stable at this time so the
`sel_byte` wires, that contain the result of the comparison of the write address with the byte address for each latch, will already be stable at the point `wr_en_valid` goes high.

`wr_en_ok` is a negative edge triggered flop that is set to `!wr_en_valid`.  This will therefore
go low half a clock after `wr_en_valid` is set high.  And because two consecutive writes are not
allowed it will always be high when `wr_en_valid` goes high.

The latch gate is set by `and`ing together `wr_en_valid`, `wr_en_ok` and the `sel_byte` for that byte.
This means the latch gate for just the selected byte's latches goes high for the first half of
the write clock cycle.  data_to_write is stable across this time (it can not change until the
next clock rising edge), so will be cleanly captured by the latch when the latch gate goes low.

### Reading: Mux and tri-state buffer.

Reading the latches is straightforward.  However, a 64:1 mux for each bit is relatively area 
intensive, so instead for each bit we have 4 16:1 muxes feeding 4 tri-state buffers.

Only the tri-state buffer corresponding to the selected read address is enabled, and the output is
taken from the wire driven by those 4 buffers.

To minimize contention, the tri-state enable pin of the buffers is driven directly from a flop which
captures the selected read address directly from the inputs, at the same cycle as the `addr_read` flops are set.

The combined output wire then goes to a final buffer before leaving the module, ensuring the outputs are driven cleanly.