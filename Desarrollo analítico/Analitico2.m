% Constants:
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
FFM = N * i_dc;

%Región de movimiento
x = linspace(0, h_c, numPoints);

%Dispersión y secciones:
r_disp = 2 * r_cext;
l_disp = 2 * pi() * r_disp;
S_disp = pi() * r_disp^2;

S_coil = pi() * r_cext^2;
S_bar = pi() * r_bar^2;

%Cálculos R, B y F
Rel_vec = zeros(1, length(x));
Bvec = zeros(1, length(x));
Fvec = zeros(1, length(x));

Rel_disp = l_disp / (mu_0 * S_disp * h_c);

for i = 1:length(x)
    %Reluctancias:
    Rel_gap = (h_c - x(i)) / (mu_0 * S_coil);
    Rel_bar = x(i) / (mu * S_bar);
    Rel_vec(i) = Rel_bar + Rel_gap + Rel_disp;

    %Inducción:
    Bvec(i) = FFM / (Rel_vec(i) * S_coil);

    %Fuerza:
    Fvec(i) = (0.5 * Bvec(i)^2 * S_coil)/ mu_0;
end
hold off
%plot(x, Fvec)
plot(x, Bvec)
