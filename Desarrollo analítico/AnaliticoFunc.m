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
S_disp = 2 * S_c; % Cross-sectional area of the flux region [

% Space vectors
num_points = 2000;
x = linspace(0, h_c, num_points); % Región de movimiento


% Pre-allocate arrays for reluctances, flux, induction and force
R_dispc = zeros(size(x));
R_phi = zeros(size(x));
R_B = zeros(size(x));
R_airc = zeros(size(x));
R_total = zeros(size(x));
Phi = zeros(size(x));
B = zeros(size(x));
F = zeros(size(x));

%Cálculos
for i = 1:length(x)
    %Cálculo de reluctancias:
    R_dispc(i) = h_c / (mu0 * S_disp); % Reluctancia de dispersión de la bobina
    R_B(i) = l_fe / (mu_fe * mu0 * S_bar); %Reluctancia del vástago
    R_phi(i) = ((h_c + l_fe) - x(i)) / (mu0 * S_disp); %Reluctancia del aire abrazante
    R_airc(i) = (h_c - x(i)) / (mu0 * S_c); %Reluctancia del aire dentro de la bobina

    R_total(i) = R_dispc(i) + R_phi(i) + R_B(i) + R_airc(i); %Reluctancia total
    
    % Flujo
    Phi(i) = (N * I_c) / R_total(i);
    
    %Inducción magnética
    B(i) = Phi(i) / S_bar;

    % Fuerza en x(i)
    F(i) = 0.5 * B(i)^2 * S_bar / mu0;
end

%Gráficas

figure;
hold on;
plot(x, R_dispc, 'r', 'DisplayName', 'R_{dispc}');
plot(x, R_B, 'g', 'DisplayName', 'R_{bar}');
plot(x, R_phi, 'b', 'DisplayName', 'R_{phi}');
plot(x, R_airc, 'b', 'DisplayName', 'R_{airc}');
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



%Cálculo sensibilidad
h_cVec = 0:1:0.3;


F_interp = @(xi) interp1(x, F, xi, 'linear');
x0 = min(x);
xf = max(x);
integral_value = integral(F_interp, x0, xf);
max(F);

