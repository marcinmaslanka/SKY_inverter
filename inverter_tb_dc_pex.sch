v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {vsource.sym} 80 -230 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} 80 -90 0 0 {name=Vin value=0 savecurrent=false}
C {lab_pin.sym} 80 -260 3 1 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 80 -120 3 1 {name=p5 sig_type=std_logic lab=Vin}
C {code_shown.sym} 525 -255 0 0 {name=SPICE only_toplevel=false value="
.include /foss/designs/SKY/inverter/inverter.pex.spice
.control
dc Vin 0 1.8 0.01
plot v(Vin) v(Vout)
.endc
"}
C {lab_pin.sym} 280 -240 3 1 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 220 -180 2 1 {name=p3 sig_type=std_logic lab=Vin}
C {opin.sym} 400 -180 0 0 {name=p4 lab=Vout}
C {code_shown.sym} 30 -425 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {gnd.sym} 280 -125 0 0 {name=l1 lab=GND}
C {gnd.sym} 80 -60 0 0 {name=l2 lab=GND}
C {gnd.sym} 80 -200 0 0 {name=l3 lab=GND}
C {/foss/designs/SKY/inverter/inverter.sym} 350 -180 0 0 {name=x1}
