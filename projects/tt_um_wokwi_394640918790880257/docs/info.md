<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
The circuit consists of 8 input and output pins. 4 input and output pins are reserved for the 4 x 4 matrix keypad. The rows are connected to the output (0,1,2,3) while the columns are connected to the inputs (3,4,5,6). The circuit is powered at input pin 0. A high clock signal is recommended to prevent delays when keys are pressed, so the frequency was set as 100 Hz. Pins 1 and 2 are used for setting and resetting the circuit's flip-flops. This circuit does not require setting any flip-flops, so this input should be grounded. The Reset should be connected to a button because every time the circuit is started for the first time, the flip-flops may start with random states, which can impede the correct operation of the circuit. Therefore, the button is used to reset it the first time it is used and to be able to register a new password. Output pin 6 is the signal indicating whether a password is registered. Output pin 5 indicates the state of the lock; if the entered password matches the registered password, the signal is positive. Pin 7 is a verification signal indicating that the circuit is operating correctly.

Basic Operating Principle:

The circuit must receive a signal from a 4x4 matrix contact keypad to register and receive password attempts. For this, the circuit must energize each row of the keypad so that when a button is pressed, the contact of that row x and column y sends a signal (x,y) to the circuit. Additionally, the circuit must automatically register 4 digits and then enter the "password attempt" mode, where all subsequent digits are used to attempt to enter the password.

Therefore, there are 8 registers to receive the Row x Column coordinates of the keypad. Since the password consists of 4 digits, there are 4 sets of these 8 registers connected in series. There are two main states: "Register password" and "Password attempt". Each state has 32 registers, grouped into 4 sets in series, each with 8 registers in parallel. All registers are connected with the clock in parallel.

## How to test

After turning on the circuit and restarting it for the first time, the circuit has 3 logical operating states: No key pressed, Key pressed, Key released.

When no key is pressed, the clock signal is sent in parallel to 4 registers in series (Shift registers). These registers sequentially transfer only one positive signal in a loop. This allows the circuit to energize only one row of the keypad at a time.

When a key is pressed, the signal travels through the 4 registers until it reaches the respective row that had contact with the column. When this row is reached, the closed contact of this row with the column of the pressed key energizes that column. The column sends the signal back to the circuit, which triggers a clock gating that blocks the clock signal to the registers. This way, the shift circuit is "paused" while the column is energized. To ensure that only one row is connected, there is a verification step. If it is confirmed that only one row is connected and the column is activated, a "button pressed" flip-flop is set. This flip-flop serves as a small delay to allow a clock step for the password registers. This permission is achieved with an AND gate, which connects the delay flip-flop and a control flip-flop, responsible for controlling the "password attempt" and "password registration" states. While no password is registered, the circuit first feeds the "password registration" registers.

When the key is released, the column is de-energized, and then the "button pressed" flip-flop is automatically reset, sending a low signal to the clock of the registers. Thus, when another key is pressed, the clock of the registers goes to the rising edge, and the coordinates data are shifted until reaching the 4th and last register.

The last register of the "Password Register" sends a signal to the state control flip-flop, which is then set and starts blocking any clock from that set of registers. This activates the "Password Attempt" mode, where now the clock step is only for this other set of registers. When the same 4 digits are pressed in the exact order as those registered, a high signal is sent at the output, indicating that the password is correct.

## External hardware

- 1 Arduino 4x4 Matrix membrane Keyboard
- 1 Step Button
- Couple of LEDs

![Diagram](diagram.png "Diagram")
