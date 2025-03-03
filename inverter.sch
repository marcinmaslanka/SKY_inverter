v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 -220 160 -180 {lab=#net1}
N 120 -250 120 -150 {lab=A}
N 160 -120 160 -70 {lab=VN}
N 160 -340 160 -280 {lab=VP}
N 160 -250 200 -250 {lab=VP}
N 200 -310 200 -250 {lab=VP}
N 160 -310 200 -310 {lab=VP}
N 160 -150 200 -150 {lab=VN}
N 200 -150 200 -90 {lab=VN}
N 160 -90 200 -90 {lab=VN}
N 70 -200 120 -200 {lab=A}
N 160 -200 210 -200 {lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 140 -150 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 -250 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 160 -340 3 0 {name=p1 lab=VP}
C {iopin.sym} 160 -70 1 0 {name=p2 lab=VN}
C {ipin.sym} 70 -200 0 0 {name=p3 lab=A}
C {opin.sym} 210 -200 0 0 {name=p4 lab=Y}
