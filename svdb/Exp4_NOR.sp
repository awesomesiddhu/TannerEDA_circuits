* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 AD=4.875e-13 AS=4.875e-13 PD=2.15e-06 PS=2.15e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=1.5e-06 AD=4.875e-13 AS=4.875e-13 PD=2.15e-06 PS=2.15e-06 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT Exp4_NOR Gnd A Vdd B Out
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd 5 A pmos25x_Auto1 $T=15465 7080 0 0 $X=13015 $Y=6330
X1 Vdd 5 Out B pmos25x_Auto1 $T=25100 7080 0 0 $X=22650 $Y=6330
X2 Gnd Out Gnd A nmos25x_Auto1 $T=15465 695 0 0 $X=13515 $Y=395
X3 Gnd Out Gnd B nmos25x_Auto1 $T=25100 695 0 0 $X=23150 $Y=395
.ENDS
***************************************
