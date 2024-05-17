clc;
clear all;

%Constants:
mu_r = 1500;
mu_0 = 4 * pi * 10^-7;
mu = mu_r * mu_0;
chi = 5000;

flag = 0;

%Variables:

L_bar = 0.096; %m
r_bar = 0.003045; %m
h_c = 0.05321; %m
delta = 0.15 * h_c; %m
r_cext = 0.01064; %m
i_dc = 3.5; %A
N = 500; %turns

%Calculations

V_bar = pi * r_bar^2 * L_bar; %m^3
H_center = N * i_dc / h_c; %A-v/m

flag = input("¿Qué aproximación quieres usar? (1,2,3)");
switch flag
    case 1
        B_center = mu * H_center;
        F = chi * V_bar * B_center^2;
        disp(["El valor de la inducción es " num2str(B_center)]);
        disp(["El valor de la fuerza es " num2str(F)]);
    case 2
        B_center = mu * H_center;
        x = h_c-delta:0.001:h_c;
        B_x = zeros(length(x));
        for i = 1:length(x)
            B_x(i) = 0.1 * B_center * (x(i) - (h_c - delta))/(delta);
        end
end
