## How it works
                                 
This is a Microprocessor build around an 8-Bit Little ISA (LISA) processor.
The following is a block diagram of the project:
                                           
                                +------+    
                         +----->|config|   
                         |      | regs |   
               |\   +----+----+ +------+  +------+   +------+ 
    rx1 -----*-| |  |         |           | lisa |   | lisa |
             | | |  |  Debug  |           | qspi |   | qqspi| QSPI
    rx2 ---*-|-| +->|  Intf   +---------->|      +<->|      +----> 
           | | | |  |         |           | QSPI |   | QPSI | CEs
    rx3 -*-|-|-| |  |         +-------+   | ARB  |   | Ctrl +----> 
         | | | |/   +---------+  Ctrl |   +--+---+   +------+
         | | |  |                     |      |                  
         | | |  |Port                 V      |       +--------+       
         V V V  |Sel                +-+------+---+   | lisa   |       
      +---------+-+   +--------+    |            +---+ debug  |       
      |  debug    |   | HW Int |    |    LISA    |   +--------+       
      | autobaud  |   |  Mul/  |<-->|    CORE    |   +--------+       
      |           |   |  Div   |    |            +---+ Periph |    
      +-----------+   +--------+    +-+-------+--+   |        |    
                                      |       |      |    gpio+--> 
                    +-------+   +-----+-+ +---+---+  |     i2c+--> 
                    | RAM32 +---+ DATA  | | INST  |  |    UART+-> 
                    | 128B  |   | CACHE | | CACHE |  | timer  |  
                    +-------+   +-------+ +-------+  +--------+  

   - The LISA Core as a minimal set of register that allow it to run C programs:
      - Program Counter + Return Address Resister
      - Stack Pointer and Index Register (Indexed DATA RAM access)
      - Accumulator
       
   - Harvard architecture LISA Core (16-bit instruction, 15-bit address space)
   - Debug interface
      * UART controlled
      * Auto detects port from one of 3 interfaces
      * Auto detects the baud rate
      * Interfaces with SPI / QSPI SRAM or FLASH
      * Can erase / program the (Q)SPI FLASH
      * Read/write LISA core registers
      * Set LISA breakpoints, single step, etc.
      * SPI/QSPI programmability (single/quad, port location, CE selects)
   - (Q)SPI interface for instruction fetch
   - Onboard 128 Byte RAM for DATA / DATA CACHE
   - Data bus CACHE controller with 8 16-byte CACHE lines
   - Instruction CACHE with a single 4-instruction CACHE line
   - 16-bit programmable timer (with pre-divide)
   - Debug UART available to LISA core also
   - 8-bit Input port (PORTA)
   - 8-bit Output port (PORTB)
   - 4-bit BIDIR port (PORTC)
   - I2C Master controller
   - Hardware 8x8 integer multiplier
   - Hardware 16/8 or 16/16 integer divider
   - Programmable I/O mux for maximum flexibility of I/O usage.
                                                                         
It uses a 32x32 1RW [DFFRAM](https://github.com/AUCOHL/DFFRAM) macro to implement a 128 bytes (1 kilobit) RAM module.
The 128 Byte ram can be used either as a DATA cache for the processor data bus, giving a 32K Byte address range,
or the CACHE controller can be disabled, connecting the Lisa processor core to the RAM directly, limiting the 
data space to 128 bytes.

                                                                                                         
Reseting the project **does not** reset the RAM contents.

## How to test

You will need to download and compile the C-based assembler, linker and C compiler I wrote (will make available)
Also need to download the Python based debugger.

  - Assembler is fully functional
    - Includes limited libraries for crt0, signed int compare, math, etc.
    - Libraries are still a work in progress
  - Linker is fully functional
  - C compiler is functional (no float support at the moment) but is a work in progress.
  - Python debugger can erase/program the FLASH, program SPI SRAM, start/stop the LISA core, read SRAM and registers.

