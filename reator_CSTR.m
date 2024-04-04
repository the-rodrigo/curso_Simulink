function dx_dt = reator_CSTR(t, x, u, k0, DeltaE, R, Caf, Tf, ro_Cp, UA_v, neg_DeltaH);

% Definir as saídas
Ca = x(1);
T = x(2);

%Definir as entradas
f_v = u(1);
Tc = u(2);

%Arrhenius
r = k0*exp(-DeltaE/(R*T))*Ca;

%Definir as equações diferenciais
dCa_dt = f_v*(Caf - Ca) - r;
dT_dt = f_v*(Tf - T) + neg_DeltaH*r/ro_Cp - UA_v*(T - Tc)/ro_Cp;

dx_dt = [dCa_dt; dT_dt];