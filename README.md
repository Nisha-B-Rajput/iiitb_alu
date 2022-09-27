# iiitb_alu-Arithmetic and Logic Unit
This project simulates an arithmetic and logical unit (ALU) using Verilog Programming.
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

## Python Installation
```
$ sudo apt install -y build-essential python3 python3-venv python3-pip
```

## Docker Installation
```
$ sudo apt-get remove docker docker-engine docker.io containerd runc (removes older version of docker if installed)

$ sudo apt-get update

$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
$ sudo mkdir -p /etc/apt/keyrings

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
$ sudo apt-get update

$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

$ apt-cache madison docker-ce (copy the version string you want to install)

$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io docker-compose-plugin (paste the version string copies in place of <VERSION_STRING>)

$ sudo docker run hello-world (If the docker is successfully installed u will get a success message here)
```

## OpenLane Installation
```
$ git clone https://github.com/The-OpenROAD-Project/OpenLane.git

$ cd OpenLane/

$ make

$ make test
```

## Magic Installation

For Magic to be installed and work properly the following softwares have to be installed first:

### Installing csh
```
$ sudo apt-get install csh
```

### Installing x11/xorg
```
$ sudo apt-get install x11

$ sudo apt-get install xorg

$ sudo apt-get install xorg openbox
```

### Installing GCC
```
$ sudo apt-get install gcc
```

### Installing build-essential
```
$ sudo apt-get install build-essential
```

### Installing OpenGL
```
$ sudo apt-get install freeglut3-dev
```

### Installing tcl/tk
```
$ sudo apt-get install tcl-dev tk-dev
```
### Installing magic
After all the softwares are installed, run the following commands for installing magic:

```
$ git clone https://github.com/RTimothyEdwards/magic

$ cd magic

$ ./configure

$ make

$ make install
```

## LAYOUT

### Preparation

The layout is generated using OpenLane. To run a custom design on openlane, Navigate to the openlane folder and run the following commands:<br>
```
$ cd designs

$ mkdir iiitb_alu

$ cd iiitb_alu

$ mkdir src

$ touch config.json

$ cd src

$ touch iiitb_alu.v
```

The iiitb_alu.v file should contain the verilog RTL code you have used and got the post synthesis simulation for. <br>

Copy  `sky130_fd_sc_hd__fast.lib`, `sky130_fd_sc_hd__slow.lib`, `sky130_fd_sc_hd__typical.lib` and `sky130_vsdinv.lef` files to `src` folder in your design. <br>

The final src folder should look like this: <br>

![image](https://user-images.githubusercontent.com/110079800/187529504-5ecb1c2a-cf15-47a1-a50b-979467d52457.png)

As mentioned by kunal sir dont use defined `DIE_AREA` and `FP_SIZING : absolute`, use `FP_SIZING : relative`
```
{
    "DESIGN_NAME": "iiitb_alu",
    "VERILOG_FILES": "dir::src/iiitb_alu.v",
    "CLOCK_PORT": "clk",
    "CLOCK_NET": "clk",
    "GLB_RESIZER_TIMING_OPTIMIZATIONS": true,
    "CLOCK_PERIOD": 10,
    "PL_TARGET_DENSITY": 0.7,
    "FP_SIZING" : "relative",
    "pdk::sky130*": {
        "FP_CORE_UTIL": 30,
        "scl::sky130_fd_sc_hd": {
            "FP_CORE_UTIL": 20
        }
    },

"LIB_SYNTH": "dir::src/sky130_fd_sc_hd__typical.lib",
"LIB_FASTEST": "dir::src/sky130_fd_sc_hd__fast.lib",
"LIB_SLOWEST": "dir::src/sky130_fd_sc_hd__slow.lib",
"LIB_TYPICAL": "dir::src/sky130_fd_sc_hd__typical.lib",
"TEST_EXTERNAL_GLOB": "dir::../iiitb_alu/src/*",
"SYNTH_DRIVING_CELL":"sky130_vsdinv"

}
```
Save all the changes made above and Navigate to the openlane folder in terminal and give the following command :<br>

```
$ sudo make mount
```
<img width="920" alt="image" src="https://user-images.githubusercontent.com/110079800/192500749-980a67b0-401c-422d-8c80-2afcd4a5bebe.png">


After entering the openlane container give the following command:<br>
```
$ ./flow.tcl -interactive
```
<img width="926" alt="image" src="https://user-images.githubusercontent.com/110079800/192501132-743bfbc3-4372-4782-938c-933fd64e4fa2.png">


This command will take you into the tcl console. In the tcl console type the following commands:<br>

```
% package require openlane 0.9
```
<img width="914" alt="image" src="https://user-images.githubusercontent.com/110079800/192501351-85ec6a46-8bea-43a2-b522-359ab5ec12c6.png">

% prep -design iiitb_alu

<img width="916" alt="image" src="https://user-images.githubusercontent.com/110079800/192502346-8854cc1f-85f6-4fe5-b237-30b283db8b46.png">

The following commands are to merge external the lef files to the merged.nom.lef. In our case sky130_vsdiat is getting merged to the lef file <br>
```
set lefs [glob $::env(DESIGN_DIR)/src/*.lef]
add_lefs -src $lefs
```

<img width="916" alt="image" src="https://user-images.githubusercontent.com/110079800/192502507-e3faaf79-c296-47a7-a6b7-18d1696d7363.png">

## Synthesis
```
% run_synthesis
```
<img width="916" alt="image" src="https://user-images.githubusercontent.com/110079800/192502833-96d92c98-8cb8-4106-96d0-99d3f1cbfc68.png">

### Synthesis Reports

<img width="691" alt="Post Synthesis Gate Count" src="https://user-images.githubusercontent.com/110079800/192523441-4a750253-d157-4b69-87bb-b48049cf6897.png">



Setup and Hold Slack after synthesis

![image](https://user-images.githubusercontent.com/110079800/192505891-52753c81-d86f-4335-aa82-18a012e4ca95.png)

 ## Power Report

![image](https://user-images.githubusercontent.com/110079800/192513023-1fccba91-ba0c-4c48-a094-e2c0885fa1a5.png)

## Flipflops Present in Design

<img width="689" alt="image" src="https://user-images.githubusercontent.com/110079800/192515913-6d9960a2-0cb9-45aa-af04-74659aabca9a.png">


```
Flop Ratio = Ratio of total number of flip flops / Total number of cells present in the design = 8/164 = 0.0488
```
<br>
The sky130_vsdinv should also reflect in your netlist after synthesis <br>
<br>

```
% run_floorplan
```
![image](https://user-images.githubusercontent.com/110079800/187531704-e99c334b-2ab7-4286-99b9-6aa110424e8c.png)

### Floorplan Reports
Die Area <br>
<br>
<img width="690" alt="image" src="https://user-images.githubusercontent.com/110079800/192513916-ad6a98dc-e25e-44d2-be39-1ca166a4806b.png">

Core Area <br>
<br>
<img width="691" alt="image" src="https://user-images.githubusercontent.com/110079800/192513742-fb69ed3e-a3fe-4ad5-ab0d-d54fc372108e.png">

Navigate to results->floorplan and type the Magic command in terminal to open the floorplan <br>
```
$ magic -T /home/nisha/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_alu.def &
```
![image](https://user-images.githubusercontent.com/110079800/187532133-37095523-58c9-4c91-a162-81f00d897e96.png)

Floorplan view <br>
<br>
![image](https://user-images.githubusercontent.com/110079800/187532213-900a77ac-78fb-4889-89f9-e09bf886c56e.png)

All the cells are placed in the left corner of the floorplan<br>
<br>

## Placement
```
% run_placement
```
![image](https://user-images.githubusercontent.com/110079800/187532540-8f620134-86a4-49b4-90bf-978cf9e0440c.png)

### Placement Reports
Navigate to results->placement and type the Magic command in terminal to open the placement view <br>
```
$ magic -T /home/nisha/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.max.lef def read iiitb_alu.def &
```
### Placement View

![image](https://user-images.githubusercontent.com/110079800/187533029-9921ef65-450b-4459-aa46-a1bf9fe9d25c.png)

**sky130_vsdinv** in the placement view:

![image](https://user-images.githubusercontent.com/110079800/187541695-63930340-c34d-434f-9360-2e76d360bd17.png)

The sky130_vsdinv should also reflect in your netlist after placement 

![image](https://user-images.githubusercontent.com/110079800/187537115-108ea84c-597d-4a61-a4b7-d206ac7409d0.png)


## Clock Tree Synthesis
```
% run_cts
```
![image](https://user-images.githubusercontent.com/110079800/187533457-8dada156-2828-48d4-b09d-bbf9c4e00c5e.png)
## Routing
```
% run_routing
```
![image](https://user-images.githubusercontent.com/110079800/187533561-2eb0cb7f-8fc8-4fea-8d33-d07207760dda.png)
### Routing Reports
Navigate to results->routing and type the Magic command in terminal to open the routing view <br>
```
$ magic -T /home/nisha/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_alu.def &
```
![image](https://user-images.githubusercontent.com/110079800/187533828-6a981cc5-a7e5-41bd-a087-9cbc46853ce4.png)


**sky130_vsdinv** in the routing view :


![image](https://user-images.githubusercontent.com/110079800/187536058-c6fe8cc9-526b-4c77-b38f-228d3f7e13ac.png)



## Area report by magic :<br>
<br>
<img width="926" alt="image" src="https://user-images.githubusercontent.com/110079800/192514642-1bd8034b-2705-4beb-8c88-314ec7be1e67.png">

The sky130_vsdinv should also reflect in your netlist after routing <br>
<br>
![image](https://user-images.githubusercontent.com/110079800/187534152-5a87061a-235a-4117-9ff9-fb3a9f1f6688.png)

## Report Checks

<img width="808" alt="image" src="https://user-images.githubusercontent.com/110079800/192543980-294b0463-3836-463b-8f67-c813d304a39c.png">

```
Clock Frequency = 1/[(10-5.19)*10^(-9)] = 207.9 MHz

```

## Physical Design

<img width="574" alt="Layout" src="https://user-images.githubusercontent.com/110079800/186626541-c02d894f-2448-440c-8c8d-7627c2d38822.png">

## Contributors
* Nisha B Rajput

* Kunal Ghosh

* Dantu Nandini Devi

* Mahati Basavaraju

* Banda Anusha



## Acknowledgements
* Kunal Ghosh,Director,VSD Corp. Pvt. Ltd.


## Contact Information
* Nisha B Rajput,M Tech student,International Institute of Information Technology,Bangalore nisha.05.rajput@gmail.com

* Kunal Ghosh,Director,VSD Corp.Pvt. Ltd. kunalghosh@gmail.com

* Dantu Nandini Devi,Ms student,International Institute of Information Technology,Bangalore nandini.dantu@gmail.com

* Mahati Basavaraju,Ms student,International Institute of Information Technology,Bangalore mahati.basavaraju@iiitb.ac.in

* Banda Anusha.M Tech student,International Institute of Information Technology,Bangalore Banda.Anusha@iiitb.ac.in



## References
* https://techno10.tech.blog/2020/12/15/arithmetic-logical-unit-verilog/
* https://teachcomputerscience.com/arithmetic-logic-unit/
