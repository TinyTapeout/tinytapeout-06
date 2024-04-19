<!---

This file is used to generate your project data sheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.

-->

## The Team

John Cope, Kasey Hill, Matt Johnson, Jacob Reyna

## How it works

Simon't involves the device playing a sequence of button-lamps, and the player needs to repeat the sequence by pressing corresponding buttons.

The game keeps a high score for as long as power is maintained, or until it is reset.

Each button has an associated lamp that lights when being presented to the player, as well as when the player presses the buttons back into the game.

When a new game starts, the device shines a button-light for a half second, and the player has to press the same button-lamp within five seconds. Then the game picks a new button-lamp from any of the four, and plays the first color and the new color for the player. the player must press the buttons in the same order they are presented. This continues until the player presses a wrong button, the player waits too long to press a button, or the game runs out of memory at 32 moves.

When the player enters a correct move in a sequence, the timeout for "forget" death is reset, and, if there is at least one additional color in the sequence, the eng-game timer begins again.

At the end of the game, if the player has set a new high score, the game pulses each lamp in the sequence of red-yellow-green-blue. If the player fails to set a new high score, the game pulses each lamp in the reverse order. 


## External hardware

Lamps need to be driven from the following outputs: 0 to red, 1 to yellow, 2 to green, and 3 to blue. Four buttons is connected to inputs 0 to 4, and they is physically located to correspond with the lamps.

A fifth button is connected to input 5, and is used to start a game.