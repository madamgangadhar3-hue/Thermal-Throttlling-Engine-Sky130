## 📂 Repository File Structure

| File / Folder | Engineering Purpose |
| :--- | :--- |
| **`thermal_controller.gds`** | **The Blueprint:** The final manufacturable silicon layout. |
| **`drc.rpt`** | **Physical Sign-off:** Proves 0 Design Rule Check (DRC) violations. |
| **`39-thermal_controller.lvs.rpt`** | **Circuit Sign-off:** Layout vs. Schematic (LVS) match proof. |
| **`41-antenna_violators.rpt`** | **Routing Sign-off:** Proves 0 antenna violations. |
| **`31-rcx_sta.max.rpt`** | **Performance Proof:** Static Timing Analysis (STA) showing MET slack. |
| **`thermal_controller/`** | **The Logic:** Folder containing the Verilog (`.v`) RTL source code. |
