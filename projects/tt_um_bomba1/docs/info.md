<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->


# LATINPRACTICE_2024
![Logo](https://latinpracticecom.files.wordpress.com/2023/06/logo-lp-2-1.png)

Este proyecto  forma parte de la iniciativa LATINPRACTICE_2024
con el cual se pretende que profesores universitarios y alumnos de nivel medio superior y superior, tengan acceso a herramientas de software libre para el diseño de circuitos integrados .

Este proyecto es una máquina de estados sencilla que permite controlar el llenado y vaciado automático de un depósito superior de agua alimentado por una bomba conectada a un depósito inferior de agua.


## How it works
El circuito consta de una máquina de estados tipo Mealy con tres estados (Espera, llenado y Alarma).

Las entradas del circuito corresponden a sensores que detectan la presencia o ausencia de agua (1 o 0 lógico), es decir son señales digitales. Un sensor para la cisterna (depósito inferior) y dos sensores para el depósito superior. 

EL circuito cuenta con dos salidas digitales, la primera para encender y apagar la bomba y la segunda para encender una luz o una alarma que indique que no hay agua en el depósito inferior.

El proyecto utiliza un modelo de máquina de estados finitos con tres estados para controlar el llenado del depósito superior mediante una bomba. Los tres estados son:

1. **Espera (`espera`)**: Este estado indica que el sistema está en espera de alguna acción. En este estado, la bomba está apagada (`bomba_o = 0`) y la alarma está desactivada (`alarma_o = 0`). La transición desde este estado ocurre cuando se detecta que el depósito superior está vacío y que hay agua en el depósito inferior (`sensores_i = 001`) o cuando se detecta que la cisterna está llena (`sensores_i = 111`)  o que no hay agua en el depósito inferior (`sensores_i = xx0`) que lo lleva al estado de alarma.

2. **Llenado (`llenado`)**: En este estado, la bomba está encendida (`bomba_o = 1`) para llenar el depósito. La alarma permanece desactivada (`alarma_o = 0`). La transición desde este estado ocurre cuando se detecta que la cisterna está llena (`sensores_i = 111`), lo que indica que el depósito ha alcanzado su capacidad máxima  y regresa al estado de Espera o que no hay agua en el depósito inferior (`sensores_i = xx0`) que lo lleva al estado de alarma.

3. **Alarma (`alarma`)**: Este estado se activa cuando se detecta una condición de alarma, como la falta de agua en el depósito inferior . En este estado, la bomba se apaga (`bomba_o = 0`) y se activa la alarma (`alarma_o = 1`). La transición desde este estado ocurre cuando se detecta que el depósito inferior está lleno (`sensores_i = XX1`), lo que indica que se ha resuelto la condición de alarma.

Cada estado y transición está definido en el código Verilog proporcionado, lo que permite controlar el llenado del depósito mediante la activación y desactivación de la bomba en respuesta a las lecturas de los sensores.



## How to test

TODO


## External hardware
La asignación de entradas y salidas del diseño del control de la bomba a las entradas y salidas del proyecto Latinpractice son como se indica a continuación.

ck:       Conectado a   uio_in[7].
rst_i:    Conectado a   uio_in[6].
sensores_i: Conectado a uio_in[5:3].
alarma_o: Conectado a uio_out[1].
bomba_o:  Conectado a uio_out[0].

Como puede notarse, el proyecto de la bomba, para hacer más legible el código, indica cuando un puerto es de entrada colocando un _i al final del nombre del puerto (rst_i) y cuando un puerto es de salida un _o (bomba_o), excepto en el puerto de reloj.

Las entradas de los sensores pueden ser emuladas con botones o con switches conectados a los puertos bidireccionales uio_in[5:3]. Las salidas pueden emularse utilizando LED's conectados a uio_out[0] y uio_out[1] a traveés de una resistencia limitadora de corriente.

## Authors

- [@Arízaga-Silva](https://www.researchgate.net/profile/Juan-Antonio-Arizaga-Silva)

- [@Sanchez-Rincón](https://www.researchgate.net/profile/Ismael_Rincon)

- [@Muñiz-Montero](https://www.researchgate.net/profile/Carlos-Muniz-Montero)
