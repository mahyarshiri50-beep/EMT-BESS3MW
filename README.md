# ⚡ 3kV DC Traction Substation & 3MW BESS Digital Twin

An advanced PSCAD/EMTDC digital twin of a 3kV DC railway traction substation, featuring an integrated 3MW Battery Energy Storage System (BESS) for dynamic peak shaving, voltage support, and fault recovery.

## 🎯 Project Overview
This model simulates the severe electromechanical transients of heavy-rail traction networks. It moves beyond standard resistor loads by implementing a **Constant Power Load (CPL)** model to demonstrate "Negative Incremental Impedance" and its effect on weak grids. 

## ⚙️ Key Technical Features
* **Grid Physics:** 132kV AC Grid feeding a 12-Pulse Rectifier.
* **BESS Control:** Autonomous charge/discharge state machine with PI cascaded control (Voltage/Current loops).
* **Standards Compliance:** Engineered to meet **EN 50163** (U_min1 > 2.0kV) and OEM HSCB $di/dt$ limits.
* **Custom Solver Logic:** Features custom Fortran scripting interfacing directly with the EMTDC backend for [insert specific function, e.g., custom anti-windup/state-machine logic].

## 🚀 How to Run the Simulation
**Prerequisites:** * PSCAD v5.0 (or newer)
* Intel Fortran Compiler (or GFortran, depending on your setup)

**Instructions:**
1. Clone this repository: `git clone https://github.com/YourUsername/Traction-BESS-PSCAD.git`
2. Open PSCAD and load the workspace: `models/Traction_BESS_Workspace.pswx`.
3. Ensure the custom Fortran files in `src/` are correctly linked in your project settings under "Script/Source".
4. Compile and run the project. 
5. *Tip:* Adjust the CPL demand from 3.0 MW to 8.0 MW at `t=0.5s` to observe the BESS autonomously wake up for peak shaving!
