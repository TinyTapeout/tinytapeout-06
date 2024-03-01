<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Ziel dieses Projekts ist es, einen effizienten digitalen Filter zu entwerfen und zu implementieren, der in der Lage ist, unerwünschte Frequenzen aus einem digitalen Signal zu filtern.

Der FIR-Filter (Finite Impulse Response) zeichnet sich durch seine endliche Impulsantwort aus, die durch eine endliche Anzahl von Koeffizienten definiert wird. In diesem Fall werden lediglich zwei Koeffizienten verwendet, was den Entwurfsprozess vereinfacht und die Implementierung auf einem FPGA (Field-Programmable Gate Array) oder einem anderen digitalen Schaltkreis optimiert.

Die zwei Koeffizienten werden sorgfältig ausgewählt, um die gewünschte Frequenzantwort des Filters zu erreichen. Dabei ist es wichtig, die Anforderungen des Anwendungsfall zu berücksichtigen, sei es für Audioverarbeitung, Bildverarbeitung oder eine andere Anwendung im Bereich der Signalverarbeitung.

Belegung der digitale Inputs und Outputs:
- ui_in 8 bit Einganssignal 'x'
- uio_in 8 bit Koeffizienten 'const\_h'
- uo_out 8 bit Ausgangssignal 'y'
- uio_out nicht verwendet!
- uio_oe nicht verwendet!

Ursprünglich war die Programmierung des Filters mit vier Koeffizienten geplant, jedoch musste diese Ambition aufgrund von Kapazitätsbeschränkungen des Chips auf zwei Koeffizienten reduziert werden. Im Code sind entsprechende Ergänzungen für vier Koeffizienten auskommentiert, was die Möglichkeit einer zukünftigen Erweiterung des Programms gewährleistet. Um nun sämtliche Koeffizienten mit nur einem 8-Bit-Eingang einzulesen und in das entsprechende Register zu speichern, wurde eine Art Schieberegister implementiert. Jede neue Flanke des Clock-Signals ermöglicht es, einen neu eingelesenen Wert an der gewünschten Position im Register abzulegen. Sobald die maximale Anzahl an Plätzen im Register belegt ist, wird die Flag auf Low gesetzt und der Zähler zurückgesetzt. Das Eingangssignal wird ebenfalls mittels eines Schieberegisters eingelesen, indem der Wert im Register in jedem Schritt um eine Stelle verschoben wird. Nun zur eigentlichen Filteroperation: Die gewünschten Koeffizienten werden mit dem Eingangssignal multipliziert und nach jedem Schritt summiert. Dabei ist zu berücksichtigen, dass die beiden Register unterschiedliche Größen haben und daher angepasst werden müssen. Das gefilterte Eingangssignal wird als Ausgangssignal aus einem Ausschnitt der in der Summe gespeicherten Bitfolge ausgegeben. Diese Schritte gewährleisten eine präzise Signalverarbeitung und verdeutlichen die Anpassungsfähigkeit des Programms für potenzielle zukünftige Erweiterungen.

## How to test

siehe Testbench.

## External hardware

You do not need any special external hardware.
