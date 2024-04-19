<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
The designed instrumentation amplifier extracts very low differencial mode signal from very noisy common mode signals by means of a three opamp array. The differential gain can be changed by two digital bits called  "Sel_26dB" and "Sel_42dB", when Sel_26dB = 0  Sel_42dB = 0 the differential gain is 0 dB, when Sel_26dB = 1 and Sel_42dB = 0 the differential gain is 26 dB, when Sel_26dB = 1 and Sel_42dB = 1 the differential gain is 46 dB. In all cases the CMRR is 120 dB. The designed instrumentation amplifier also included a sense circuits that helps to stabilize the analog ground. 

## How to test

1. Apply a DC level equals to vdd = 1.8V and vss = 0V.
2. Sinks a DC current of 20 uA into the vbn node.
3. Set the following bits to Sel_26dB = 0 and Sel_42dB = 0.
4. Apply a 1 mV differential signal into Vip and Vin analog ports using a balum.
5. Measure the differential responds at node Vo using Keysight-E5061B ENA vector network analyzer, a 0 dB gain shall be expected.
6. Apply a 1 mV common signal into Vip and Vin analog ports.
7. Measure the common responds at node Vo using Keysight-E5061B ENA vector network analyzer.
8. Performs the substraction of the differential gain and the common gain, the CMRR responds should be obtined.
9. Set the following bits to Sel_26dB = 1 and Sel_42dB = 0.
10. Apply a 1 mV differential signal into Vip and Vin analog ports using a balum.
11. Measure the differential responds at node Vo using Keysight-E5061B ENA vector network analyzer, a 26 dB gain shall be expected.
12. Apply a 1 mV common signal into Vip and Vin analog ports.
13. Measure the common responds at node Vo using Keysight-E5061B ENA vector network analyzer.
14. Performs the substraction of the differential gain and the common gain, the CMRR responds should be obtined.
15. Set the following bits to Sel_26dB = 1 and Sel_42dB = 1.
16. Apply a 1 mV differential signal into Vip and Vin analog ports using a balum.
17. Measure the differential responds at node Vo using Keysight-E5061B ENA vector network analyzer, a 42 dB gain shall be expected.
18. Apply a 1 mV common signal into Vip and Vin analog ports.
19. Measure the common responds at node Vo using Keysight-E5061B ENA vector network analyzer.
20. Performs the substraction of the differential gain and the common gain, the CMRR responds should be obtined.


## External hardware
- 1 PCB
- 1 Balum
- 1 Keysight-E5061B ENA vector network analyzer
- 3 Female-Female BNC cable.
- 1 Female-Female-Female BNC T-adapter
- 1 Keithly 2231A power supply
- 1 Agilent 34401A digital multimeter 
