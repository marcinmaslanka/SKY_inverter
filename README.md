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
The layout (inverter.mag) can be opened in Magic VLSI:

```bash
# magic inverter.mag
# Run DRC, LVS, and optionally extract parasitics for simulation.
```


