v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {vsource.sym} 80 -240 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 80 -210 0 0 {name=l2 lab=GND}
C {vsource.sym} 80 -100 0 0 {name=Vin value=0 savecurrent=false}
C {lab_pin.sym} 80 -270 3 1 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 80 -130 3 1 {name=p5 sig_type=std_logic lab=Vin}
C {gnd.sym} 80 -70 0 0 {name=l1 lab=GND}
C {code_shown.sym} 40 -445 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code_shown.sym} 505 -235 0 0 {name=SPICE only_toplevel=false value="

.save all
.control

dc Vin 0 1.8 0.01
plot v(Vin) v(Vout)
.endc
"}
C {lab_pin.sym} 240 -170 2 1 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 300 -230 3 1 {name=p4 sig_type=std_logic lab=Vdd}
C {gnd.sym} 300 -115 0 0 {name=l3 lab=GND}
C {/foss/designs/SKY/inverter/inverter.sym} 370 -170 0 0 {name=x1}
C {opin.sym} 420 -170 0 0 {name=p3 lab=Vout}
