clear

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

% Modelo experimental TF
% mean_value_u1 = mean(MPC_UC_Exp_tf_u1);
% mean_value_u2 = mean(MPC_UC_Exp_tf_u2);
% MPC_UC_Exp_tf_fit_y1 = 100 * (1 - (norm(MPC_UC_Exp_tf_u1 - MPC_UC_Exp_tf_y1)/norm(MPC_UC_Exp_tf_u1 - mean_value_u1)));
% MPC_UC_Exp_tf_fit_y2 = 100 * (1 - (norm(MPC_UC_Exp_tf_u2 - MPC_UC_Exp_tf_y2)/norm(MPC_UC_Exp_tf_u2 - mean_value_u2)));

figure
subplot(2,1,1)
yyaxis left
plot(time,MPC_UC_Exp_tf_y1,y_pen, time,MPC_UC_Exp_tf_u1,u_pen)
set(gca,'FontSize',AxisFontSize)
% title(sprintf('Modelo Experimental - Função de Transferência - Sensor 1 e SP 1 (fit: %0.2f%%)',MPC_UC_Exp_tf_fit_y1),'FontSize',TitleSize)
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
% title(sprintf('Modelo Experimental - Função de Transferência - Sensor 2 e SP 2 (fit: %0.2f%%)',MPC_UC_Exp_tf_fit_y2),'FontSize',TitleSize)
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