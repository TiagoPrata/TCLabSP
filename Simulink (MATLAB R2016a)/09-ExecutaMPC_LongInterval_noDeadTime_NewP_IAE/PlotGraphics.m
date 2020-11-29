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
% MPC_UC_Teo_ss_IAE_y1 = IAE( MPC_UC_Teo_ss_u1, MPC_UC_Teo_ss_y1 );
% MPC_UC_Teo_ss_ISE_y1 = ISE( MPC_UC_Teo_ss_u1, MPC_UC_Teo_ss_y1 );
% MPC_UC_Teo_ss_ITAE_y1 = ITAE( MPC_UC_Teo_ss_u1, MPC_UC_Teo_ss_y1, time );
% MPC_UC_Teo_ss_ITSE_y1 = ITSE( MPC_UC_Teo_ss_u1, MPC_UC_Teo_ss_y1, time );
% MPC_UC_Teo_ss_IAE_y2 = IAE( MPC_UC_Teo_ss_u2, MPC_UC_Teo_ss_y2 );
% MPC_UC_Teo_ss_ISE_y2 = ISE( MPC_UC_Teo_ss_u2, MPC_UC_Teo_ss_y2 );
% MPC_UC_Teo_ss_ITAE_y2 = ITAE( MPC_UC_Teo_ss_u2, MPC_UC_Teo_ss_y2, time );
% MPC_UC_Teo_ss_ITSE_y2 = ITSE( MPC_UC_Teo_ss_u2, MPC_UC_Teo_ss_y2, time );

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Teo_ss_y1,y_pen, time,MPC_UC_Teo_ss_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
% title(sprintf('Modelo Teórico - Espaço de Estados - Sensor 1 e SP 1 \n(IAE: %#0.2e | ISE: %0.2e | ITAE: %0.2e | ITSE: %0.2e)',MPC_UC_Teo_ss_IAE_y1, MPC_UC_Teo_ss_ISE_y1, MPC_UC_Teo_ss_ITAE_y1, MPC_UC_Teo_ss_ITSE_y1),'FontSize',TitleSize)
title(sprintf('Modelo Teórico - Espaço de Estados - Sensor 1 e SP 1'),'FontSize',TitleSize)
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
% title(sprintf('Modelo Teórico - Espaço de Estados - Sensor 2 e SP 2 \n(IAE: %#0.2e | ISE: %0.2e | ITAE: %0.2e | ITSE: %0.2e)',MPC_UC_Teo_ss_IAE_y2, MPC_UC_Teo_ss_ISE_y2, MPC_UC_Teo_ss_ITAE_y2, MPC_UC_Teo_ss_ITSE_y2),'FontSize',TitleSize)
title(sprintf('Modelo Teórico - Espaço de Estados - Sensor 2 e SP 2'),'FontSize',TitleSize)
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

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_tf_y1,y_pen, time,MPC_UC_Exp_tf_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Função de Transferência - Sensor 1 e SP 1'),'FontSize',TitleSize)
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
title(sprintf('Modelo Experimental - Função de Transferência - Sensor 2 e SP 2'),'FontSize',TitleSize)
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

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_armax_y1,y_pen, time,MPC_UC_Exp_armax_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - ARMAX - Sensor 1 e SP 1'),'FontSize',TitleSize)
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
title(sprintf('Modelo Experimental - ARMAX - Sensor 2 e SP 2'),'FontSize',TitleSize)
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
figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_oe_y1,y_pen, time,MPC_UC_Exp_oe_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Output Error - Sensor 1 e SP 1'),'FontSize',TitleSize)
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
title(sprintf('Modelo Experimental - Output Error - Sensor 2 e SP 2'),'FontSize',TitleSize)
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
figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_ss_y1,y_pen, time,MPC_UC_Exp_ss_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - Espaço de Estados - Sensor 1 e SP 1'),'FontSize',TitleSize)
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
title(sprintf('Modelo Experimental - Espaço de Estados - Sensor 2 e SP 2'),'FontSize',TitleSize)
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
figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_arx_y1,y_pen, time,MPC_UC_Exp_arx_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
title(sprintf('Modelo Experimental - ARX - Sensor 1 e SP 1'),'FontSize',TitleSize)
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
title(sprintf('Modelo Experimental - ARX - Sensor 2 e SP 2'),'FontSize',TitleSize)
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