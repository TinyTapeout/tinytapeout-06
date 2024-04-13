## How it works

RV32E implementation for a minimum microcontroller that is designed for small HW projects. The microcontroller interfaces with an external NOR flash for program memory and a external PSRAM for RAM over SPI.

The MCU has the following peripherals:
- 7 x input/output pins
- Up to 5 input only pins
- Up to 4 output only pins
- 1 x UART (flow control can be enabled)
- 1 x SPI bus
- Debug interface over SPI to read out registers and program counter

There is only 1 SPI controller in the design and this controller is used to interface with program memory and RAM. This SPI controller can be configured to interface with other SPI peripherals too.

## Pin allocation

PIN | UI_IN | UO_OUT | UIO
--|--|--|--
0 | IN0/UART-CTS | UART-RX          | SPI-CS2
1 | IN1          | OUT0/UART-RTS    | IO0
2 | SPI-MISO     | OUT1             | IO1
3 | IN2          | SPI-MOSI         | IO2
4 | IN3          | SPI-CS1          | IO3
5 | IN4          | SPI-SCLK         | IO4
6 | EN_DEBUG     | OUT2             | IO5
7 | UART-TX      | OUT3             | IO6

## Memory space
Memory address | Description
--|--
0x00000 - 0x0FFFF | Program memory, read-only (external memory)
0x10000 - 0x1FFFF | RAM (external PSRAM)
0x20000 - 0x2FFFF | Peripheral registers

## Peripheral registers

### Pin control registers
Address | Description
--|--
0x20000 | Output values for the output pins (OUT0 to OUT3).
0x20001 | Input values for the input pins (IN0 - IN4), read-only.
0x20002 | Direction bits for the IO pins. Set to 1 for output, 0 for input.
0x20003 | Input values for IO pins. The corresponding bit in the IO direction register has to be set to 0, for the input values to be set.
0x20004 | Output values for IO pins. The corresponding bit in the IO direction register has to be set to 1, for the output value to be set.

### SPI peripheral registers
The SPI controller interfaces with program memory and RAM. It can additionally be configured to interface with other SPI devices by configuring the output pins (OUT0-OUT3) as CS pins.

#### 0x20005 - SPI control register
As the SPI controller is shared for program memory and RAM access, the entire CPU is blocked until the SPI transaction is completed.

Bit | Description
--|--
0 | Set to 1 to start SPI transaction
1 | Set to 1 to use OUT0 as CS pin
2 | Set to 1 to use OUT1 as CS pin
3 | Set to 1 to use OUT2 as CS pin
4 | Set to 1 to use OUT3 as CS pin

Note: Only 1 CS pin can be configured each time. When the OUTn pin are is as CS, that pin in the output bits register (0x20000) will be ignored.

Address | Description
--|--
0x20006 | SPI status register. Bit 0 is set to 1 when the SPI transaction is completed. This bit is cleared when an SPI transaction is started (by writing 1 to bit 0 of the SPI control register 0x20005).
0x20008 | SPI TX byte. Byte to transmit to SPI peripheral
0x2000C | SPI RX byte. Byte received from SPI peripheral

### UART peripheral registers

#### 0x20010 - UART control register
Bit | Description
--|--
0 | Set to 1 to start TX
1 | Set to 1 to clear RX byte availabe bit in the UART status register
2 | Set to 1 to enable flow control. OUT0 is used as CTS and IN0 is used as RTS.

#### 0x20011 - UART status register
Bit | Description
--|--
0 | When 1, the TX operation is completed
1 | RX byte available bit, is set to 1 when there is a byte available in the RX buffer

Address | Description
--|--
0x20014 | UART Tx byte. Set byte to be written to external UART device
0x20015 | Stores byte that is received from external UART device

### Debug mode
To set the CPU into debug mode, set the EN_DEBUG pin to HIGH. In this mode, the CPU will continuosly output the program counter and all registers (excluding x0 register) over the SPI interface. OUT3 is used as the DEBUG_CS pin.

## How to test

1. Load a program into the program memory
2. Assert and deassert rst_n pin
3. Interact with the program

## External hardware
This project requires at minimum the following:
- PMOD for SPI flash (example, digilent PMOD SF3)
- PMOD for SPI PSRAM chip
