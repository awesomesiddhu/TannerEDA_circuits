* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT Exp4_NAND Gnd A Vdd Out B
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd Out A pmos25x_Auto1 $T=17080 3435 0 0 $X=14630 $Y=2685
X1 Vdd Vdd Out B pmos25x_Auto1 $T=24035 3545 0 0 $X=21585 $Y=2795
X2 Gnd 3 Gnd A nmos25x_Auto1 $T=17080 -1060 0 0 $X=15130 $Y=-1360
X3 3 Out Gnd B nmos25x_Auto1 $T=24035 -950 0 0 $X=22085 $Y=-1250
.ENDS
***************************************
