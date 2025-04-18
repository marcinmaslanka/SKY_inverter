# 🔌 CMOS Inverter – Schematic, Layout, and Testbench

This repository contains the schematic, layout, and testbench for a basic **CMOS inverter** using open-source EDA tools such as Magic, Xschem, and Ngspice.

---

## 📁 Files Included

| File                | Description                                      |
|---------------------|--------------------------------------------------|
| `inverter.sch`      | Xschem schematic of the CMOS inverter            |
| `inverter.mag`      | Layout of the inverter in Magic VLSI             |
| `inverter_tb_dc.sch`| DC sweep testbench schematic for inverter curve  |

---

## 🧪 How to Simulate

Use **Ngspice** to simulate the inverter's behavior with the testbench schematics:

### Functional Simulation

1. Open `inverter_tb.sch` in Xschem.
2. Netlist and run with `Ngspice`.

```bash
xschem
# File → Open → inverter_tb_dc.sch
# Simulate → Netlist and Run
```

### 🧱 Layout
The layout (inverter.mag) can be opened in Magic VLSI or KLayout

### Design Rule Check (DRC)
Use the IIC-OSIC-Multitool:
```bash
iic-drc.sh -b inverter.mag -d
```

### Layout Versus Schematic (LVS)
Run the LVS check using:
```bash
iic-lvs.sh -d -s inverter.sch -l inverter.mag -c inverter 
```
### Parasitic Extraction (PEX)
Run the following Command:
```bash
iic-pex.sh -m 3 inverter.mag -d
```
If you're unsure about the parameters, run the command without arguments (e.g., iic-drc.sh) to display the help message.

### Post-Layout Simulation
Make sure that the pin order matches between pre- and post-layout simulations.

Open Xschem:
```bash
xschem
```
2. Modify the Inverter Symbol
# Open inverter.sym
# Press q to view properties
# Change the model type from subcircuit to primitive

3. Edit the Testbench
In the testbench schematic, add the following line to the simulation parameters:

```bash
.include /foss/designs/SKY/inverter/inverter.pex.spice
```
This tells Ngspice to use the netlist generated during PEX.

4. Run Simulation
# Click Netlist
# Click Run

You should now see the post-layout simulation waveform.

---

Feel free to use, modify, and share.

