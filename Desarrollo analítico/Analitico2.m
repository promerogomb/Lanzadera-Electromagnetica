% Constants:
%mu_r = input('Ingrese el valor de mu_r: ');
mu_r = 3000;
mu_0 = 4 * pi * 10^-7;
mu = mu_r * mu_0;

% Variables:
numPoints = 500;
L_bar = 0.096; %m
r_bar = 0.003045; %m
h_c = 0.05321; %m
r_cext = 0.01604; %m
i_dc = 3.5; %A
N = 500;

%Región de movimiento
movReg = h_c;
x = linspace(0, movReg, numPoints);

%Cálculos R, B y F
R_vec = zeros(1, length(x));
Bvec = zeros(1, length(x));
Fvec = zeros(1, length(x));

S_coil = pi() * r_cext^2;
FFM = N * i_dc;

for i = 1:length(x)
    %Reluctancias:
    R_gap = (h_c - x(i)) / (mu_0);
    R_core = h_c / (mu_0);
    R_vec(i) = R_gap + R_core;
    
    %Inducción:
    Bvec(i) = FFM / R_vec(i);

    %Fuerza:
    Fvec(i) = (0.5 * Bvec(i)^2 * S_coil)/ mu_0;
end

plot(x, Fvec)
