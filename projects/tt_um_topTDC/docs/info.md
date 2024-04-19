<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->


# Convertidor de Tiempo a Digital (TDC)

# How it works

El proyecto consiste en el diseño de un circuito Front end o interfaz para convertir a digital la señal proveniente de un sensor con salida en tiempo. La industria nos proporciona un sinfín de sensores para medir o monitorear diferentes variables físicas, dichos sensores pueden proporcionar su señal en diferentes formas; voltaje, corriente, frecuencia, tiempo (ancho de pulso), entre otras. El bloque que se propone se enfoca en la conversión de tiempo (definido entre el flanco de subida y bajada de un pulso) a un formato digital, también conocidos como circuitos **TDC (Time to Digital Converter)**, para posteriormente enviarlo vía RS232 para que pueda ser monitoreado en una PC o dispositivo compatible con el protocolo RS232. 

En la _figura 1_ se muestra el diagrama a bloques del sistema, como se observa se compone de un bloque llamado **contadorTDC**, el cual se encarga de realizar el conteo una vez que se recibe un pulso de entrada, cuando el pulso finaliza se guarda el dato generado en un registro y posteriormente se envía en al exterior en forma serial mediante el bloque **RS232_TX**. El bloque RS232_TX funciona a una velocidad de 9600 baudios con 8 bits de datos y paridad impar, de tal manera que en la PC o dispositivo usado para visualizar la información debe configurarse de la misma manera. El funcionamiento del sistema está controlado por la **máquina de estados**, cuyo funcionamiento es de la siguiente manera: cuando se recibe el flanco de subida del pulso de entrada el contador se activa y, al finalizar el pulso se pasa a un estado que hace que se almacene el valor del contador, posteriormente este valor es enviado al transmisor para que sea enviado de manera serial por el módulo **RS232_TX**, finalmente el sistema regresa al estado inicial para poder recibir un nuevo pulso. 

![](topTDC.png)
_**Figura 1.** Diagrama a bloques del TDC._

>[!NOTE] 
>En la _figura 2_ se muestra el diagrama de conexión del sistema con los pines del Frame del chip y a continuación se proporciona una descripción de las señales en cada una de ellas.
>
> - **clk -> clk**.- Señal de reloj del sistema, la cual será de 50MHz.
>   
> - **in_out[7] -> Pulso/señal**.- En este pin de entrada se introducirá el pulso de entrada que será convertido a digital por el sistema. El ancho del pulso debe estar entre 40ns a 5.1us. Este pulso puede ser proporcionado por un _generador de funciones_ o la señal proveniente de un _sensor en forma de pulsos_.
>
> - **in_out[6] -> reset**.- Este pin de entrada produce el _reset del módulo transmisor_, el cual debe ser activado para inicializar dicho múdulo, se recomienda conectar un _push button_ configurado en pull down.
>
> - **in_out[1] -> tx**.- Pin de salida por el cual se envía el dato digital de manera serial, dicho dato corresponde al valor digital del ancho del pulso de entrada, con una resolución igual al periodo de la señal de reloj. Para poder capturar el dato en una computadora mediante un monitor serial, se deberá conectar este pin a la terminal RX del módulo RS232 que recibirá el dato; el cual deberá tener la siguiente configuración:
>
>    - Baud rate: 9600
>    - Data bits: 8 bits
>    - Paridad: impar (odd)
>
> - **in_out[0] -> eot**.- Pin de salida que permite monitorear la bandera que indica el final de una transmisión, en este pin puede ser conectado un _led_. Sin embargo, debido a la velocidad de transmisión éste será casi imperceptible, por lo que es opcional. Aún así podemos conectar un _osciloscopio_ para su mejor visualización.
>

![](design.fw.png)
_**Figura 2.** Diagrama a bloques del TDC dentro del área definda._

# How to test

Las pruebas se realizaron en **Modelsim** en su versión gratuita, para ello se hizo una adecuación generando un pequeño modulo PWM dentro de la aplicación para simular lo que sería la señal de un sensor, para este caso se opto por generar cuatro valores de PWM los cuales generan cuatro valores distintos que se transmiten por RS232, en la _figura 3_ se muestra la primer combinación de PWM que corresponde a una combinación 00 y que genera un valor binario 00010011.

![](00.png)
_**Figura 3.** Combinación 00 que genera un valor binario 00010011._

El siguiente valor de prueba fue la combinación 01 la cual genero un valor binario 00100111 y dicha simulación se puede observar en la _figura 4_, en dicha figura se puede observar como cambia el ancho de pulso que hace que se genere dicho valor binario.

![](01.png)
_**Figura 4.** Combinación 01 que genera un valor binario 00100111._

A continuación el siguiente valor de prueba fue la combinación 10 la cual genero un valor binario 00111011 y dicha simulación se puede observar en la _figura 5_, en dicha figura se puede observar como cambia el ancho de pulso que hace que se genere dicho valor binario.

![](10.png)
_**Figura 5.** Combinación 10 que genera un valor binario 00111011._

Para finalizar la última combinación 11 genero un valor binario 01001111 y dicha simulación se puede observar en la _figura 6_, en dicha figura se puede observar al igual que las anteriores como cambia el ancho de pulso que hace que se genere dicho valor binario.

![](11.png)
_**Figura 6.** Combinación 11 que genera un valor binario 01001111._

Para finalizar la etapa de pruebas se opto por realizar una prueba en una **tarjeta de desarrollo AMIBA 2**, la cual cuenta con un FPGA Spartan 6 XC6SLX9, 216/576 Kb de Block RAM, un oscilador de 50 MHz, convertidor USB/RS232 (FTDI FT2232HL), leds de propósito general, switch de dos posiciones de propósito general, etc. En el siguiente [enlace](https://youtu.be/AC0O6wIpQp8) se podrá observar un video en el cual se muestran las distintas combinaciones simuladas anteriormente y además se puede ver el valor enviado por el puerto serial, el cual es monitoreado mediante la aplicación **Serial Debug Assistant**, como recurso extra se hizo uso de los leds de propósito general como apoyo para poder visualizar el valor generado y a su vez poder ver este valor en el monitor serial, que en nuestro caso se muestra en hexadecimal corroborando lo generado con lo enviado.

<!---
## External hardware

TDC
-->
