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

| Seven segment                                       | uio[7:6] |
| ----------------------------------------------------| -------- |
| Common cathode, direct segment drive (demo board)   | 01       |
| Common anode, direct segment drive                  | 10       |
| Inverting common anode drive, direct segment drive  | 00       |

Set uio[5] to the active level of the input buttons.

uio[7:5] = 011 works best for the demo board.

## How to test

Set clock frequency to 32768 Hz (10-100 kHz).

### To roll with DIP switches
* Flip all DIP switches up
* Uncheck the ui_in checkbox in the interact tab
* Run these commands in the REPL tab:
```
tt.uio_in.value = 0b01100000
tt.uio_oe_pico.value = 0b11100000
```
* Reset the design
* Flip a DIP switch down and back up to roll a die.
The dice roll is shown on the LED display for about 8 seconds.
    - ui[0] rolls a d4 (four sided die)
    - ui[1] rolls a d6
    - ui[2] rolls a d8
    - ui[3] rolls a d10
    - ui[4] rolls a d12
    - ui[5] rolls a d20
    - ui[6] rolls a d100

Multi-digit dice don't work well on the demo board.

### To roll with the commander
* Flip all DIP switches up
* Check the ui_in checkbox in the interact tab
* Choose the momentary push button function
* Run these commands in the REPL tab:
```
tt.uio_in.value = 0b01100000
tt.uio_oe_pico.value = 0b11100000
```
* Reset the design
* Press and release individual buttons in the interact tab to roll various dice.

When switching between commander and DIP switches, you have to rerun the REPL commands.

## External hardware
The demo board is sufficient to roll d4-d10 and to test the I2C unit (see below).
Multi-digit dice require a two-digit LED display and require PMODs or a custom PCB.

Static configuration inputs on uio[7:5] should be connected to VDD or GND.
Button inputs can close to either VCC or GND and require pullups or pulldowns. Select the active level with ui0[5].
Common anode and common cathode displays are both supported using configuration pins uio[7:6].
* Segments are connected to uo[7:0] (DP, G, F, E, D, C, B, A in that order)
* Common pin for Left digit connects to uio[1]
* Common pin for Right digit connects to uio[0]

The TT06 chip will struggle to supply the common pins with enough current. Drive the common pins through inverting transistor drivers and change their active level by setting uio[7] appropriately.

## But wait: There's more!
The die roller only used 1/3 of the available area, and I had a few spare pins, so I also added a simple I2C slave to experiment with. It contains an 8 byte memory and a GPIO unit that can read the ui pins, and a GPIO pin uio[0] that can be used as input or output, and also has delta-sigma PWM capabilities.

The slave has a 7-bit I2C address 0x70. Communicate with it as if it were an I2C memory with a one byte address: Make a write transaction where the first byte is the sub-adress, followed by any number of data bytes. The data bytes will be stored in consecutive locations starting at the sub-address. Make a read transaction by first making a dummy write without data bytes to set the sub-address, followed by a restart and a read transaction to read any number of consecutive bytes back.

### Address Map
The 7-bit I2C slave address is 0x70 (decimal 112).  

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
Write >128 set uio[0] to 1  

### IO_oe
Bit 0 = 0 configures uio[0] as an input  
Bit 0 = 1 configures uio[0] as an output  

### uio_in, ui_in
Reads the current values of the uio and ui pins.  
Remember that the dice roller is still active, so you will see things happening on the uio[4:3] pins, as well as the state of the I2C pins.

## Testing the I2C slave
* Set the clock frequency to 10 MHz or above.
* Reset the design
* Run the following commands in REPL to set up the RP I2C unit
```
from machine import Pin
i2c=machine.I2C(1,scl=Pin(23),sda=Pin(22),freq=100000)
i2c.scan()
```
The scan() should report a slave on address [112]
* Test the 8-byte memory
```
i2c.readfrom_mem(112,0,8)
# b'\x02H\x04\x00BP\x01\x06' ("Random" RAM content after power-up)
i2c.writeto_mem(112,0,b'1234')  # Write to first 4 bytes
i2c.readfrom_mem(112,0,8)
# b'1234BP\x01\x06'
i2c.writeto_mem(112,4,b'1234') # Write to last 4 bytes
i2c.readfrom_mem(112,0,8)
# b'12341234'
```
* Test the PWM unit
```
i2c.writeto_mem(112,8,b'\x80\x01') # Set PWM pin to 1 and configure as an output
# PWM pin (bi0) should now be constant 1

i2c.writeto_mem(112,8,b'\x40')
# PWM pin should now have 50% duty cycle

i2c.writeto_mem(112,8,b'\x10')
# PWM pin should now have 1/8 duty cycle

i2c.writeto_mem(112,8,b'\x11')
# PWM pin should now have 17/128 duty cycle

i2c.writeto_mem(112,8,b'\x71')
# PWM pin should now have 113/128 duty cycle
```
Note that the "PWM" output is in reality a delta-sigma/PDM signal. Only very simple ratios (1/2, 1/4, 1/8, 3/8 a.s.o) can be easily recognized in the output waveform. You can't measure the "duty cycle" using the time between consecutive edges.

For me, the I2C unit worked without additional hardware. If it doesn't behave properly, try adding 1k-4k pullups on SDA and SCL (bi[3:2]). They can easily be added in the bidir PMOD connector.
