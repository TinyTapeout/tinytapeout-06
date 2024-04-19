<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

      This is a very simple circuit, it consists in two LSFR register lineary connecated in an specific way in order to generate two m-sequences, in order to 
      generate this pair of m-sequences, we input an initial vaule called seed, this is because we cannot generate a PN signal if the LSFR registers have an 
      initial value of 0s. For this design we used two LSFR with 5 D Flip-Flops. With this we can generate a PN signal with a length of(2^5)-1.
      With this PN signal and modulus 2 adding the signal we want to tranmit, we generate a CDMA signal, which we are going to study simulating a channel with
      an OPAM in order to add noise to the CDMA and feed it back to the designed circuit to see the bit-error rate of this device.
      With this we hope to study and put to test.
      * CDMA
      * Gold Sequences.
      * The effect of the noise in the CDMA.
      * Reception process with a simulated channel.
      * Apply the knowledge aquired within the Latinpractice Bootcamp initiative and apply the knowledge to design and print in a silicon waffle the proposed device.

## How to test


      As we used a hardware description language (Verilog), we created an specific testbench for the cdma.v, this testbench simply initializes the input signals
      to 0 in order to generate the adequate signal such as the clock, a test signal to send that lasts 31 clock cycles (Spread-spectrum), a seed value to load both LSFR
      The stimulus simple will assign a value to set_i and deactivate it to load the seed, after that, the LSFR have a linear feedback and will contantly generate the Gold signal
      each clock cycle. With the test signal_i we the system will generate the CDMA signal and assign it to CDMA_o, the Gold signal is assigned to Gold_o, this is the tranmition process.

      For the reception process, we simply assign the value of CDMA_o to receptor_i and the output will be observerd at receptor_o, we can observe that we recovered signal_i as 
      it shows the same time diagram as receptor_o.

      As for the LED_o it works as a simple indicator that the inputed seed is valid for transmission.

      The template will include the verilog file with its testbench.

## External hardware

OPAM, Testboard, LED
