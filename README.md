# Nand2Tetris in Verilog

This repository contains my adventures (and possible miss-adventures) with going through [Nand2Tetris](https://www.nand2tetris.org/) but instead of using the provided HDL and tools I instead decided to use System Verilog so that I can learn more about it with the intention of running it on an FPGA along with it's own software stack.

This all results (hopefully) in a fully working 16-bit soft CPU that uses the [HACK Architecture](https://en.wikipedia.org/wiki/Hack_computer).

## Why?

1. I have a background in mostly software engineering and I want to learn more about hardware design so that I can try to move into more of a hardware role at work.
2. I've always had an interest in hardware and electronics.
3. I like learning new things.
4. My uni degree taught me no Computer Science D:
5. I want to learn more about how the CPU and computers work on the hardware and electronics level.
6. Why not!
7. How hard can it be :D

## Related projects

There are a few projects that I've either worked on or are working that are related to this project:

- [Hardware and Software Simulator (WIP)](https://github.com/block-01/Nand2Tetris-Hack-CPU-Simulators)

## The Project as a whole

The project is written in System Verilog with the simulators being written in C.
<!-- TODO: Add more detail and explain more about the project, the CPU and the rest of the components. -->

### Structure

The project is structured with the different components being separated out into their own files and directories.

<!-- TODO: Add a diagram showing the structure of the project. -->

### Tests

Each section of the soft core from the CPUs ALU, PC and Registers down to the individual logic gates has it's own TestBench.
These simulate each component to ensure that they function as expected based off a series of inputs.

Tests can be executed by running the script `test.sh`. This will build and run all of the chips and their associated testbenches within the project outputting `.vcd` waveform files within the `build` directory.
