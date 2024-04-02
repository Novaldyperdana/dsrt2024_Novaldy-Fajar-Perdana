v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1100 -1700 1100 -1620 {
lab=output}
N 820 -1740 820 -1650 {
lab=VDD}
N 820 -1800 820 -1740 {
lab=VDD}
N 820 -1800 1100 -1800 {
lab=VDD}
N 1100 -1800 1100 -1760 {
lab=VDD}
N 930 -1680 930 -1650 {
lab=input}
N 1030 -1730 1060 -1730 {
lab=input}
N 1030 -1590 1060 -1590 {
lab=input}
N 1030 -1730 1030 -1590 {
lab=input}
N 930 -1680 1030 -1680 {
lab=input}
N 1100 -1660 1200 -1660 {
lab=output}
N 1100 -1560 1100 -1540 {
lab=GND}
N 820 -1590 820 -1540 {
lab=GND}
N 820 -1540 1100 -1540 {
lab=GND}
N 930 -1590 930 -1540 {
lab=GND}
N 870 -1540 870 -1530 {
lab=GND}
N 1100 -1800 1150 -1800 {
lab=VDD}
N 1100 -1730 1150 -1730 {
lab=VDD}
N 1150 -1800 1150 -1730 {
lab=VDD}
N 1100 -1590 1150 -1590 {
lab=GND}
N 1150 -1590 1150 -1540 {
lab=GND}
N 1100 -1540 1150 -1540 {
lab=GND}
C {devices/vsource.sym} 820 -1620 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 930 -1620 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 930 -1680 0 0 {name=p1 sig_type=std_logic lab=input}
C {devices/lab_pin.sym} 1200 -1660 2 0 {name=p2 sig_type=std_logic lab=output}
C {devices/gnd.sym} 870 -1530 0 0 {name=l1 lab=GND}
C {devices/code.sym} 700 -1760 0 0 {name=TT_MODELS 
only_toplevel=true 
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.param mc_mmm_cwitch=0
.param mc_pr_switch=1
"}
C {devices/code_shown.sym} 1180 -1620 0 0 {name=s1 only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v2 0 1.8 0.01
plot input output
op
.endc
"}
C {devices/vdd.sym} 820 -1800 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1080 -1730 0 0 {name=M1
W=13.8
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
C {sky130_fd_pr/nfet_01v8.sym} 1080 -1590 0 0 {name=M4
W=4.6
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
