<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A erial-parallel register, is a digital circuit used to store data sequentially and then transfer it in parallel. It works in the following way:

Serial Input: Data is input sequentially, bit by bit, through a single input line. These bits move through the register, being temporarily stored in the register's memory cells.

Temporary Storage: As bits are entered, each bit is loaded into a memory cell within the register. This is typically done using a serial shifting mechanism, where each new bit pushes the next bit to the next memory cell, thus shifting all previous bits forward.

Parallel Transfer: When all the bits have been entered into the register serially and temporarily stored, they can be transferred simultaneously or in parallel from the memory cells of the register to a parallel width data bus. This is achieved by loading each bit stored in the memory cells into parallel output lines that are connected to the data bus.Typically, type D latches or flip flops are used, which are controlled by the clock, which determines when a data chain begins or ends.

Control and Synchronization: The operation of the serial-parallel register is controlled by control signals that indicate when to start inputting data, when to stop serial input, when to start parallel transfer, and when to stop transfer. Accurate synchronization is crucial to ensure that data moves correctly through the register and is transferred to the data bus at the right time.

For this project, a 4-bit serial-parallel register was made, which consists of a clock, a reset, the serial input and the parallel output.

The importance of this register is found in a binary search block used in converters such as ADC SAR by its acronym Digital Analog Converter successive approximation register which introduces a series of data into the system in serial form and requires a series in parallel to determine the value to convert.

## How to test

The testbench used was proposed, carried out in ACTIVE HDL-Student Version, the stimuli used were.

10ns period clock.
Reset, through a formula which at 0 fs is 1 and 0 after 1 ns to clean the data and start with a known value with is 0.
Serial input, a 20 ns clock.

The parallel output is updated every 4 clock cycles and displays the result until it updates the next 4 clock cycles with a new result.

## External hardware

Wave generator:This controls the system clock externally

Switch, connected in the reset and is used when we perform a conversion, It can also be used with a button or with a wave generator using a square pulse once. The reset switch value must be 0 to allow a value that is different from 0 on the parallel output.

Logic Analyzer. This allows a serial signal to be introduced into the system that varies its values non-periodically to read its conversion in parallel, the same logic analyzer can read the output in parallel. Keysight 1681AD Logic Analyzer in INAOE con be used. Another way is to use an FPGA programmed with serial values and it can obtain the output values in parallel.
