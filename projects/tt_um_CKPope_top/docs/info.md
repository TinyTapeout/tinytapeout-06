<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is a simple two-dimensional axis controller. It uses 4-bit wide counter, 4-bit Magnitude Comparator and a 4-bit wide target co-ordinate register for each dimension. A simple State Machine is used to acquire the target value for each dimension and then control the movement to the target co-ordinate value for each dimension in parallel operation. Comparisons of the current position and the target value for each dimension along the way and when the Traget is reached, the controller sits in a "AT-REST" state and waits for another motion directive. The Target values can change at any time after the Motion begins. New Target values will not be captured until the NEXT MOTION request. The controller can be RESET at any time with the rst_n input.
![image](https://github.com/CKPope/tt06-verilog-template/assets/166442118/9af8d539-68c6-49d0-91ef-edca4c9abb46)
![image](https://github.com/CKPope/tt06-verilog-template/assets/166442118/8d319750-3319-4897-a161-a58fdd493411)



Inputs: 
Target X co-ordinate value (4 bits) on ui_in[7:4]
Target Y co-ordinate value (4 bits) on ui_in[3:0]
Motion Input (1 bit) on uio_in[0]; This signal is input after the target values are set. The movement begins after the signal is deactivated.

TT Infrastructure Signals:
ena   : to enable the design operation
rst_n : to reset the design
clk   : to operate the pipelines of the design (up to 50 MHz).
uio_oe[7:0] : are all configure for Input mode only
uio_out[7:0]: are not used

Outputs: 
Current X position value (4 bits) on uo_out[7:4]
Current Y position value (4 bits) on uo_out[3:0]

## How to test
Set the X/Y Target values on ui_in[7:4] for X and ui_in3:0] for Y.
Press the Motion button and release.
The Controller will advance the X and Y potions towards the target values by one increment for each clock. 
If one dimension's target value is reached before the other, the controller will hold the current position for that one while the other one continues to its destination.
You may update the Target values at anytime after the motion has started. The controller will move towards the NEW target values onlyif the Motion button is pressed again.

## External hardware
Connect input switches to the ui_in[7:0] pins for the target X/Y co-ordiate inputs. Connect a push-button to the uio_in[0] pin for the Motion button. Each input should have a resistor pull-down of about 10 KOhms to GND of the TT06 chip. Each switch or push-button must connect the TT06Chip VDD to the input when closed.
Connect either low-current (5-10 ma) LEDS or a LED Driver device a Logic Analyzer to the uo_out[7:0] pins for X and Y position values (4-bit binary for each axis) to be displayed.
