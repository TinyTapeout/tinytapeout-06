<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is an SPI controlled PWM generator. Through registers we can configure number of ticks the PWM signal is ON and the cycle. Ticks are related to the system clk provided externally.

### Registers

| Reg                 | Addr   | Addr | Description                  | Default |
|---------------------|--------|------|------------------------------|---------|
|   ID                |  0x00  | R    |  Identification register     |  0x96   |
|   PWM_CTRL          |  0x01  | R/W  |  Control register            |  0x00   |
|   TICKS_ON_LSB      |  0x02  | R/W  |  Ticks PWM signal is on LSB  |  0x14   |
|   TICKS_ON_MSB      |  0x03  | R/W  |  Ticks PWM signal is on MSB  |  0x82   |
|   TICKS_CYCLES_LSB  |  0x04  | R/W  |  PWM period in ticks LSB     |  0x50   |
|   TICKS_CYCLES_MSB  |  0x05  | R/W  |  PWM period in ticks MSB     |  0xC3   |

Only 3 bits of address are taken into account for addressing, and if no register exist in address provided, 0xAA is read back.

When PWM is active, registers cannot be written.

#### ID 

This register is read only, it's value is 0x96.

#### PWM_CTRL

This register controls the PWM. Bit 0 control if it's on (Bit 0 set) or off (Bit 0 clear).

#### TICKS_ON LSB and MSB

This two registers contains the number of ticks of the system clk that the PWM signal is high. It's a 16 bit wide value, separate in LSB and MSB.

#### TICKS_CYCLES LSB and MSB

This two registers contains the period of the PWM signal in number of ticks of the system clk. It's a 16 bit wide value, separate in LSB and MSB.

### SPI Interfaces

Registers are accesed through one of the two SPI interfaces. Both interfaces share the access to the registers, so just one interface can be accessed at the same time.

#### SPI CLK

This interface is clocked with the sclk clock of the SPI.

To write a register, 16 bits must be written. 

Bit 15 (MSB, first sent) is the R/W bit, for writes, must be 0
Bit 14 to 8 is address (only bits 10 to 8 are taken into account)
Bit 7 to 0 is data to be written

To read a register, 24 bits must be sent

Bit 23 (MSB, first sent) is the R/W bit, for reads, must be 1
Bit 22 to 16 is address (only bits 18 to 16 are taken into account)
Bit 15 to 8 is dummy bits
Bit 7 to 0 is data read in MISO line

#### SPI SAMPLED

This interface is sampled with the system clk. Theoretical maximum frequency is 25e10^6

To write a register, 16 bits must be written. 

Bit 15 (MSB, first sent) is the R/W bit, for writes, must be 0
Bit 14 to 8 is address (only bits 10 to 8 are taken into account)
Bit 7 to 0 is data to be written

To read a register, 16 bits must be sent

Bit 15 (MSB, first sent) is the R/W bit, for reads, must be 1
Bit 14 to 8 is address (only bits 10 to 8 are taken into account)
Bit 7 to 0 is data read in MISO line

## How to test

In order to test reads, you can read the ID register (0x00) and the byte received should be 0x96.

In order to test writes, you can write a register different than ID register, and then read it back an check
you read the value previously written.

## External hardware

Some devices to peform SPI transactions
