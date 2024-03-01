<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

     Simple implementation of the game "Snake" with VGA Output.
      Due to size limitations snake can only grow to 9 body parts.
      Game resets when snake touches border or any of its body parts
      Vga output is compatible with tiny vga pmod.

## How to test

      After reset snake can be controlled though inputs. When collecting an apple snake grows by 1 body part. 
      clock has to be set to 25.179 Mhz for vga sync signal generation to work.
      inputs should be done with push buttons. Not pressed is logic 0, pressed is logic 1
      So an external circuit with pull down resistors should be used for input.
      If no tiny VGA pmod is available a vga dac like in this project:https://tinytapeout.com/runs/tt04/178/
      could probably also be used.

## External hardware

VGA Display, external buttons for input 
