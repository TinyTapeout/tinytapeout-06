## How it works

### Press buttons to roll various types of TTRPG dice

Playing table top role playing games (TTRPGs) often involves rolling dice of various types.
This design is a combination of the most common types of dice used.

It has six button inputs, each corresponding to a certain type of die, and a two-digit seven segment display that shows the result of the roll when the button is released.

While a button is pressed, a counter is decremented every clock cycle. When the counter reaches 1, it is reloaded with the largest value of the corresponding die. When the button is released, the counter stops and the result is displayed on the seven segment display. Around 8 seconds later, the display is turned off.

The design outputs seven segment signals and 'common' drivers for two digit displays. It has configuration pins that set the active level of segment and common signals independently of each other, to allow the connection of either common-cathode or common-anode diplays, or displays with inverting or non-inverting drive buffers for segments and/or common signals. Similarly, the button inputs can be configured as active low or high.

Dice up to d10 can use a single seven segment display without a common driver like the one on the demo board. If such a display is used, it will toggle between showing the 1s digit and the blanked 10s digit. When the result is 10, it will show a 1 and 0 superimposed, which will look like a slightly wonky 0.

The design uses clock timing to debounce the buttons and is optimized to run at 32768 Hz, but it should work well at frequencies from 10kHz to 100kHz. At higher frequencies, the button debouncer may be unreliable and display muxing may not work properly. At lower frequencies, the higher valued dice will have a low cycle rate and it could be possible to cheat by using well-timed key presses. The clock frequency will also affect the timer that turns off the display.

The 'polarity' config pins sets the active level for the corresponding I/O signals. For instance: uio[7]=0 causes the digit mux signals to be active low, suitable for directly driving common cathode pins. When uio[6]=1, lit segments are high, suitable for direct segment drive of common cathode displays. Similarly, when uio[5]=0 button inputs are expected to be high when idle and low when pressed.

## How to test

Set clock frequency to 32768 Hz (10-100 kHz).
Configure uio[7:5] for the appropriate signal polarity:

| Seven segment                                       | uio[7:6] |
| ----------------------------------------------------| -------- |
| Common cathode, direct segment drive (demo board)   | 01       |
| Common anode, direct segment drive                  | 10       |
| Inverting common anode drive, direct segment drive  | 00       |

For the demo board, set uio[7:5] to 010

Press one of the buttons ui[6:0] (according to the selected button polarity) and release it.
The dice roll is shown on the LED display for about 8 seconds.

* ui[0] rolls a d4 (four sided die).
* ui[1] rolls a d6
* ui[2] rolls a d8
* ui[3] rolls a d10
* ui[4] rolls a d12
* ui[5] rolls a d20
* ui[6] rolls a d100

## External hardware

Pullups on ui[6:0] with pushbuttons closing to GND.

A two-digit LED display. Common anode and/or cathode are supported using the configuraiton pins.
Segments are connected to uo[7:0] (DP, G, F, E, D, C, B, A in that order)
Left cathode connected to uio[1]
Right cathode to uio[0]

Static configuration inputs on uio[7:5] should be connected to VDD or GND.

The chip may struggle to supply common anode displays with enough current.
If so, drive the common anode pin with an inverting transistor driver and
change the active level of the 'common' output by setting uio[7] to 0.

## But wait: There's more!

The die roller only used 1/3 of the available area, and I had a few spare pins, so I also added a simple I2C slave to experiment with. It contains an 8 byte memory and a GPIO unit that can read the ui pins, and a GPIO pin uio[0] that can be used as input or output, and also has PWM capabilities.

The slave has a 7-bit I2C address 0x70. Communicate with it as if it were an I2C memory with a one byte address: Make a write transaction where the first byte is the sub-adress, followed by any number of data bytes. The data bytes will be stored in successive locations. Make a read transaction by first making a dummy write without data bytes to set the sub-address, followed by a restart and a read transaction to read any number of consecutive bytes back.


### Address Map
The 7-bit I2C slave address is 0x70.  

The address map of the peripheral is as follows:

| Address   | Function     |
| --------- | ------------ |
| 0x0 - 0x7 | Memory cells |
| 0x8       | IOCtrl       |
| 0x9       | IO_oe        |
| 0xA       | uio_in (r/o) |
| 0xB       | ui_in (r/o)  |

### IOCtrl
Write 0 to set uio[0] to 0  
Write 0 to 128 to output a PWM waveform with duty cycle IOCtrl/128  
Write >128 to output 1  

### IO_oe
Bit 0 = 0 configures uio[0] as an input  
Bit 0 = 1 configures uio[0] as an output  

### uio_in, ui_in
Reads the current values of the uio and ui pins.  
Remember that the dice roller is still active, so you will see things happening on the uio[4:3] pins, as well as the state of the I2C pins.

### Testing the I2C slave
Set the clock frequency to 10 MHz or above. It should be possible to access the I2C slave from the I2C1 interface of the RP2040 or from an I2C master connected to the PMOD interface J12, where you can also access he PWM output.
 
