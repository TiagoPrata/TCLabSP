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

% Modelo teorico SS
mean_value_u1 = mean(MPC_UC_Teo_ss_u1);
MPC_UC_Teo_ss_fit_y1 = 100 * (1 - (norm(MPC_UC_Teo_ss_u1 - MPC_UC_Teo_ss_y1)/norm(MPC_UC_Teo_ss_u1 - mean_value_u1)));
mean_value_u2 = mean(MPC_UC_Teo_ss_u2);
MPC_UC_Teo_ss_fit_y2 = 100 * (1 - (norm(MPC_UC_Teo_ss_u2 - MPC_UC_Teo_ss_y2)/norm(MPC_UC_Teo_ss_u2 - mean_value_u2)));

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Teo_ss_y1,y_pen, time,MPC_UC_Teo_ss_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Teórico - Espaço de Estados - Sensor 1 e SP 1 (fit: %0.2f%%)',MPC_UC_Teo_ss_fit_y1),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Teo_ss_mv1,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 1','SP 1','MV 1'},'FontSize',LegendSize,'Location', 'Northeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)
subplot(2,1,2)
yyaxis left
plot(time,MPC_UC_Teo_ss_y2,y_pen, time,MPC_UC_Teo_ss_u2,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Teórico - Espaço de Estados - Sensor 2 e SP 2 (fit: %0.2f%%)',MPC_UC_Teo_ss_fit_y2),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Teo_ss_mv2,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 2','SP 2','MV 2'},'FontSize',LegendSize,'Location', 'Southeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)


% Modelo experimental TF
MPC_UC_Exp_tf_fit_y1 = 100 * (1 - (norm(MPC_UC_Exp_tf_u1 - MPC_UC_Exp_tf_y1)/norm(MPC_UC_Exp_tf_u1 - mean_value_u1)));
MPC_UC_Exp_tf_fit_y2 = 100 * (1 - (norm(MPC_UC_Exp_tf_u2 - MPC_UC_Exp_tf_y2)/norm(MPC_UC_Exp_tf_u2 - mean_value_u2)));

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_tf_y1,y_pen, time,MPC_UC_Exp_tf_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Função de Transferência - Sensor 1 e SP 1 (fit: %0.2f%%)',MPC_UC_Exp_tf_fit_y1),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_tf_mv1,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 1','SP 1','MV 1'},'FontSize',LegendSize,'Location', 'Northeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)
subplot(2,1,2)
yyaxis left
plot(time,MPC_UC_Exp_tf_y2,y_pen, time,MPC_UC_Exp_tf_u2,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Função de Transferência - Sensor 2 e SP 2 (fit: %0.2f%%)',MPC_UC_Exp_tf_fit_y2),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_tf_mv2,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 2','SP 2','MV 2'},'FontSize',LegendSize,'Location', 'Southeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)

% Modelo experimental BJ

% Modelo experimental ARMAX
MPC_UC_Exp_armax_fit_y1 = 100 * (1 - (norm(MPC_UC_Exp_armax_u1 - MPC_UC_Exp_armax_y1)/norm(MPC_UC_Exp_armax_u1 - mean_value_u1)));
MPC_UC_Exp_armax_fit_y2 = 100 * (1 - (norm(MPC_UC_Exp_armax_u2 - MPC_UC_Exp_armax_y2)/norm(MPC_UC_Exp_armax_u2 - mean_value_u2)));

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_armax_y1,y_pen, time,MPC_UC_Exp_armax_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - ARMAX - Sensor 1 e SP 1 (fit: %0.2f%%)',MPC_UC_Exp_armax_fit_y1),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_armax_mv1,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 1','SP 1','MV 1'},'FontSize',LegendSize,'Location', 'Northeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)
subplot(2,1,2)
yyaxis left
plot(time,MPC_UC_Exp_armax_y2,y_pen, time,MPC_UC_Exp_armax_u2,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - ARMAX - Sensor 2 e SP 2 (fit: %0.2f%%)',MPC_UC_Exp_armax_fit_y2),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_armax_mv2,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 2','SP 2','MV 2'},'FontSize',LegendSize,'Location', 'Southeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)

% Modelo experimental OE
MPC_UC_Exp_oe_fit_y1 = 100 * (1 - (norm(MPC_UC_Exp_oe_u1 - MPC_UC_Exp_oe_y1)/norm(MPC_UC_Exp_oe_u1 - mean_value_u1)));
MPC_UC_Exp_oe_fit_y2 = 100 * (1 - (norm(MPC_UC_Exp_oe_u2 - MPC_UC_Exp_oe_y2)/norm(MPC_UC_Exp_oe_u2 - mean_value_u2)));

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_oe_y1,y_pen, time,MPC_UC_Exp_oe_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Output Error - Sensor 1 e SP 1 (fit: %0.2f%%)',MPC_UC_Exp_oe_fit_y1),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_oe_mv1,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 1','SP 1','MV 1'},'FontSize',LegendSize,'Location', 'Northeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)
subplot(2,1,2)
yyaxis left
plot(time,MPC_UC_Exp_oe_y2,y_pen, time,MPC_UC_Exp_oe_u2,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Output Error - Sensor 2 e SP 2 (fit: %0.2f%%)',MPC_UC_Exp_oe_fit_y2),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_oe_mv2,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 2','SP 2','MV 2'},'FontSize',LegendSize,'Location', 'Southeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)

% Modelo experimental SS
MPC_UC_Exp_ss_fit_y1 = 100 * (1 - (norm(MPC_UC_Exp_ss_u1 - MPC_UC_Exp_ss_y1)/norm(MPC_UC_Exp_ss_u1 - mean_value_u1)));
MPC_UC_Exp_ss_fit_y2 = 100 * (1 - (norm(MPC_UC_Exp_ss_u2 - MPC_UC_Exp_ss_y2)/norm(MPC_UC_Exp_ss_u2 - mean_value_u2)));

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_ss_y1,y_pen, time,MPC_UC_Exp_ss_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Espaço de Estados - Sensor 1 e SP 1 (fit: %0.2f%%)',MPC_UC_Exp_ss_fit_y1),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_ss_mv1,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 1','SP 1','MV 1'},'FontSize',LegendSize,'Location', 'Northeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)
subplot(2,1,2)
yyaxis left
plot(time,MPC_UC_Exp_ss_y2,y_pen, time,MPC_UC_Exp_ss_u2,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Espaço de Estados - Sensor 2 e SP 2 (fit: %0.2f%%)',MPC_UC_Exp_ss_fit_y2),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_ss_mv2,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 2','SP 2','MV 2'},'FontSize',LegendSize,'Location', 'Southeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)

% Modelo experimental Arx
MPC_UC_Exp_arx_fit_y1 = 100 * (1 - (norm(MPC_UC_Exp_arx_u1 - MPC_UC_Exp_arx_y1)/norm(MPC_UC_Exp_arx_u1 - mean_value_u1)));
MPC_UC_Exp_arx_fit_y2 = 100 * (1 - (norm(MPC_UC_Exp_arx_u2 - MPC_UC_Exp_arx_y2)/norm(MPC_UC_Exp_arx_u2 - mean_value_u2)));

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_arx_y1,y_pen, time,MPC_UC_Exp_arx_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - ARX - Sensor 1 e SP 1 (fit: %0.2f%%)',MPC_UC_Exp_arx_fit_y1),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_arx_mv1,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 1','SP 1','MV 1'},'FontSize',LegendSize,'Location', 'Northeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)
subplot(2,1,2)
yyaxis left
plot(time,MPC_UC_Exp_arx_y2,y_pen, time,MPC_UC_Exp_arx_u2,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - ARX - Sensor 2 e SP 2 (fit: %0.2f%%)',MPC_UC_Exp_arx_fit_y2),'FontSize',TitleSize)
xlabel('Tempo (s)','FontSize',LabelSize)
ylabel('Temperatura (ºC)','FontSize',LabelSize)
yyaxis right
plot(mv_time,MPC_UC_Exp_arx_mv2,mv_pen)
ylabel('Variável Manipulada (%)','FontSize',LabelSize)
legend({'Sensor 2','SP 2','MV 2'},'FontSize',LegendSize,'Location', 'Southeast')
pos = get(gca, 'Position');
pos(1) = 0.055;
pos(3) = 0.9;
set(gca, 'Position', pos)