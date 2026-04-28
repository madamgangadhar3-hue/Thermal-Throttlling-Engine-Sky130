# 🌡️ Thermal Throttling Engine (ASIC Physical Design)
![PDK](https://img.shields.io/badge/PDK-SkyWater_130nm-brightgreen?style=for-the-badge)
![Flow](https://img.shields.io/badge/Flow-OpenLane-blue?style=for-the-badge)
![DRC](https://img.shields.io/badge/DRC-Zero_Violations-success?style=for-the-badge)
![LVS](https://img.shields.io/badge/LVS-Passed-success?style=for-the-badge)
## 🧠 Project Overview
This project implements a hardware-level **Thermal Throttling Engine** using the SkyWater 130nm PDK. It provides real-time thermal protection for high-performance SoCs with zero software overhead.
---
## 📊 Physical Design Metrics (Graphical)

| Metric | Status | Visual Indicator |
| :--- | :--- | :--- |
| **Technology** | **Sky130** | 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦 |
| **Setup Slack** | **+9.22ns** | 🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩 |
| **DRC / LVS** | **Clean** | 🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩 |
| **Utilization** | **~45%** | 🟧🟧🟧🟧⬜⬜⬜⬜⬜⬜ |

---
## 🚀 Physical Design Flow (RTL-to-GDSII)
The implementation followed the **OpenLane** automated flow stages:
1. **Synthesis:** Logic mapping with `yosys`.
2. **Floorplanning:** Core area and I/O placement.
3. **Placement:** Global and detailed cell placement.
4. **CTS:** Clock Tree Synthesis for minimal skew.
5. **Routing:** Detailed routing of all signal and power nets.
6. **Sign-off:** Final DRC/LVS and GDSII export.
---
## 📐 Hardware Architecture
```mermaid
graph LR
    Clock --> TC(Thermal Controller)
    Sensor --> TC
    TC --> Fan
    TC --> Interrupt
