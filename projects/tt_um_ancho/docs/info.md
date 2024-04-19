<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
El PWM configurable de ciclo de trabajo incrementales un dispositivo diseñado para generar señales PWM (Modulación por Ancho de Pulso) con ciclos de trabajo incrementales basados en tres señales de entrada digitales. Este dispositivo permite una fácil configuración del ciclo de trabajo para adaptarse a una variedad de aplicaciones. El ciclo de trabajo será incremental con valor de 12.5% para cada combinación de entrada.

## How to test
Usando los puertos de entrada en combinacion de estados logicos y con un uno logico en enable, puede visualizarse en la salida como la señal de ancho de pulso varia de acuerdo a las siguientes combinaciones:
000=12.5%
001=25%
010=37.5%
011=50%
100=62.5%
101=75%
110=87.5%
111=100%

## External hardware
Generador de señales para generar la señal de reloj de 10MHz, osciloscopio para poder visualizar el ancho del pulso.
