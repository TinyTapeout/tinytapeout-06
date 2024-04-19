<!----

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Cambio de giro de motor CD.

A schematic of the circuit may be found at:

https://wokwi.com/projects/395344363336889345

The circuit has 10 inputs:

| Input    | Setting                     |
| -------- | -------                     |
| CLK      | Not Used                    |
| RST_N    | Not Used                    |
| 01       | Input A                     |
| 02       | Not Used                    |
| 03       | Not Used                    |
| 04       | Not Used                    |
| 05       | Input B                     |
| 06       | Not Used                    |
| 07       | Not Used                    |
| 08       | Input C                     |

TENEMOS 3 ENTRADAS CON COMPUERTAS NOT LAS CUALES ESTAN RELACIONADAS CON DOS COMPUERTAS OR,LAS COMPUERTAS NOT LA RELACION QUE ENTRA ES LO CONTRARIO A LO QUE SALE POR EJEMPLO,SI ENTRA 1 SALE 0 Y SE ENTRA 0 NSALE 1 ESTAS ENTRADAS VAN RELACIONADAS CON LAS COMPUERTAS AND PERMITINDO QUE UN VALOR DE ENTRADA NO SEA MODIFICADO POR LA COMPUERTA NOT.LA OTRA ENTRADA DE LA COMPUERTA OR DEPENDE DE LO QUE SALE DE LAS COMPUERTAS NOT PERMITIENDO ASI EL CAMBIO, UNA SALIDA DE LA OR ENTRA AND QUE DEPENDE DE LO ANTERIOR Y OTRAS DE SUS ENTRADAS DEPENDE LE LA PRIMER ENTRADA SI EN LA AND ENTRA 1 Y 1 LA SALIDA ES 1 PERMITIENDO ASI EL GIRO SI LA COMNIACION DE ENTRADAS CAMBIAN A LA SEGUNDA AND EL CAMBIO SE DA DE RECHA A IZQUIERDA.


| Output   | Value in    |
| -------- | -------     |
| 01       | A           |
| 02       | Not Used    |
| 03       | Not Used    |
| 04       | Not Used    |
| 05       | Not Used    |
| 06       | Not Used    |
| 07       | Not Used    |
| 08       | B           |

EN LA SALIDA A EL VALOR DE LA AND EN 1 EL CUAL HACER QUE EL MOTOR GIRE A LA DERECHA 
EN LA SALIDA B EL VALOR DE LA SEGUNDA AND EN 1 Y EL DE LA PRIMERA AND REGRESA A 0 ESO PROVOCA EL CAMBIO DE GIRO DE DERECHA A IZQUIERDA.

A python implementation of the 32-bit Fibonacci LFSR can be found at the link below. It may be used for testing the hardware for sequences longer than the initial 100 values.

https://github.com/icarislab/tt06_32bit-fibonacci-prng_cu/main/docs/32-bit-fibonacci-prng_pythong_simulation.py

## External hardware

No external hardware is required.
