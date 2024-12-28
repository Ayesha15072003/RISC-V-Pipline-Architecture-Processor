About the Project
This project is a RISC-V 5-Stage Pipelined Processor built to show how a processor can execute instructions more efficiently by dividing the work into different stages. The processor uses a pipeline, which allows it to process multiple instructions at the same time by splitting them into 5 stages: Instruction Fetch, Instruction Decode, Execution, Memory Access, and Write Back.

Key Features
5-Stage Pipeline: The processor is divided into 5 stages: Fetch, Decode, Execute, Memory Access, and Write Back. Each stage handles part of an instruction.
Parallel Processing: The processor can handle multiple instructions at once, speeding up performance.
RISC-V Instructions: The project supports a basic set of RISC-V instructions, including:
Arithmetic Instructions: ADD, SUB, AND, OR, etc.
Load/Store Instructions: Load and store data from memory.
Branch Instructions: Conditional branches (e.g., BEQ, BNE).
Memory Access: Supports both reading from and writing to memory.
Getting Started
1. Clone the Repository
First, get a copy of the project by running the following command:

git clone https://github.com/EbaaHaq/RISC-V-5-Stage-Pipelined-Processor.git
cd RISC-V-5-Stage-Pipelined-Processor
2. Open the Project
Open the project in VSCode or any editor of your choice. Make sure you have the necessary extensions installed to work with SystemVerilog.

3. Compile the Code
Use this command to compile the design files:

vlog *.sv
4. Run the Simulation
Run the simulation with this command:

vsim -c tb_processor -voptargs=+acc -do "run -all"
5. View the Simulation Waveform
After running the simulation, you can view the results using GTKWave:

gtkwave processor.vcd
This will open a graphical waveform viewer where you can see the processor's activity over time.

What’s Inside the Processor
Pipeline Stages
The processor works by breaking each instruction into five steps:

Instruction Fetch (IF): Get the instruction from memory.
Instruction Decode (ID): Figure out what the instruction is and prepare the needed data.
Execution (EX): Perform the actual operation (like adding numbers or comparing values).
Memory Access (MEM): Read or write data from/to memory.
Write Back (WB): Write the result back to the register file.
Supported Instructions
The processor supports the basic RISC-V instructions, such as:

Arithmetic: ADD, SUB, AND, OR, XOR
Load/Store: LW, SW, etc.
Branch: BEQ, BNE, BLT, etc.
Jump: JAL, JALR
How It Helps You Learn
This project is perfect for understanding how a processor works, especially how it uses a pipeline to speed up the execution of instructions. It’s a great starting point for anyone learning about computer architecture or pipelined processors.
