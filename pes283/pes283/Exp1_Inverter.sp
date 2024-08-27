* SPICE NETLIST
***************************************

.SUBCKT Exp1_Inverter Vdd Gnd Out In
** N=4 EP=4 IP=0 FDC=2
M0 Out In Gnd Gnd NMOS25 L=2.5e-07 W=1.5e-06 $X=645 $Y=-1690 $D=1
M1 Out In Vdd Vdd PMOS25 L=2.5e-07 W=3.75e-06 $X=645 $Y=1395 $D=2
.ENDS
***************************************
