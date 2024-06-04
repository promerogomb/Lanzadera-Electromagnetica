% Constants:
%mu_r = input('Ingrese el valor de mu_r: ');
mu_r = 5000;
mu_0 = 4 * pi * 10^-7;
mu = mu_r * mu_0;

% Variables:
numPoints = 100;
L_bar = 0.096; %m
r_bar = 0.003045; %m
h_c = 0.05321; %m
x = linspace(0, L_bar+1.4*h_c, numPoints);
r_cext = 0.01604; %m
i_dc = 3.5; %A
N = 500;

