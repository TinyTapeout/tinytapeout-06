<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

In this little game the player guesses a 8-bit unsigned number by setting a binary number on digital input port 'ui_in'. The player can manually follow the 'successive approximation' algorithm like its implemented in SAR ADCs to find the value. A 7-segment LED connected to 'uo_out' tells the player if his provided value is above, below or matching the wanted number.

## How to test

Put the 'reset' port low (press the reset button on the demo board) and hold it for about a second in order to generate a secret number. Then set the DIP switches of the demo board in order to input a 8-bit value to the 'ui-in' port. The 7-segment LED will give immediate feedback if the player's number is above, below or exactly machting the 'secret' number. The player can continuously adjust the DIP switches until the wanted number is found. 

To play another game just press the reset button again.

## External hardware

This game utilizes the DIP switch and the 7-segment LED of the demo board.
