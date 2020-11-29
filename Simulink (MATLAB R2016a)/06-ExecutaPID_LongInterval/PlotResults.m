%% Carrega experimentos

CombineExperiments


%% Configuracoes

LegendSize = 19;
LabelSize = 23;
TitleSize = 25;
AxisFontSize = 16;
y_pen = 'b.';
u_pen = 'r-';
mv_pen = 'g-.';

%% Plota resultados

% calcula fit
% mean_u1 = mean(u1_avg);
% fit_y1 = 100 * (1 - (norm(u1_avg - y1_avg)/norm(u1_avg - mean_u1)));
% mean_u2 = mean(u2_avg);
% fit_y2 = 100 * (1 - (norm(u2_avg - y2_avg)/norm(u2_avg - mean_u2)));

figure
subplot(2,1,1)
yyaxis left
plot(time,y1_avg,y_pen, time,u1_avg,u_pen)
set(gca,'FontSize',AxisFontSize)
% title(sprintf('Modelo Teórico - PID - Sensor 1 e SP 1 (fit: %0.2f%%)',fit_y1),'FontSize',TitleSize)
title(sprintf('Modelo Teórico - PID - Sensor 1 e SP 1'),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,mv1_avg,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 1','SP 1','MV 1'},'FontSize',LegendSize,'Location', 'Northeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)
subplot(2,1,2)
yyaxis left
plot(time,y2_avg,y_pen, time,u2_avg,u_pen)
set(gca,'FontSize',AxisFontSize)
% title(sprintf('Modelo Teórico - PID - Sensor 2 e SP 2 (fit: %0.2f%%)',fit_y2),'FontSize',TitleSize)
title(sprintf('Modelo Teórico - PID - Sensor 2 e SP 2'),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,mv2_avg,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 2','SP 2','MV 2'},'FontSize',LegendSize,'Location', 'Southeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)