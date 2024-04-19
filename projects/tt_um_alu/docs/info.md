<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The system operates by receiving a 4-bit input and storing it in one of two registers, designated as Register A or Register B. Following this, the Arithmetic Logic Unit (ALU) receives a 4-bit operation selection code which dictates the specific operation to be executed on the input data. These operations can include addition, subtraction, bitwise AND, bitwise OR, and other logical or arithmetic operations depending on the design of the ALU.

Once the operation is performed, the output is routed to a Universal Asynchronous Receiver-Transmitter (UART) transmitter. The UART transmitter facilitates the communication of the result to either a microcontroller or a standalone UART interface. This allows for seamless integration with larger systems or external devices, enabling the processed data to be utilized for various applications.
## How to test

### Hardware Components

To test the hardware, you will need the following components:

1. Two push buttons with pull-up resistors, used for saving data to Register A and Register B respectively.
2. Eight switches, designated for Data_input and OP_select operations.
3. One LED indicator to signify the functioning of the Arithmetic Logic Unit (ALU).
4. An output pin configured to transmit the Tx signal.
5. A microcontroller or UART-capable device operating at a baud rate of 9600.

To conduct testing, you'll need to connect a 50MHz clock signal to the clk pin. Begin by selecting operations according to the Operation table provided in the README section of this repository. The operands to be saved in registers range from 0000 to 1111, corresponding to decimal values 0 to 15.

Given the utilization of an 8-bit output signal in the block diagram, no overflow is expected for most operations. However, when using the multiplication Op code, it's important to note that the maximum numbers to be multiplied are 1111 times 1111, resulting in 11100001, which equals 255 in decimal. 
## External hardware
1. LED for UARTBUSY indicator.
2. UART resiver to get data out.
3. 2 push buttons with pull-up resistor.
4. 50MHz ocilator or function generator
