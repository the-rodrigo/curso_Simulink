clc;
clear;
close all;

%Inicializar variáveis do modelo CSTR
x0model = [5, 325];
k0 = 9703*3600;
DeltaE = 11843;
R = 1.987;
Caf = 10;
Tf = 298;
ro_Cp = 500;
UA_v = 150;
neg_DeltaH = 5960;

tsim = 5;
    
for i=1:2;
    
    if i==2;
        x0model = [5,350];
    end
    
    %Simular o Modelo
    sim('reator_cstr')

    %Graficando
    figure(1)
    subplot(211)
    plot(t, y(:,1),'linewidth',2)
    hold on
    xlabel('Tempo [h]')
    ylabel('Concentração A')
    title('Reator CSTR')

    subplot(212)
    plot(t, y(:,2),'linewidth',2)
    hold on
    xlabel('Tempo [h]')
    ylabel('Temperatura do Reator [K]')
    title('Reator CSTR')
end

subplot(211)
legend ('T0 = 325', 'T0 = 350')