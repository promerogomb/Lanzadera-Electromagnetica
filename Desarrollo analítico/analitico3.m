% Define parameters

mu0 = 4 * pi * 10^-7; % Permeability of free space in H/m
mu_r_fe = 5000; % Relative permeability of the iron bar
N = 500; % Number of turns
I_c = 3.65; % Coil current [A]

h_c = 0.05321; % Coil length [m]
r_c = 0.01064; % Coil external radius [m]
l_fe = 0.096; % Length of the iron bar [m]
r_fe = 0.003045; % Bar radius [m]

% Reluctance paths
x = linspace(0, h_c, 200); % Movement region
l_al = h_c + l_fe; 

A_ag = pi * r_c ^ 2; % Cross-sectional area of the core [m^2]
A_fe =pi * r_fe ^ 2; % Cross-sectional area of the iron bar [m^2]
A_al = A_ag; % Cross-sectional area of the flux region [m^2]

% Pre-allocate arrays for reluctance, flux, induction and force
R_total = zeros(size(x));
Phi = zeros(size(x));
B = zeros(size(x));
F = zeros(size(x));

% Calculate reluctance, flux, and induction for each position
for i = 1:length(x)
    R_ag = (h_c - x(i)) / (mu0 * A_ag);
    R_feIN = x(i) / (mu0 * mu_r_fe * A_ag);
    R_feOUT = (l_fe - x(i)) / (mu0 * mu_r_fe * A_fe);
    R_al = l_al / (mu0 * A_al);
    R_total(i) = R_core + R_feIN + R_feOUT + R_al;
    
    % Calculate flux
    Phi(i) = (N * I_c) / R_total(i);
    
    % Calculate magnetic induction
    B(i) = Phi(i) / A_ag;

    % Calculate force
    F(i) = 0.5 * B(i)^2 * A_ag / mu0;
end

figure;
plot(x, R_total, 'LineWidth', 2);
xlabel('Air Gap Length (m)');
ylabel('Total circuit reluctance');
title('Total Reluctance vs. Air Gap Length');
grid on;

figure;
plot(x, B, 'LineWidth', 2);
xlabel('Air Gap Length (m)');
ylabel('Magnetic Induction B (T)');
title('Magnetic Induction vs. Air Gap Length');
grid on;

figure;
plot(x, F, 'LineWidth', 2);
xlabel('Air Gap Length (m)');
ylabel('Magnetic Force F (N)');
title('Magnetic Force vs. Air Gap Length');
grid on;
