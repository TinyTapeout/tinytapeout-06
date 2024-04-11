<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

two four-bit || binary weighted vectors are read in and converted to two 1-bit serial stochastic streams with a PRBS and a comparator.  These signals are then fed into an AND gate, which multiplies the signal.  
https://en.wikipedia.org/wiki/Stochastic_computing
B. R. Gaines, “Origins of Stochastic Computing,” in Stochastic Computing: Techniques and Applications, W. J. Gross and V. C. Gaudet, Eds., Cham: Springer International Publishing, 2019, pp. 13–37. doi: 10.1007/978-3-030-03730-7_2. 
C. F. Frasser et al., “Using Stochastic Computing for Virtual Screening Acceleration,” Electronics, vol. 10, no. 23, p. 2981, Nov. 2021, doi: 10.3390/electronics10232981. 
M. Nobari and H. Jahanirad, “FPGA-based implementation of deep neural network using stochastic computing,” Appl. Soft Comput., vol. 137, p. 110166, Apr. 2023, doi: 10.1016/j.asoc.2023.110166. 
P. K. Gupta and R. Kumaresan, “Binary multiplication with PN sequences,” IEEE Trans. Acoust., vol. 36, no. 4, pp. 603–606, Apr. 1988, doi: 10.1109/29.1564.  
A. Alaghi and J. P. Hayes, “Survey of Stochastic Computing,” ACM Trans. Embed. Comput. Syst., vol. 12, no. 2s, pp. 1–19, May 2013, doi: 10.1145/2465787.2465794.  


## How to test

Use an ADLAM2000 and Python to control the reset and the clock. Hold A and B contents and watch the multiplier output. Use the DALM200 and Python to convert the signal back to binary weight signals.  The number of ones at any given time is the number

## External hardware

ADLAM2000
