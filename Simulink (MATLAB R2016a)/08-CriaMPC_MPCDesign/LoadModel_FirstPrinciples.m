%% Declaracao de variaveis

T_0 = 293.15;           % Temp inicial(20C)
T_amb = 293.15;         % Temp ambient (20C)
alpha1 = 0.0123;        % Fator Aquecedor1 >>> W/(% Aquecedor1)     
alpha2 = 0.0062;        % Fator Aquecedor2 >>> W/(% Aquecedor2)     
Cp = 500;               % Capacidade de aquecimento >>> J/kg-K
A = 0.001;              % Area que nao esta entre aquecedores >>> (10cm2)
As = 0.0002;            % Area entre aquecedores >>> (2cm2)
m = 0.004;              % Massa >>> (4g)
tau = 20.3;             % Constante de conducao >>> (s)
U = 4.7;                % Coeficiente de tranf de calor >>> (W/m2-K)
Us = 15.45;            % Coeficiente de tranf de calor entre aquecedores >>> (W/m2-K)
e = 0.9;                % Emissividade
sigma = 5.67*10^(-8);   % Constante de Stefan-Boltzmann >>> (W/m2-K4)

%% Formulas

a11 = -(U*A + 4*e*sigma*A*T_0^3 + Us*As + 4*e*sigma*As*T_0^3)/(m*Cp);

a12 = (Us*As + 4*e*sigma*As*T_0^3)/(m*Cp);

a13 = 0;

a14 = 0;

a21 = (Us*As + 4*e*sigma*As*T_0^3)/(m*Cp);

a22 = -(U*A + 4*e*sigma*A*T_0^3 + Us*As + 4*e*sigma*As*T_0^3)/(m*Cp);

a23 = 0;

a24 = 0;

a31 = 1/tau;

a32 = 0;

a33 = -1/tau;

a34 = 0;

a41 = 0;

a42 = 1/tau;

a43 = 0;

a44 = -1/tau;

b11 = alpha1/(m*Cp);

b12 = 0;

b21 = 0;

b22 = alpha2/(m*Cp);

b31 = 0;

b32 = 0;

b41 = 0;

b42 = 0;


%% Matrizes

A = [a11 a12 a13 a14; a21 a22 a23 a24; a31 a32 a33 a34; a41 a42 a43 a44];

B = [b11 b12; b21 b22; b31 b32; b41 b42];

C = [0 0 1 0; 0 0 0 1];

D = [0 0; 0 0];

%% Espaco de estados

TCLab_Teo_ss = ss(A,B,C,D);
