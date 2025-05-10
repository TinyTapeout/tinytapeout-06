<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A 3-stage dickson charge pump. The output voltage is `Vout = 4*(VPWR - Vths) = ~5.44 V` where `VPWR` is the digital input voltage (1.8 V), and Vths is the threshold voltage of the LVS NMOS (nominal 0.44 V when width=7, length=8).

## How to test

Apply a clock signal of 2 MHz to the `clk` input. In TT06, the analog pin voltage is limited to 1.8 V, so the output voltage will be divided by 6. You can measure the divided output voltage at the `ua[0]` (vout_div) pin.

## Simulation results

Post layout simulation showing the output voltage `x1.vout` and the divided output voltage on ta `ua[0]` pin, with ~16.8 mega ohms load (the internal voltage divider). The output voltage stabilizes at ~5.07 V, and the divided output voltage at ~0.85 V. The current draw is about 355 nA.

![output voltage and divided voltage](sim_graph_vout.png)

The following graph shows the input clock, the intermediate voltages at the output of each stage, the output voltage, and the divided voltage as they rise during the first 10 us of operation.

![output voltage and intermediate voltages](sim_graph_stages.png)

## Silicon measurements

The output voltage on `ua[0]` was measured with multimeter that has a 7.8MΩ input impedance, at various clock frequencies. The following table summarizes the results:

| Input Frequency (KHz) | ua[0] Voltage | Charge Pump Voltage \* |
| --------------------- | ------------- | ---------------------- |
| 0                     | 0.090         | 0.540                  |
| 10                    | 0.107         | 0.642                  |
| 50                    | 0.171         | 1.026                  |
| 100                   | 0.267         | 1.602                  |
| 250                   | 0.462         | 2.772                  |
| 500                   | 0.604         | 3.624                  |
| 1000                  | 0.673         | 4.038                  |
| 2000                  | 0.704         | 4.224                  |
| 5000                  | 0.716         | 4.296                  |
| 7500                  | 0.716         | 4.296                  |
| 10000                 | 0.716         | 4.296                  |
| 15000                 | 0.714         | 4.284                  |
| 20000                 | 0.712         | 4.272                  |
| 40000                 | 0.698         | 4.188                  |
| 62000                 | 0.676         | 4.056                  |

\* The charge pump voltage is the ua[0] voltage measurement multiplied by 6. This is because the analog pin voltage is limited to 1.8 V, so the output voltage will be divided by 6.

The following graph shows the output voltage as a function of the input frequency:

![output voltage vs frequency](silicon_graph.png)

Overall, it seems that the charge pump works as expected, with the output voltage peaking at around 4.3 V when the input frequency is in the 5-10 MHz range.
