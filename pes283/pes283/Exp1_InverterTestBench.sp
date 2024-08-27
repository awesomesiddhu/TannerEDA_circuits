* SPICE export by:  S-Edit 2019.2.3
* Export time:      Mon Jan  9 15:29:00 2023
* Design path:      /home/vlsilab/pes283/pes283/lib.defs
* Library:          pes283
* Cell:             Exp1_InverterTestBench
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
.subckt Exp1_Inverter In Out Gnd Vdd 
MMn1 Out In Gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=5900 $y=3300 $w=400 $h=600
MMp1 Out In Vdd Vdd PMOS25 w=3.75u l=250n m=1 ad=2.4375p pd=8.8u as=2.4375p ps=8.8u nrd=173.33333m nrs=173.33333m $ $x=5900 $y=4500 $w=400 $h=600
.ends


***** Top Level *****
XExp1_Inverter_1 In Out Gnd Vdd Exp1_Inverter $ $x=4850 $y=4250 $w=2300 $h=1100
VV2 Vdd Gnd  DC 5 $ $x=7700 $y=3600 $w=400 $h=600
VV1 In Gnd  BIT({0100101111} ) $ $x=3000 $y=3900 $w=400 $h=600
.PLOT   V(In) $ $x=3350 $y=5850 $w=300 $h=1500 $r=270
.PLOT   V(Out) $ $x=6050 $y=5450 $w=300 $h=1500 $r=270
.PLOT TRAN P(VV1) $ $x=8000 $y=5600 $w=1600 $h=200
.PLOT TRAN P(VV2) $ $x=8000 $y=5200 $w=1600 $h=200
.MEASURE DC VIL_Nm FIND v(In) WHEN 'DDX(v(Out), v(In))'='-1' 
.MEASURE DC VIH_Nm FIND v(In) WHEN 'DDX(v(Out), v(In))'='-1' CROSS=LAST $ $x=4800 $y=2700 $w=2000 $h=200
.MEASURE TRAN RiseDelay_Delay TRIG v(In) VAL='2.5' TD='0' RISE=1 TARG v(Out) VAL='2.5' TD='0' FALL=1 PRINT 0
.MEASURE TRAN FallDelay_Delay TRIG v(In) VAL='2.5' TD='0' FALL=1 TARG v(Out) VAL='2.5' TD='0' RISE=1 PRINT 0
.MEASURE TRAN Delay PARAM='(RiseDelay_Delay+FallDelay_Delay)/2.0' $ $x=4800 $y=1250 $w=2000 $h=300
.MEASURE TRAN INRT TRIG v(In) VAL='500m' TD=0 RISE=1 TARG v(In) VAL='4.5' TD=0 RISE=1 $ $x=2750 $y=1800 $w=1500 $h=200
.MEASURE TRAN OUTRT TRIG v(Out) VAL='500m' TD=0 RISE=1 TARG v(Out) VAL='4.5' TD=0 RISE=1 $ $x=7350 $y=1800 $w=1500 $h=200
.MEASURE TRAN INFT TRIG v(In) VAL='4.5' TD=0 Fall=1 TARG v(In) VAL='500m' TD=0 FALL=1 $ $x=2750 $y=2200 $w=1500 $h=200
.MEASURE TRAN OUTFT TRIG v(Out) VAL='4.5' TD=0 Fall=1 TARG v(Out) VAL='500m' TD=0 FALL=1 $ $x=7350 $y=2200 $w=1500 $h=200

********* Simulation Settings - Analysis Section *********
.tran 0.01n 200n start=0
.option prtdel=0.01n
.dc VV1 0 5 0.01
.power vv1
.power vv2

********* Simulation Settings - Additional SPICE Commands *********

.end

