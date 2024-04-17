<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a settings recommender for photography. The ISO, shutter speed and focal ratio values are inputed using a rotational encoder and a four-digit seven-segment display. After inputing the values, an external luxmeter is read via SPI interface and all of the values are used to retrieve the recommended setting from a LUT in an SPI Flash. The recommended value is displayed on the four-digit seven-segment display.

## How to test

This project uses a user interface consisting of a rotational encoder and four-digit seven-segment display. After reset or power-up, first the ISO value is selected by rotating the encoder. The current value is displayed on the four-digit seven-segment display and it is confirmed by a short press on the rotational encoder. Next, the shutter speed is selected by rotating and confirmed by a short press of the encoder. Finally, the focal ratio is selected by rotating the encoder and it is confirmed by a medium press of the encoder. After reading the luxmeter and the flash-based LUT, the recommended settings value is shown on the four-digit seven-segment display. 

## External hardware

External hardware comprises of a rotational encoder, a four-digit seven-segment display, SPI luxmeter (e.g. Pmod ALS) and SPI flash (e.g. MX25L3233FMI-08G).
