%% Combinando resultados

load('ComparaModeloTeorico_01.mat')
time = y1y2_model.Time;
u1 = u1u2.Data(:,1);
u2 = u1u2.Data(:,2);
exp1_model_y1 = y1y2_model.Data(:,1);
exp1_model_y2 = y1y2_model.Data(:,2);
exp1_plant_y1 = y1y2_plant.Data(:,1);
exp1_plant_y2 = y1y2_plant.Data(:,2);
load('ComparaModeloTeorico_02.mat')
exp2_model_y1 = y1y2_model.Data(:,1);
exp2_model_y2 = y1y2_model.Data(:,2);
exp2_plant_y1 = y1y2_plant.Data(:,1);
exp2_plant_y2 = y1y2_plant.Data(:,2);
load('ComparaModeloTeorico_03.mat')
exp3_model_y1 = y1y2_model.Data(:,1);
exp3_model_y2 = y1y2_model.Data(:,2);
exp3_plant_y1 = y1y2_plant.Data(:,1);
exp3_plant_y2 = y1y2_plant.Data(:,2);
avg_model_y1 = (exp1_model_y1 + exp2_model_y1 + exp3_model_y1)/3;
avg_model_y2 = (exp1_model_y2 + exp2_model_y2 + exp3_model_y2)/3;
avg_plant_y1 = (exp1_plant_y1 + exp2_plant_y1 + exp3_plant_y1)/3;
avg_plant_y2 = (exp1_plant_y2 + exp2_plant_y2 + exp3_plant_y2)/3;
avgamb_model_y1 = avg_model_y1 + 22;
avgamb_model_y2 = avg_model_y2 + 22;


%% Plotando resultados

figure
plot(time,avg_plant_y1,'b.', time,avgamb_model_y1,'r-')
title('Respostas real e modelada do Sensor de Temperatura 1')
xlabel('Tempo (s)')
ylabel('Temperatura (ºC)')
legend({'Planta (TCLabSP)','Modelo Teórico'},'Location','southeast')
pos = get(gca, 'Position');
pos(1) = 0.06;
pos(2) = 0.11;
pos(3) = 0.92;
pos(4) = 0.82;
set(gca, 'Position', pos)
ax = gca;
ax.FontSize = 25;


figure
plot(time,avg_plant_y2,'b.', time,avgamb_model_y2,'r-')
title('Respostas real e modelada do Sensor de Temperatura 2')
xlabel('Tempo (s)')
ylabel('Temperatura (ºC)')
legend({'Planta (TCLabSP)','Modelo Teórico'},'Location','southeast')
pos = get(gca, 'Position');
pos(1) = 0.06;
pos(2) = 0.11;
pos(3) = 0.92;
pos(4) = 0.82;
set(gca, 'Position', pos)
ax = gca;
ax.FontSize = 25;


%% Calculando erro médio (fit)

plant_mean_value_y1 = mean(avg_plant_y1);
fit_y1 = 100 * (1 - (norm(avg_plant_y1 - avgamb_model_y1)/norm(avg_plant_y1 - plant_mean_value_y1)));

plant_mean_value_y2 = mean(avg_plant_y2);
fit_y2 = 100 * (1 - (norm(avg_plant_y2 - avgamb_model_y2)/norm(avg_plant_y2 - plant_mean_value_y2)));