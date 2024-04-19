<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a simple shoot the target game in a 32 x 32 square which calculates the trajectory of a ball.

A target will randomly be generated in the top two rows of the playing field and your goal is to position your cannon, aim it, and hit the target. The ball that is shot can be bounced off the left and right walls, but once it hits the ceiling, the game is over.

Your cannon will be at the bottom row of the 32 x 32 square. You will be able to move it left or right to any square on this bottom row. You will also have 7 different aiming positions.

Controls:

- ui[0]: "Move Left"
- ui[1]: "Move Right"
- ui[2]: "Aim Left"
- ui[3]: "Aim Right"
- ui[4]: "Shoot"

All shots will be in a linear fashion. For example, if you select the default aim position (which is Left 2 and Up 1), the ball will be shot linearly with a slope that goes left 2 and up 1.

Here are all the available aiming positions:

1. Left 2 Up 1
2. Left 1 Up 1
3. Left 1 Up 2
4. Up 1
5. Right 1 Up 2
6. Right 1 Up 1
7. Right 2 Up 1

The generated target's x and y position will be outputted in the uo[2:6] wires after the game is initialized. In the first cycle after initialization, these five bits will be driven to the x value and for the next cycle, they will be driven to the y value.

After shooting the ball, wait until uo[0] ("Result Valid") is set to high. This indicates that the simulation is over and the ball has hit the top of the screen. Then, uo[1] ("Hit") will tell you whether or not the ball has hit the target.

## How to test

To make sure that you hit the target, you will have to draw out the trajectory of the ball in the 32 x 32 grid.

## External hardware

N/A
