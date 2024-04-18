<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a mixed signal design that glues together a few bits to create a simple ADC.  It uses

  * An analog comparator, based on the design done by Stefan Schippers in [Analog schematic capture and simulation](https://www.youtube.com/watch?v=q3ZcpSkVVuc), re-captured in xschem and laid out with magic;
  
  * The analog blob from the R2R DAC in [Matt Venn's R2R DAC TT06 submission](https://github.com/mattvenn/tt06-analog-r2r-dac);
  
  * A digital signal processor and front end, created using Amaranth; and
  
  * A few analog switches and a 2:1 analog mux, created and laid out for the project.
  
While at it, I also laid out a version of the [p3 opamp from this project](https://github.com/argunda/tt06-tiny-opamp) and embedded it in for testing purposes.


The ADC uses the DAC to set the threshold on the comparator and see what it says about the input signal--is it higher or lower--to perform a search and hone in on a digital value to output.  Doing it in this way, it manages to determine a v`alue in about 60 clock cycles.


The analog output of the comparator, R2R DAC and p3 opamp are all provided through analog pins for testing and experimentation.

A few options are available:

  * The system can perform a comparator calibration before each reading (which increases the processing time but should make things more reliable).  Enable this by holding the enable calibrations pin high;
  
  * Rather than feed the R2R DAC output to the comparator, it can receive input from an analog pin instead.  Set "use external threshold" input pin HIGH for this, and feed into appropriate analog pin.

## How to test

Bring enable comparator, and reset pin high, feed a target voltage (less than 1v8) into appropriate analog input pin, clock the device and watch the output bits on the digital side.

When result ready output pin pulses high, the output bits are a calculated result.

## External hardware

Voltage source for analog input.  Some way to look at outputs.
