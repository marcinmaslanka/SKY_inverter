** sch_path: /foss/designs/SKY/inverter/inverter.sch
.subckt inverter VP A Y VN
*.PININFO VP:B VN:B A:I Y:O
XM1 Y A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 Y A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=4 nf=1 m=1
.ends
.end
