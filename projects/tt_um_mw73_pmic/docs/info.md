<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This uses a set of state machines to generate 2 ADC controlled pwms. 
      
A heartbeat signal periodically pings the ADC to update the pwm's duty cycle. 

The heartbeat sends the conversion start (convStart) high signal to begin the conversion. The ADC sets up 
and then replies with a busy high when the ADC is ready to be read. When the busy high is read, the chip responds with a read and chip select 
(rd_cs) which are tied together. The parallel 8bit conversion is sent to the chip. See AD7819YNZ datasheet for details on ADC conversion. The
conversion is Mode 2.

After the ADC is read, the duel pwms' duty cycles are updated. 0 is the min voltage and 255 is the max voltage. The duel pwms are 180 deg out of
phase and should never overlap. Otherwise this could lead to shoot-thru which could destroy the FETs. A dead zone was built into the state machine 
to prevent this overlap.

## How to use

After reset, the syncRectifierLs and syncRectifierHs outputs will produce a pwm signal based on the 8bit parallel ADC input.
You need to build the circuit shown in the PMIC.png. You could also just hook up an oscilloscope to 
the syncRectifierLs and syncRectifierHs and see the 180 deg out of phase square waves.

## External hardware

https://www.analog.com/media/en/technical-documentation/data-sheets/ad7819.pdf (AD7819NZ 8-bit parallel output ADC)
https://www.digikey.com/en/htmldatasheets/production/638815/0/0/1/mcp14700 (MCP14700 Highside Driver)

## Future Versions

I plan to build the ADC internally so I'm not tying up 8 GPIO pins with the ADC parallel output. I also would like to implement current sensing, 
current feedforward, prebiasing, soft-switching, PID and other more advanced features if I have time.
