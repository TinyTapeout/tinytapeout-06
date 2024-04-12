
## How it works

This is a 8 bit computer I made a long time ago in Logisim Evolution, which I have now decided to port to Tinytapeout and getting manufactured.
There is a little bit more information about how the CU works and the instructions supported but don't expect much
https://docs.google.com/document/d/1ZVZw_Kt-KQHER0Wr5ty7JpUEeox_284Mih4rwE16FVM/edit?usp=sharing

## How to test

The input pins and the output pins have been assigned respectively to the ui_in and uo_out respectively. As for the uio_in/out that needs to be configured with a SPI RAM and a SPI EEPROM.

The computer should start immediately once the clk starts driving it.

## External hardware

(check info.yaml for pins)
- SPI RAM 
- SPI EEPROM