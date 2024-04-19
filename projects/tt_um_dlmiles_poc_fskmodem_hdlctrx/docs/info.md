<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a proof-of-concept design to sketch out the TT_UM digital interface
for a later project design that will attempt to incorporate both analogue and
digital aspects of the basic skeleton shown in this project.

The design is based on the classic circa 1988 model design used in Amateur
Radio Packet systems by G3RUH.  The initial specification is looking to
achieve data rates of between 4800 and 64000 baud, but the design maybe able
to service audio 1200 baud packet radio as well.

The design is 1-data-bit per symbol.

The original TNC (Terminal Node Controller) was a Z80 CPU and 8530 Serial
Communications Controller.  So inline with this I  expect to provide an
8-bit CPU (as a future TT project) as a companion to this so the two items
taken together should be able to form a complete communications solution
of a capable TNC.
This is an area I spent a significant amount of my teenage youth understanding
and experimenting with that gave me a good grounding in all the digital
electonic, radio and computer/CPU theory/practice that is still in use today.


The original PCB board design used:
* a x16 master TX CLOCK line of the data rate.
* was based on 12v audio interface/opamps, and 74HC TTL logic
* was capable of the range of baud rates with minor modifications, the most
used speed in my experience is 9600 baud
* the TX DAC was 4 x 8-bit samples per bit, with the waveform lookup using a
12bit address that can see previous bit information sent
* EPROM were used directly to provide waveforms, these have a number of
jumper set modes to allow compensation for non-linear responses at the
TX-AUDIO and RX-AUDIO

Due to the need to perform ROM lookups, this is operating in 4 phases
sharing 6-bit output from module, and 4-bit input to module.  The 4 phases
cover a sequence of:
* TX nibble low (6bit address)
* TX nibble high (6bit address)
* RX nibble low (6bit address)
* RX nibble high (6bit address)
It is not clear if this arrangement a good choice.
There is also a programmable latency on the reply, of zero-cycles or
one-cycle, the shifts the expectation of the result.

I also need to validate the DAC 8bit loading scheme prevents any chirping
(visibily to DAC of partially loaded data, due to multiplex timing
differences) of the data because it is loaded in 2 halves.


The master clock (CLK pin) due all the above, it is ncessary to run the
clock pin at x4 the x16 of the original design.

|data rate baud |master clock (CLK)|  tx clock | tx sample clock|
| ------------: | ---------------- |  -------- | ------- |
|         4,800 |          307,200 |    76,800 |  19,200 |
|         9,600 |          614,400 |   153,600 |  38,400 |
|        19,200 |        1,228,800 |   307,200 |  76,800 |
|        38,400 |        2,457,600 |   614,400 | 153,600 |
|        64,000 |        4,096,000 | 1,024,000 | 256,000 |
|        76,800 |        4,915,200 | 1,228,800 | 307,200 |

Table is in Hz or Baud

The master clock (pin CLK) is driven at x64 the synchrnous data rate.
The tx clock rate is derrived from this 'CLK divide-by-4'

The UART clocking is also derived from CLK, and each side (uart RX and uart
tx) can be individually configured to be 1:1 or 2:1 the synchronous data
rate:
 * Uart TX x1 = data rate x1
 * Uart TX x2 = data rate x2
 * Uart RX x1 = data rate x8 (due to majority voter, 8 sample buffer)
 * Uart RX x2 = data rate x16 (due to majority voter, 8 sample buffer)

As you can see maybe there is some headroom for faster transmission speeds
within a TT project, before needing to increase DAC resolution and explore
4FSK/6FSK/QAM etc...

There are 3 main functional areas with the design:

The type of FSK modem is 2FSK (dual tone) outputting continious wave.

### Upper Digital (included here)

This incorpotates a full-duplex HDLC frame processor attached to a UART
(ttl interface), the UART process encodes the frame in format similar to
KISS format used by TNCs, with a few modifications.


### Lower Digital (included here)

This manages the receiver clock recovery PLL circuit and interface, the
original designs used EPROM lookup tables with 12bit address (which has
visibility on at least the previous encoded bit) and provides an 8bit data
output.

The data outputs are then fed into a respective 8bit DAC

The receiver has a PLL lock detector which is used to provide DCD (Data
Carrier Detect) signal.  While the hardware design is capable of full-duplex
operation it is often used in Amateur Radio situations in a half-duplex
situation with a carrier sense channel sharing algorithym.

### Lower Analogue (not includes in this PoC design, see next iteration)

The parts that are missing from the design:

* 8bit DAC for transmit waveform shaping, using 4 samples per bit
* opamp for transmit audio anti-aliasing (low-pass filter?) circuit to
  remove harmonic noise from the output audio
* 8bit DAC for receiver clock recovery feedback, using 16 samples
  per bit.
* opamp for receive audio signal interface, this maybe moved to an external
  board due to needing to protect the TT IC from over voltage from being
  attached to usuall 12v equipment or maybe 36v when using some ex-commerial
  radio trancievers.
  This may have been a comparator circuit (unsure at this time), fed into a
  DFF to synchronise the incoming data to the x16 (of datarate) clock recovery
  timing
* 2 x opamp to provide PLL lock detection (unsure how this works atm), I
  would guess it can detect when the signal is being centered and has been
  centered for some number of samples, maybe via slow capacitance charge up
  when the UP/DOWN line is managing to meet an approximate 50%/50% duty
  cycle per x16 clock recovery tick.
* 2 x opamp to provide zero-crossing detection, this is used to provide the
  PLL its feedback mechanism (the UP/DOWN line) to advance or retard the
  edge alightment.


It is hoped all items can be incorporated into the same design using the
analogue GDS facility with TT and connected to the respective lower digital
signal.

At this time we bring out the interconnection points (between analogue and
lower digital) to the external interface of TT and we provide a configuration
mechnism to be externally or internally driven/internally sourced.  This should
allow for a significant level of simulation and experimentation by users of
the project to understand and explore FSK/PLL theory by picking a testing
configuration combintation, being full-duplex it should be able to loop-back
at various levels to understand each part better.  While also providing those
with a Ham Radio license to try out on air communicating with their local users
or AMSAT.

Have fun... 73s de G7LED

## How to test

When the final design is completed, there should be a number of visible and
testable aspects available to observe the working of various functions.

I am not expecting this PoV project to yeild good result due to the limited
time spent on it just before submission deadlines for TT06.

Check back with the repo for a testing regime.

## External hardware

At this PoC stage, testing with RP2040 and FPGA external boards to validate
the electrical interface acrhetecture makes sense and provided the most
options.
