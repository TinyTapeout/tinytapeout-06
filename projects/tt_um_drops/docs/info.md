<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project uses two mechanical buttons and an 8x8 display to plan arcade style game called drops.
The goal is to move a bar horicontal in order to catch the vertical falling drops.
The player starts with a fixed numer of lifes. Each time the drop is missed, the lifes are deducted by one.
When all lifes are used, the game is over an can be restarted with the reset button.

## How to test

After plugging everything in as specified in the info.yaml file, the display should light up. 
If this is not the case, change row and colum pins

There are two things that need to be tested and eventually corrected:
- Drop moving upwards: change the column pins (7 to 0, 0 to 7 etc)
- Bar mowing in wrong direction: either change left and right button or siwcht row pins (7 to 0, 0 to 7 etc)

## External hardware
In addition to the Tiny Tapeout board there are two buttons, and an 8x8 display necessary.
Base on your desired connection of the buttons you might need an additional power source.
