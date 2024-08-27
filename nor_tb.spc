* SPICE export by:  S-Edit 2019.2.3
* Export time:      Thu Feb 16 10:22:32 2023
* Design path:      /home/vlsilab/Wednesday/lib.defs
* Library:          Wednesday
* Cell:             nor_tb
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

.SUBCKT nmos25 D G S B
.ends

.SUBCKT pmos25x D G S B
.ends

.subckt nor In1 In2 Out Gnd Vdd 
XMn1 Out In2 Gnd Gnd nmos25 w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
XMn2 Out In1 Gnd Gnd nmos25x w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
XMp1 N_1 In1 Vdd Vdd pmos25x w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
XMp2 Out In2 N_1 Vdd pmos25x w=1.5u l=250n NF=1 m=1 leftTap=1 rightTap=0 
+topTap=0 bottomTap=0 connectGates=STR("None") connectSD=STR("None")
.ends

.subckt nor_tb In1 In2 Out Gnd Vdd 
Xnor_1 In2 In1 Out Gnd Vdd nor
VV3 Vdd Gnd  DC 5
VV1 In1 Gnd  BIT({0100101111} )
VV2 In2 Gnd  BIT({0100101111} )
.ends



