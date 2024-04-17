<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This projects is implementing Isolation forest algorithm using ML methods.

The i_tree design encapsulates a Verilog implementation for detecting (infering) anomalies in sensor data, specifically tailored for integration into System on Chips (SoCs) with a focus on AI accelerators. This design comprises three primary modules: the InputBuffer, the IsolationTreeStateMachine, and the i_tree top module that orchestrates their interaction.

InputBuffer Module: This module collects incoming sensor data bit-by-bit until it accumulates a full byte. It utilizes a double-buffering mechanism to manage data efficiently, ensuring that data processing by downstream components does not block incoming sensor data collection. The buffer toggles between collecting new data and allowing the processed data to be consumed, controlled by internal logic that responds to the data processing status.

IsolationTreeStateMachine Module: Once a complete byte of data is ready, this state machine takes over. It processes the data to determine if an anomaly is present based on predefined criteria (currently, a simplistic check against a set byte pattern, but intended to be expanded to more complex algorithms). It operates in several states: IDLE, CHECK_ANOMALY, and PROCESS_DONE, transitioning between these states based on the presence of valid data and completing the processing cycle.

Top Module (i_tree): This module integrates the InputBuffer and IsolationTreeStateMachine, routing signals between them. It feeds sensor data into the InputBuffer, takes the processed output, and directs it into the IsolationTreeStateMachine. It also handles the overall reset and clock signals for synchronization and system stability.

Together, these modules form a robust system for real-time anomaly detection, designed with scalability and efficiency in mind, making it suitable for embedded applications where performance and space are critical constraints.

## How to test

1st 8bit value are the data used for the anomaly detection.

## External hardware

Binary output sensor used for anomaly detection on workload of devices.
