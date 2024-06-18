% Electromagnetic properties
mu0 = 4 * pi * 10^-7; % Permeability of free space in H/m
mu_fe = 5000; % Relative permeability of the iron bar
N = 500; % Number of turns
I_c = 3.65; % Coil current [A]

% Geometry
h_c = 0.05321; % Coil length [m]
r_c = 0.01064; % Coil external radius [m]
l_fe = 0.096; % Length of the iron bar [m]
r_fe = 0.003045; % Bar radius [m]

S_c = pi * r_c ^ 2; % Cross-sectional area of the core [m^2]
S_bar = pi * r_fe ^ 2; % Cross-sectional area of the iron bar [m^2]
S_phi = 1.5 * S_c; % Cross-sectional area of the flux region [

% Space vectors
num_points = 500;
x = linspace(0.1 * l_fe, h_c, num_points); % Movement region
t = linspace(0, h_c, num_points); % Auxiliar x

% Relative permeability variation
delta_mur = zeros(num_points);
for i = 1:num_points
    delta_mur(i) = mu_fe * x(i) / h_c;
end
figure;
plot(x, delta_mur, 'LineWidth', 2);
title('mu_r vs. x');
grid on;

% Pre-allocate arrays for reluctances, flux, induction and force
R_core = zeros(size(x));
R_B = zeros(size(x));
R_phi = zeros(size(x));
R_total = zeros(size(x));
Phi = zeros(size(x));
B = zeros(size(x));
F = zeros(size(x));

% Calculate reluctance, flux, and induction for each position
for i = 1:length(x)
    R_core(i) = h_c / (mu0 * S_c);
    R_B(i) = l_fe * (1 - t(i)/l_fe) / (mu0 * (mu_fe - delta_mur(i)) * S_bar);
    R_phi(i) = (h_c + l_fe - t(i)) / (mu0 * delta_mur(i) * S_phi);
    R_total(i) = R_core(i) + R_B(i) + R_phi(i);
    
    % Calculate flux
    Phi(i) = (N * I_c) / R_total(i);
    
    % Calculate magnetic induction
    B(i) = Phi(i) / S_bar;

    % Calculate force
    F(i) = 0.5 * B(i)^2 * S_bar / mu0;
end

figure;
hold on;
plot(x, R_core, 'r', 'DisplayName', 'R_{core}');
plot(x, R_B, 'g', 'DisplayName', 'R_{bar}');
plot(x, R_phi, 'b', 'DisplayName', 'R_{phi}');
plot(x, R_total, 'k', 'DisplayName', 'R_{total}');
xlabel('Air Gap Length (m)');
ylabel('Total circuit reluctance');
title('Total Reluctance vs. Air Gap Length');
legend show;
legend('Location', 'best');
grid on;
hold off;

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
