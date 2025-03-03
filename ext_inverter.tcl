crashbackups stop
drc off
load /foss/designs/SKY/inverter/inverter.mag
select top cell
extract path /foss/designs/SKY/inverter
extract no capacitance
extract no coupling
extract no resistance
extract no length
extract all
ext2spice lvs
ext2spice -p /foss/designs/SKY/inverter -o /foss/designs/SKY/inverter/inverter.ext.spc
quit -noprompt
