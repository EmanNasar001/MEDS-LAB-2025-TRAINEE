# Key Takeaway's from Onur's Lectures:
## Lecture 1: Introduction,Fundamentals,Transistors ,Gates
1- Current Research topics

- Robust Architechitecture 
- Energy Efficient Architecture 
- Low -Latency and Predictable Architectures
- ML/AI assisted Architectures
- Architectures for Medicine, Health etc

2- The transormation Heirarchy:
- Problem 
- Algorithm
- Program / Language
- Runtime System
- ISA 
- Microarchitecture
- Logic
- Devices
- Electrons

3- Why do we have computers?

4- How do problems get solved by Computer

5- What is Computer Architecture

6-Evolution of GPUs

7-General Purpose vs Special Purpose systems
- FPGAs are general purpose
- ASICs are Special purpose

8- Transistors:
- MOS,CMOS
- Transistors as switch
- Gates using CMOS transistors


## Lecture 2: Combintinal Logic 
1- Transistors:
- CMOS structure
- Power consumption :Increasing Voltage increases power cubically 

2- Moore' Law and its affect on chip evolution

3 - Types of logic Circuits 
- Combinational Logic
- Sequential Logic

4- Boolean            Algebra

- Axioms 
  - Formal  version
  - Closure
  - Commutative Laws
  - Distributive Laws
  - Complement
- Duality
-  De Morgan's Law

- SOP form 
  - Canonical form 
  - Standard Form
- Maxterms,Minterms,Literals
- POS form

   - Canonical form 
   - Standard form
   - Logic Simplification

5-     Combinational Logic Building Blocks:
 - Decoder
 - MUX
 - LUTs
 - Full Adder
 - Input LUTs
 - Programmable Logic Array ( PLA)
 - Comparator
 - ALU
 - Logic using Multiplexers
 - Binary Addition 
 - 4 -bit adders from full adder
 - Ripple Carry Adder 
 - Implementing Full Adder using PLA
 - Logical Completeness : set of OR, AND , NOT gates can be used to build a circuit of any truth  table

 ## Lecture 3: Sequential Logic 
 1- Tristate Buffer:
 - It acts like a switch 
 -  floating signals
 - Shared bus using trisate buffer containing processor ,Video , ethernet , memory
 - Multiplexer using tristate buffers
 - Implementing it using CMOS

 2- Logic Simplification Laws
 - Varying element in columns can be eliminated
 - Priority Circuits : Make non-priority bits dont cares
 3- Sequential Circuits:
 - Cross -Coupled Inverters 
 - SRAM : fast,expensive
 - DRAM :slow,cheap 
 - Latches vs Flip Flops
 - R-S Latch (Cross coupled NAND gates)
    - S (set): drive S to 0  and R to 1 
    - R (reset) : drive R to 0 and S to 1 
    - S & R both should never be zero to avoid metastability

- Gated D-Latch
- Register

- Memory
   - Addressability
   - Reading from Memory
   - Writing on Memory

4 - Sequential Logic:
- states
-  State Diagrams
- Asynchronus Vs Synchronus
- Changing of states and their dependency on clock
- Importance of clock
- Finite State machines
  -  Pictorial representation of states 
  - can be used to model traffic lights, elevators,microprocessors
  - Five elements:
     - finite number of states
     - finite number of external inputs 
     - finite number of external outputs
     - how to go from one state to another
     - what determines each external output value
  - Three separate parts:
      - next state logic
       - state register 
       - output logic
  - State register Implementation
- Problems with latches
  - level triggered
- D -Flip Flops : used to implement state register
     -  Rising edge triggered
     - D- Flip Flop based Register

## Lecture 4:  Sequential Logic II ,Verilog ,Labs1
1- Types of FSM:
   - Melay
   - Moore

2- Smart Traffic Controller

  - Implemented using Moore FSM
  - Its state transition Table
  - Logic Equation
  - Output Table
  - Schematic 
  - Timing  Diagram

3- FSM: State Encoding
- Fully Encoded
  - uses log  with base 2 (num_ states) bits to represent states
  - Minimizes Flip Flops
- One -hot encoded 
  - uses num_ states bits to represent states
  - 1 bit is "hot" for given state
  - Simplest , Maximizes Flip Flops
- Output Encoding
    -  minimizes output logic 
    - only works for Moore FSM

4- Melay vs Moore

5- FSM design Procedure
  - Determine all states
  - develop a state transition diagram 
  - defining states: find reset state and continue to add states with good names
  6 - Modern FPGA Architecture
    - LUTS with 6-bit select input (6 LUTs)
    - on-chip memory
    - General purpose

7- Advantages and Disadvantages of FPGAs
 - Advantages :
    - low cost 
    - reusable
    - short time to market
    - algorithm easily implemented on Hardware
- Disadvantages
    - not much fast and pwer efficient
    - significant area and latency overhead
8- Heirarchical Design
 - Design Heirarchy of modules
 - Heirarchy controls Complexity
 - Top -Down Design Methadology
     - First Top-Module then submodules then leaf cells
- Bottom-Up Design Methadology 
    - Opposite to former one

9- Writing Verilog Codes
 - Module definition 
 - how to define number of bits
   - [31:0] preffered over [0:31] as it resembles array definition

## Lecture 5: Hardware Description , Languages and Verilog II

1- Bit Slicing
 - if we define [15:0] longbus then slicing is ; 
 shortbus=longbus[12:5]

2- Concatenation by  {}
   - assign y={ a[2],a[1],a[0]}

3- Duplication
 - assign y={a[0],a[0]}

4- Basic Syntax:
- verilog is case sensitive
- names cannot start with no
- white spaces are ignored

5- Main styles of HDL 
  - Structural
       - instantiation of modules
       - predefined primitives (not,and,or gates)

  - Behavioural
   - Circuit description
   - models hardware circuit same as gate level
   - bitwise operators
   - conditional  Assignments
   - Complex  conditional  Assignments
       - for example : y= s ? d1:d0

6- Precedence of operations

7- How to express numbers 
 - using formula N'Bxx
      - N is no of bits 
      - B is base system
      - x valuse expressed in base


8- Importance of simulation

9- Code for comparing two numbers
 - Gate level implementation
 - Multi-Bit signals
 - Bitwise operations

10 - Parameterized modules:
- we can define parameters using  "#(parameter a=8)" syntax
- we can also instantiate parameters as we did for submodules

11- Defining timing
 - only for simulation cannot be synthesized

12- Good practices 
- use consistent naming style
- try to define one module per file
- try naming file that matches module name
- keep in mind verilog describes hardware

13- Sequential logic in verilog 
 - we use always, posedge/negedge 
 - defining D- Flip Flops in verilog
 - using non- blocking statements
 - Asynchronus vs Synchronus resets
 - Flip flops with reset and enable
 - D- Latch Code
 - always block does not always remembers
 - use of always @* 
 - differentiating between sequential and combinational circuits
 - use of case statements 
 - cannot make assignments to same signal in diff always blocks
 - defining FSM using verilog  
14- Timing and Verification 

15 - Circuit is a trade off between 
 - area
 - speed
 - power
 - design time

 ## Lecture 6: Timing and Verification II
 1- Circuit Timing 
  - Combinational circuit delay
  - Delay causes: 
    - Capacitance and resistance 
    - finite speed of light
    - changes in environment and temperature 
    - depends on circuit implementation as well

2 - Delays
  - contamination delay 
  - propagation delay
  - calculating longest and shortest delay paths
  - wires have non-zero delays
  - designers must assume worst case conditions 

3- Output Glitches
 - one input transition causes many output transitions
 - Avoid glitches using K-maps
 - upto designers choice if glitches matter or not in their design

4- D Flip Flop timing constraints
  - D must be stable when sampled
  - if combinational logic is too fast then we have hold time violation 
  - if combinational logic is too fast then we have set up time violation

5- Set up timing constraint
   - overall design performance  is determined by critical path

6- Hold time constraint 

- D  must be stable for atleast t(hold) after the clock edge
 - tccq + tcd> t hold

7 - Clock skew: time diff between two clock edges
 - clocks have delays too
 - Tc > tpcq +tpd +tsetup + t(skew)
 - skew increses set up time and hold time of clock

8- How we know a circuit works 
 - using simulation tools
 - using testing techniques  whch can be time consuming

9- testing  large circuit
- low level simulation is much slower than high level simulation
- sol: check functionality at high level and timing power etc on low level

10 - Functional Verification
 -  to check logical correctness of design 
 - physical circuit timing
 - two primary approaches
   - logic simulation 
   - formal verification techniques

11- Testbench: a module created to test design
   - checks the outputs of DUT
   - Can be an HDL code 
   - can be a circuit schematic
   - types :
    - Manual 
    - Self checking 
    - automatic
- simple code for testbench
     - instantiate DUT 
     - apply hardcoded inputs one at a time
     - easy to design but nt scalable , outputs must be checked manually
- check output using waves
- Self -Checking
   - easy to design and test
   - easy to make error in hardcoded values and hard to debug
   - using testvector file : use clock signal for assigning input and outputs
   - Code EXamples
- Automatic testbench 
  - difficult to write
  - represents ideal circuit behaviour
  - is fully automated 
  - could even compare timing using golden model

12- Testing a 32 bit adder 
    - need 58.5 years to test all cases

13- Timing Verification approaches
 - using "#x" in simulation code
 - not as accurate as real circuit timings
 - reading timing reports and summaries
 - tool can fail
 - fixing errors  is manual and time taking
 








    
















 







 











