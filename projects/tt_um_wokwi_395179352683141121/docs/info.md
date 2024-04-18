<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
Everything is controlled using the CLOCK, RESET, and input pins.
The first step after starting the simulation is pressing RESET.

### Setting a Passcode
To set a passcode, IN0 will need to be set to HIGH for the duration
of the setup. Then, create a combination of IN1, IN2, IN3, and IN4.
This will be your passcode after setting IN0 back to LOW. The passcode
can be reset anytime with IN0.
OUT 0~3 represent the current password of the lock.

### Unlocking
To unlock the combination lock, you will set IN1, IN2, IN3, and IN4 to
the previous combination in `Setting a Passcode`. To verify, set IN5
to HIGH. If correct, the LED at OUT4 will go HIGH.
The lock will only be in an unlocked state if IN5 is held at HIGH.
Returning IN5 back to LOW will lock the combination lock again.

### Number of Attempts
The user will only have 3 tries to get the right combination before
the input pins IN1, IN2, IN3, and IN4 become pin-locked (unusable). Once the 
lock become unusable, OUT5 will go LOW. A press of the RESET button will
turn it back to normal.

## How to test

The normal flow of using the design is to first set a password of your
liking (assuming you are the admin). Then, the lock would be free to use.
If in a case where the user failed three times to unlock the lock, it is up
to the admin to reset the pin-lock for continued use.

## External hardware

A microcontroller (or other hardware of sorts) that allows only the admin
to be able to reset the pin-lock is reccomended. Buttons, switches, or
other forms of input are necessary for physical operation of the lock.
