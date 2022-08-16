# iiitb_alu-Arithmetic and Logic Unit
This project simulates a arithmetic and logical unit (ALU) using Verilog Programming.
Here we are going to make a clock driven 4-bit synchronous ALU.

## Introduction
An ALU is the most basic part of any computer processor. This unit, as the name suggest, helps in any arithmetic and logical operations that come across the processor. Also, a N-bit processor has a N-bit ALU.Many times the Logical and Arithmetic part is divided into two different parts. This practice helps to keep the logic concise and easy to understand.


#### Data & Instruction Bus
In order to understand the working of the ALU, we need to understand how do we talk to the ALU.

First there is the data bus, through which we provide the data to be processed to the ALU. Thus in the given figure the A and B inputs are the 4-bit inputs, which work as the data supply for the ALU.

And secondly, we have Instructions that are necessary to tell the ALU which operation is to be performed with the operands. Here, we have 16 instructions(8 arithmetic and 8 logical), so a 4-bit instruction bus is used.
We also have a flag register which holds the different types of flags such as carry flag, zero flag, etc. but to keep things simple we will not introduce it in this design.

#### Introduction to clock concept => Synchronous design
Clock in FPGA (Field Programmable Gate Array) design is rather easy concept, since each flipflop is driven by a clock and FPGA is made up of many of such flipflops.

This simply implies that any change in other signals will occur either at rising edge of the clock or falling edge of the clock ( as per what is mentioned in the design ). Thus faster the clock the faster changes can occur and the more faster would be the design. Also, the design become synchronous as the changes occur at either of the edge.

### Arithmetic unit
The arithmetic unit comprises of the Arithmetic instructions as mentioned below:

#### Arithmetic Instructions

<img width="272" alt="image" src="https://user-images.githubusercontent.com/110079800/182906709-08027190-c12b-4d5a-a8a6-edfe65a92a27.png">





### Logical unit
The Logical unit comprises of the Logical instructions as mentioned below:

#### Logical Operations

<img width="216" alt="image" src="https://user-images.githubusercontent.com/110079800/182906416-fc193f09-5ff7-4cdf-84ae-6e660d91bd83.png">



Therefore, if we select the MSB to be ‘0’ we can access one of the Logical instructions and if we take it to be ‘1’ we can access Arithmetic instructions.


## Block Diagram
![](https://techno10tech.files.wordpress.com/2020/12/alu-1.png)

## Applications of ALU
* Arithmetic Logic Unit is used for performing arithmetic and logical operations.
* It can perform simple arithmetic calculations to complex arithmetic calculations like integration.
* In the case of logical calculations, it performs them using the concept of Gates.
* Left shifting a bit, right shifting bits, and carry forward concepts are also performed using the Arithmetic Logic Unit (ALU).
* Most of the operations that are performed by the CPU are being performed by the ALU. 
* The Working mode of CPU functions well only if the ALU works properly.

## About iverilog
Icarus Verilog is a Verilog simulation and synthesis tool. It operates as a compiler, compiling source code written in Verilog (IEEE-1364) into some target format. For batch simulation, the compiler can generate an intermediate form called vvp assembly. This intermediate form is executed by the vvp command. For synthesis, the compiler generates netlists in the desired format. 



## About GTKWave
GTKWave is a fully featured GTK+ based wave viewer for Unix, Win32, and Mac OSX which reads LXT, LXT2, VZT, FST, and GHW files as well as standard Verilog VCD/EVCD files and allows their viewing.



## Installing iverilog and GTKWave in Linux

Enter the following commands in Terminal



`$ sudo apt get update`



`$ sudo apt get install iverilog gtkwave`





## Steps to Clone the git Repository and Simulate the verilog code
 `$ git clone https://github.com/Nisha-B-Rajput/iiitb_alu `

 `$ iverilog -o alua.out iiitb_alu.v iiitb_alu_tb.v`

 `$ ./alua.out`

 `$ gtkwave alua.vcd`



## Output Waveform After Simulation
![image](https://user-images.githubusercontent.com/110079800/182903679-d15fb3d5-bd48-4a4e-ab26-028697cb61db.png)


## Synthesis of verilog Code

### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

## Steps to Install Yosys in Linux
`$ sudo apt-get update`

`$ sudo apt-get -y install yosys`

To synthesize

`yosys -s yosys_alu.sh`

![image](https://user-images.githubusercontent.com/110079800/184940990-a420823c-df42-40c5-ae54-26404ead3c6c.png)

## GLS-Gate Level Simulation
GLS is used to verify the logical correctness of design after synthesis.we run the test bench with netlist as design under test.

## steps to perform GLS

``` $ iverilog -DFUNCTTIONAL -DUNIT_DELAY=#1 primitives.v sky130_fd_sc_hd.v iiitb_alu_synth.v iiitb_alu_tb.v ```

## GLS OUTPUT

![image](https://user-images.githubusercontent.com/110079800/184203345-c7d3a67c-b787-4467-9655-0017ac725273.png)

## Contributors
* Nisha B Rajput

* Kunal Ghosh

* Dantu Nandini Devi

* Banda Anusha



## Acknowledgements
* Kunal Ghosh,Director,VSD Corp. Pvt. Ltd.


## Contact Information
* Nisha B Rajput,M Tech student,International Institute of Information Technology,Bangalore nisha.05.rajput@gmail.com

* Kunal Ghosh,Director,VSD Corp.Pvt. Ltd. kunalghosh@gmail.com

* Dantu Nandini Devi,Ms student,International Institute of Information Technology,Bangalore nandini.dantu@gmail.com

* Banda Anusha.M Tech student,International Institute of Information Technology,Bangalore Banda.Anusha@iiitb.ac.in



## References
* https://techno10.tech.blog/2020/12/15/arithmetic-logical-unit-verilog/
* https://teachcomputerscience.com/arithmetic-logic-unit/
