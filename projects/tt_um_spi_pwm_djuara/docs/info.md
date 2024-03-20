<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is an SPI controlled PWM generator and 8-pin IO controller. IOs can be configure as output or input. Through registers we can configure number of ticks the PWM signal is ON and the cycle. Ticks are related to the system clk provided externally.

![alt text](https://github.com/djuara-rbz/tt_spi_pwm/blob/main/docs/block_diagram.JPG?raw=true)

The design contain 8 registers that can be accessed by the two SPI interfaces. With these registers user can control PWM generator, allowing control of time on and cycle time. Also there are 8 IOs that can be set as inputs or outputs.

If two SPI writes occurs at the same time, SPI_CLK prevails over SPI_SAMPLED. 

### Configuration example

#### PWM

Configuration of PWM is based on system clk. Registers to be configured are TICKS_ON and TICKS_CYCLE, which is basically the number of ticks of system clk the pwm signal is on and the period.

So assuming a system clk of 50 MHz, if we want to obtain a PWM signal with period 1 ms and duty cycle of 33%:

We need to calculate the number of clk ticks that are in 1 ms:

cycle_ticks = T / T_clk = 1 ms / (1 / 50 MHz) = 50 MHz * 1 ms = 50000 ticks

And now calculate the number of clk ticks the signal is on:

on_ticks = cycle_ticks * duty_cycle = 50000 * 0.33 = 16500 ticks

So configuring the registers with these values, and activating PWM (through external signal or register)

#### IOs

In order to use the IOs, we just need to configure the IO_DIR register in order to set the pin as input or output.

Then, if it is an input, just read the IO_VALUE register, and if it is an output, just write the desired value to the IO_VALUE register.

### Ports

| Port                 | in/out | Description                  |
|----------------------|--------|------------------------------|
|   ui_in[7]           |  in    | Input and'ed with ena and reported in bit 7 of reg 0x01 |
|   ui_in[6]           |  in    | Control start of PWM externally |
|   ui_in[5]           |  in    | CS signal of SPI_SAMPLED |
|   ui_in[4]           |  in    | MOSI signal of SPI_SAMPLED |
|   ui_in[3]           |  in    | SCLK signal of SPI_SAMPLED |
|   ui_in[2]           |  in    | CS signal of SPI_CLK |
|   ui_in[1]           |  in    | MOSI signal of SPI_CLK |
|   ui_in[0]           |  in    | SCLK signal of SPI_CLK |
|   uo_out[7:3]        |  out   | Always 0 |
|   uo_out[2]          |  out   | PWM output |
|   uo_out[1]          |  out   | MISO signal of SPI_SAMPLED |
|   uio_in[7:0]        |  in    | Input signals of IOs |
|   uio_out[7:0]       |  out   | Output signals of IOs |
|   uio_oe[7:0]        |  out   | OE signals of IOs |
|   ena                |  in    | Design selected signal |
|   clk                |  in    | System clk |
|   rst_n              |  in    | Active low reset |


### Registers

| Reg                 | Addr   | Addr | Description                  | Default |
|---------------------|--------|------|------------------------------|---------|
|   ID                |  0x00  | R    |  Identification register     |  0x96   |
|   PWM_CTRL          |  0x01  | R/W  |  Control register            |  0x00   |
|   TICKS_ON_LSB      |  0x02  | R/W  |  Ticks PWM signal is on LSB  |  0x14   |
|   TICKS_ON_MSB      |  0x03  | R/W  |  Ticks PWM signal is on MSB  |  0x82   |
|   TICKS_CYCLES_LSB  |  0x04  | R/W  |  PWM period in ticks LSB     |  0x50   |
|   TICKS_CYCLES_MSB  |  0x05  | R/W  |  PWM period in ticks MSB     |  0xC3   |
|   IO_DIR            |  0x06  | R/W  |  Set the dir of each IO pin  |  0x00   |
|   IO_VALUE          |  0x07  | R/W  |  Set the IO_output value     |  0x00   |

Only 3 bits of address are taken into account for addressing.

When PWM is active, registers cannot be written.

#### ID 

This register is read only, it's value is 0x96.

#### PWM_CTRL

This register controls the PWM. Bit 0 control if it's on (Bit 0 set) or off (Bit 0 clear). This register also contain the AND value of inputs ui_in[7] & ena in bit 7.

#### TICKS_ON LSB and MSB

This two registers contains the number of ticks of the system clk that the PWM signal is high. It's a 16 bit wide value, separate in LSB and MSB.

#### TICKS_CYCLES LSB and MSB

This two registers contains the period of the PWM signal in number of ticks of the system clk. It's a 16 bit wide value, separate in LSB and MSB.

#### IO_DIR

In this register each bits configure the direction of each io pin. Value 0 indicates input and value 1 indicate output

#### IO_VALUE

This register contain the value of the io pin. When read it reports the values of uio_in, when writes it sets the values of uio_out (depending on values set in IO_DIR).

### SPI Interfaces

Registers are accesed through one of the two SPI interfaces. Both interfaces share the access to the registers, so just one interface can be accessed at the same time.

#### SPI CLK

This interface is clocked with the sclk clock of the SPI.

To write a register, 16 bits must be written. 

- Bit 15 (MSB, first sent) is the R/W bit, for writes, must be 0
- Bits 14 to 11 are ignored
- Bit 10 to 8 is address
- Bit 7 to 0 is data to be written

![alt text](https://github.com/djuara-rbz/tt_spi_pwm/blob/main/docs/spi_clk_write.JPG?raw=true)

To read a register, 24 bits must be sent

- Bit 23 (MSB, first sent) is the R/W bit, for reads, must be 1
- Bits 22 to 19 are ignored
- Bit 18 to 16 is address
- Bit 15 to 8 is dummy bits
- Bit 7 to 0 is data read in MISO line

![alt text](https://github.com/djuara-rbz/tt_spi_pwm/blob/main/docs/spi_clk_read.JPG?raw=true)

#### SPI SAMPLED

This interface is sampled with the system clk. Theoretical maximum frequency is 25e10^6

To write a register, 16 bits must be written. 

- Bit 15 (MSB, first sent) is the R/W bit, for writes, must be 0
- Bits 14 to 11 are ignored
- Bit 10 to 8 is address
- Bit 7 to 0 is data to be written

![alt text](https://github.com/djuara-rbz/tt_spi_pwm/blob/main/docs/spi_sampled_write.JPG?raw=true)

To read a register, 16 bits must be sent

- Bit 15 (MSB, first sent) is the R/W bit, for reads, must be 1
- Bits 14 to 11 are ignored
- Bit 10 to 8 is address
- Bit 7 to 0 is data read in MISO line

![alt text](https://github.com/djuara-rbz/tt_spi_pwm/blob/main/docs/spi_sampled_read.JPG?raw=true)

## How to test

In order to test reads, you can read the ID register (0x00) and the byte received should be 0x96.

In order to test writes, you can write a register different than ID register, and then read it back an check
you read the value previously written.

## External hardware

Some devices to peform SPI transactions
