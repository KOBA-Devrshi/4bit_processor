# 4-bit Processor Design and Simulation (Verilog)

## Overview
This project implements a simple 4-bit processor using Verilog HDL.  
The processor executes basic instructions and updates a 4-bit accumulator.

## Features
- 4-bit accumulator
- Instruction based execution
- Simple ALU operations
- Simulation using waveform analysis

## Instruction Set

| Instruction | Operation |
|-------------|-----------|
| 0001 | Increment accumulator |
| 0010 | Decrement accumulator |
| 0011 | Add register value |
| 0100 | AND operation |

## Tools Used
- EDA Playground
- Icarus Verilog
- EPWave

## Project Files

4bit_processor
│
├── processor.v
├── processor_tb.v
├── waveform.png
└── README.md

## Simulation
The processor is tested using a Verilog testbench.  
Waveform output verifies correct instruction execution.

## Author
Devrshi Shailesh Yaduvansh
