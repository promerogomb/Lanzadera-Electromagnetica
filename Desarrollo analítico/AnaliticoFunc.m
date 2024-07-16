% Propiedades electromagnéticas
mu0 = 4 * pi * 10^-7; % Permeabilidad del vacío [H/m]
mu_fe = 5000; % Permeabilidad relativa del hierro
N = 500; % Número de espiras
I_c = 3.65; % Corriente de la bobina

% Geometría
h_c = 0.05321; % Longitud de la bobina [m]
r_c = 0.01064; % Radio externo de la bobina [m]
l_fe = 0.096; % Longitud del vástago [m]
r_fe = 0.003045; % Radio del vástago [m]

S_c = pi * r_c ^ 2; % Sección de la bobina [m^2]
S_bar = pi * r_fe ^ 2; % Sección del vástago [m^2]
S_disp = 2 * S_c; % Sección de dispersión [m^2]

% Vectores espaciales
num_points = 500; % Número de puntos
x = linspace(0, h_c, num_points); % Región de movimiento


% Definición de los vectores magnéticos
R_dispc = zeros(size(x));
R_phi = zeros(size(x));
R_B = zeros(size(x));
R_airc = zeros(size(x));
R_total = zeros(size(x));
Phi = zeros(size(x));
B = zeros(size(x));
F = zeros(size(x));

% Cálculos
for i = 1:length(x)
    %Cálculo de reluctancias:
    R_dispc(i) = h_c / (mu0 * S_disp); % Reluctancia de dispersión de la bobina [H^-1]
    R_B(i) = l_fe / (mu_fe * mu0 * S_bar); % Reluctancia del vástago [H^-1]
    R_phi(i) = ((h_c + l_fe) - x(i)) / (mu0 * S_disp); % Reluctancia de dispersión [H^-1]
    R_airc(i) = (h_c - x(i)) / (mu0 * S_c); % Reluctancia del aire dentro de la bobina [H^-1]

    R_total(i) = R_dispc(i) + R_phi(i) + R_B(i) + R_airc(i); % Reluctancia total [H^-1]
    
    % Flujo [Wb]
    Phi(i) = (N * I_c) / R_total(i);
    
    % Inducción magnética [T]
    B(i) = Phi(i) / S_bar;

    % Fuerza en x(i) [N]
    F(i) = 0.5 * B(i)^2 * S_bar / mu0;
end

% Gráficas

% Reluctancias R[H^-1]
figure;
hold on;
plot(x, R_dispc, 'r', 'DisplayName', 'R_{dispc}', 'LineWidth', 2);
plot(x, R_B, 'g', 'DisplayName', 'R_{bar}', 'LineWidth', 2);
plot(x, R_phi, 'b', 'DisplayName', 'R_{phi}', 'LineWidth', 2);
plot(x, R_airc, 'm', 'DisplayName', 'R_{airc}', 'LineWidth', 2);
plot(x, R_total, 'k', 'DisplayName', 'R_{total}', 'LineWidth', 2);
xlabel('Posición del vástago [m]');
ylabel('Reluctancias [H^-1]');
title('Reluctancias vs posición');
legend show;
legend('Location', 'best');
grid on;
hold off;

% Inducción magnética B[T]
figure;
plot(x, B, 'r', 'LineWidth', 2);
xlabel('Posición del vástago [m]');
ylabel('Inducción magnética [T]');
title('Inducción magnética vs posición');
grid on;

% Fuerza [N]
figure;
plot(x, F, 'LineWidth', 2);
xlabel('Posición del vástago [m]');
ylabel('Fuerza magnética [N]');
title('Fuerza vs posición');
grid on;

