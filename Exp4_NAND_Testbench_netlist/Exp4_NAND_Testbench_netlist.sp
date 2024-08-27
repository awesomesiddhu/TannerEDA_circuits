* SPICE export by:  S-Edit 2019.2.3
* Export time:      Mon Feb  6 14:21:04 2023
* Design path:      /home/vlsilab/pes283/pes283/lib.defs
* Library:          pes283
* Cell:             Exp4_NAND_Testbench
* Testbench:        Spice
* View:             schematic
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude empty:    yes
* Exclude .model:   no
* Exclude .hdl:     no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Exclude simulator commands:  no
* Exclude global pins:         no
* Exclude instance locations:  no
* Control property name(s):    SPICE

********* Simulation Settings - General Section *********
.probe
.option probev
.lib "/home/vlsilab/Tanner_EDA/Tanner_Tools_v2019.2/Process/Generic_250nm/Models/Generic_250nm.lib" tt

*************** Subcircuits *****************
.subckt Exp4_NAND A B Out Gnd Vdd 
*MMn1 N_1 A Gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=4600 $y=2400 $w=400 $h=600
*MMn2 N_1 B Out Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=5000 $y=4000 $w=400 $h=600 $r=180
*MMp1 Out A Vdd Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=3600 $y=5600 $w=400 $h=600
*MMp2 Out B Vdd Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=5700 $y=5600 $w=400 $h=600 $m


MMp1 Out A Vdd Vdd PMOS25 L=2.5e-07
+ W=1.5e-06 AD=4.875e-13 AS=4.875e-13 PD=2.15e-06 PS=2.15e-06
MMp2 Out B Vdd Vdd PMOS25 L=2.5e-07
+ W=1.5e-06 AD=4.875e-13 AS=4.875e-13 PD=2.15e-06 PS=2.15e-06
MMn1 N_1 A Gnd Gnd NMOS25 L=2.5e-07
+ W=1.5e-06 AD=4.875e-13 AS=4.875e-13 PD=2.15e-06 PS=2.15e-06
MMn2 N_1 B Out Gnd NMOS25 L=2.5e-07
+ W=1.5e-06 AD=4.875e-13 AS=4.875e-13 PD=2.15e-06 PS=2.15e-06

.ends


***** Top Level *****
XExp4_NAND_1 A B Out Gnd Vdd Exp4_NAND $ $x=4100 $y=2400 $w=0 $h=0
VV3 Vdd Gnd  DC 5 $ $x=8700 $y=4300 $w=400 $h=600
VV1 A Gnd  BIT({0011} ) $ $x=2500 $y=1900 $w=400 $h=600
VV2 B Gnd  BIT({0101} ) $ $x=2800 $y=4200 $w=400 $h=600
.PLOT   V(A) $ $x=3350 $y=2050 $w=300 $h=1500 $r=90
.PLOT   V(B) $ $x=3450 $y=4150 $w=300 $h=1500 $r=270
.PLOT   V(Out) $ $x=6450 $y=3550 $w=300 $h=1500 $r=270
.PLOT TRAN P(VV1) $ $x=8400 $y=3100 $w=1600 $h=200
.PLOT TRAN P(VV2) $ $x=8400 $y=2800 $w=1600 $h=200
.PLOT TRAN P(VV3) $ $x=8400 $y=2500 $w=1600 $h=200
.MEASURE TRAN IN_A_RT TRIG v(A) VAL='(Vpwr-0)*10/100+0' TD=0 RISE=1 TARG v(A) VAL='(Vpwr-0)*90/100+0' TD=0 RISE=1 $ $x=3750 $y=1000 $w=1500 $h=200
.MEASURE TRAN IN_B_RT TRIG v(B) VAL='(Vpwr-0)*10/100+0' TD=0 RISE=1 TARG v(B) VAL='(Vpwr-0)*90/100+0' TD=0 RISE=1 $ $x=3950 $y=5600 $w=1500 $h=200
.MEASURE TRAN OUTRT TRIG v(Out) VAL='(Vpwr-0)*10/100+0' TD=0 RISE=1 TARG v(Out) VAL='(Vpwr-0)*90/100+0' TD=0 RISE=1 $ $x=7050 $y=2200 $w=1500 $h=200
.MEASURE TRAN IN_A_FT TRIG v(A) VAL='(Vpwr-0)*90/100+0' TD=0 Fall=1 TARG v(A) VAL='(Vpwr-0)*10/100+0' TD=0 FALL=1 $ $x=3750 $y=700 $w=1500 $h=200
.MEASURE TRAN IN_B_FT TRIG v(B) VAL='(Vpwr-0)*90/100+0' TD=0 Fall=1 TARG v(B) VAL='(Vpwr-0)*10/100+0' TD=0 FALL=1 $ $x=3950 $y=5900 $w=1500 $h=200
.MEASURE TRAN OUTFT TRIG v(Out) VAL='(Vpwr-0)*90/100+0' TD=0 Fall=1 TARG v(Out) VAL='(Vpwr-0)*10/100+0' TD=0 FALL=1 $ $x=7050 $y=1800 $w=1500 $h=200
.MEASURE TRAN IN_A_FREQ_Period TRIG V(A) VAL='Vpwr/2.0' TD='0' RISE='1' TARG V(A) VAL='Vpwr/2.0' TD='0' RISE='1+1' PRINT 0
.MEASURE TRAN IN_A_FREQ<Hz> PARAM='1.0/IN_A_FREQ_Period*1' $ $x=3750 $y=400 $w=1500 $h=200
.MEASURE TRAN IN_B_FREQ_Period TRIG V(B) VAL='Vpwr/2.0' TD='0' RISE='1' TARG V(B) VAL='Vpwr/2.0' TD='0' RISE='1+1' PRINT 0
.MEASURE TRAN IN_B_FREQ<Hz> PARAM='1.0/IN_B_FREQ_Period*1' $ $x=3950 $y=5300 $w=1500 $h=200
.MEASURE TRAN OUTFREQ_Period TRIG V(Out) VAL='Vpwr/2.0' TD='0' RISE='1' TARG V(Out) VAL='Vpwr/2.0' TD='0' RISE='1+1' PRINT 0
.MEASURE TRAN OUTFREQ<Hz> PARAM='1.0/OUTFREQ_Period*1' $ $x=7050 $y=1500 $w=1500 $h=200

********* Simulation Settings - Analysis Section *********
.tran 0.01n 200n start=0
.option prtdel=0.01n
.power vv1
.power vv2
.power vv3
********* Simulation Settings - Additional SPICE Commands *********

.end

