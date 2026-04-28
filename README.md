# 🌡️ Thermal Throttling Engine (ASIC Physical Design)

![PDK](https://img.shields.io/badge/PDK-SkyWater_130nm-brightgreen?style=for-the-badge)
![Flow](https://img.shields.io/badge/Flow-OpenLane-blue?style=for-the-badge)
![DRC](https://img.shields.io/badge/DRC-Zero_Violations-success?style=for-the-badge)
![LVS](https://img.shields.io/badge/LVS-Passed-success?style=for-the-badge)
![Timing](https://img.shields.io/badge/Timing-MET-success?style=for-the-badge)

## 🧠 Extended System Description
As process nodes shrink, transistor density and power density increase drastically. Without active thermal management, high-performance silicon can suffer from localized heating, leading to timing violations or permanent "thermal runaway."

This project implements a dedicated, hardware-level **Thermal Throttling Engine** designed to sit inside a primary System-on-Chip (SoC). Instead of relying on slow, software-based polling, this standalone hardware module provides deterministic, real-time thermal protection with zero software overhead.

---

## 📐 Hardware Architecture Flow

```mermaid
graph LR
    %% Define block styles
    classDef hardware fill:#2b3137,stroke:#2ea043,stroke-width:2px,color:#fff;
    classDef external fill:#1f2428,stroke:#58a6ff,stroke-width:2px,color:#fff;
    
    %% Diagram connections
    Clk[System Clock] --> Div[Clock Divider]
    Div -->|Divided Clk| TC(Thermal Controller Engine)
    
    Sensor[On-Chip Thermal Sensor] -->|Over-Temp Flag| TC
    
    TC -->|Enable Signal| Fan[Cooling Fan Control]
    TC -->|Alert Signal| Alarm[System Interrupt / Alarm]

    %% Apply styles
    class TC,Div hardware;
    class Clk,Sensor,Fan,Alarm external;
