* SPICE export by:  S-Edit 2019.2.3
* Export time:      Mon Jan 23 13:53:09 2023
* Design path:      /home/vlsilab/pes283/pes283/lib.defs
* Library:          pes283
* Cell:             Exp1_Inverter
* Testbench:        Spice
* View:             schematic
* Export as:        subcircuit definition
* Export mode:      hierarchical
* Exclude empty:    no
* Exclude .model:   yes
* Exclude .hdl:     no
* Exclude .end:     yes
* Expand paths:     yes
* Wrap lines:       80 characters
* Exclude simulator commands:  yes
* Exclude global pins:         no
* Exclude instance locations:  yes
* Control property name(s):    SDL SPICE

*************** Subcircuits *****************
.SUBCKT nmos25x D G S B
.ends

.SUBCKT pmos25x D G S B
.ends

.subckt Exp1_Inverter In Out Gnd Vdd 
XMn1 Out In Gnd Gnd nmos25x w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
XMp1 Out In Vdd Vdd pmos25x w=3.75u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
.ends



