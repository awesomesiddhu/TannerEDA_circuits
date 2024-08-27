* SPICE export by:  S-Edit 2019.2.3
* Export time:      Tue Feb  7 09:39:04 2023
* Design path:      /home/vlsilab/Wednesday/lib.defs
* Library:          Wednesday
* Cell:             Cell2
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
.SUBCKT pmos25x D G S B
.ends

.SUBCKT nmos25 D G S B
.ends

.SUBCKT nmos25x D G S B
.ends

.subckt Cell2 In1 In2 Out Gnd Vdd 
XMn1 Out In2 N_1 Gnd nmos25 w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
XMn2 N_1 In1 Gnd Gnd nmos25x w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
XMp1 Out In1 Vdd Vdd pmos25x w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
XMp2 Vdd In2 Out Vdd pmos25x w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
.ends



