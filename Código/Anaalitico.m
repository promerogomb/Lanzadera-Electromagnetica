% Constants:
mu_r = input('Ingrese el valor de mu_r: ');
mu_0 = 4 * pi * 10^-7;
mu = mu_r * mu_0;
chi = input('Ingrese el valor de chi: ');

% Variables:
numPoints = input('Ingrese el número de puntos de precisión: ');
L_bar = input('Ingrese el valor de L_b (longitud de la barra en metros): ');
r_bar = input('Ingrese el radio de la barra en metros: ');
h_c = input('Ingrese la altura de la barra en metros: ');
x = linspace(0, h_c, numPoints);
decayZone = input('Ingrese el porcentaje de la zona de variación de B: ');
delta = decayZone/100 * h_c; %m
r_cext = input('Ingrese el radio externo del cilindro en metros: ');
i_dc = input('Ingrese el valor de la corriente directa en amperios: ');
N = input('Ingrese el número de vueltas: ');

% Cálculos:
V_bar = pi * r_bar^2 * L_bar; %m^3
H_center = N * i_dc / h_c; %A-v/m
B_center = mu * H_center; %T

% Caso 1:
F1 = chi * V_bar * B_center^2;
disp(['B centro: ', num2str(B_center)]);
disp(['F1: ', num2str(F1)]);

B_centerVec = B_center * ones(1, numPoints);
F1Vec = F1 * ones(1, numPoints);
plot(app.B1Axis, x, B_centerVec);
plot(app.F1Axis, x, F1Vec);

% Caso 2:
B2 = InductionCalculator(numPoints, decayZone, B_center);
dB_dx2 = gradient(B2, x);
dB_dxMean2 = mean(dB_dx2);
F2 = (chi * V_bar * B_center) * dB_dxMean2;
disp(['B2 máximo: ', num2str(max(B2))]);
disp(['B2 medio: ', num2str(mean(B2))]);
disp(['F2: ', num2str(F2)]);

F2Vec = F2 * ones(1, numPoints);
plot(app.B2Axis, x, B2);
plot(app.F2Axis, x, F2Vec);

% Caso 3:
B3 = InductionCalculator(numPoints, decayZone, B_center);
dB_dx3 = gradient(B3, x);
dB_dxMean3 = mean(dB_dx3);
F3 = zeros(1, numPoints);
for i = 1:numPoints
    F3(i) = (chi * V_bar * B3(i)) * dB_dxMean3;
end
disp(['B3 máximo: ', num2str(max(B3))]);
disp(['B3 medio: ', num2str(mean(B3))]);
disp(['F3 máximo: ', num2str(max(F3))]);
disp(['F3 media: ', num2str(mean(F3))]);