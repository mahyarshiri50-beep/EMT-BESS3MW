% --- Grid & Line Parameters ---
V_line_nom = 3000;      % Nominal Traction Line Voltage [V]
V_line_max = 3600;      % Max Permanent Voltage [V] (CEI EN 50163)
V_line_min = 2000;      % Min Permanent Voltage [V] (CEI EN 50163)
R_line = 0.05;          % Traction line equivalent resistance [Ohms]
L_line = 2e-3;          % Traction line equivalent inductance [H]

% --- BESS Physical Parameters ---
E_bess_kWh = 500;       % Battery Capacity [kWh]
V_batt_nom = 1200;      % Nominal Battery Bank Voltage [V]
% NOTE: This is a 2-Phase Interleaved Topology. 
% Total System Power = 3.0 MW.
P_max_per_phase = 1.5e6; % Maximum Power PER PHASE [W] 
L_boost_per_phase = 1.5e-3; % Inductance PER PHASE [H]
SOC_init = 70;          % Initial State of Charge [%]

% --- DC/DC Converter Constraints ---
f_sw = 5000;            % Switching Frequency [Hz] (Balancing thermals & ripple)
C_dc = 10e-3;           % DC Link Capacitance [F]
L_boost = 1.5e-3;       % Interleaved Inductance [H]