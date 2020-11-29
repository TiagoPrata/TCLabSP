% load('created_MPCs')

%% Unconstrained

% % Teo SS
% disp('Ensaio 01 - Teo SS')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Teo_ss.slx');
% save('MPC_UC_Teo_ss_01.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 02 - Teo SS')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Teo_ss.slx');
% save('MPC_UC_Teo_ss_02.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 03 - Teo SS')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Teo_ss.slx');
% save('MPC_UC_Teo_ss_03.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');


% Exp TF
disp('Ensaio 01 - Exp TF')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('MPC_UC_Exp_tf.slx');
save('MPC_UC_Exp_tf_01.mat','u1', 'u2', 'mv1mv2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 02 - Exp TF')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('MPC_UC_Exp_tf.slx');
save('MPC_UC_Exp_tf_02.mat','u1', 'u2', 'mv1mv2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 03 - Exp TF')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('MPC_UC_Exp_tf.slx');
save('MPC_UC_Exp_tf_03.mat','u1', 'u2', 'mv1mv2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');


% % Exp BJ
% disp('Ensaio 01 - Exp BJ')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_bj.slx');
% save('MPC_UC_Exp_bj_01.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 02 - Exp BJ')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_bj.slx');
% save('MPC_UC_Exp_bj_02.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 03 - Exp BJ')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_bj.slx');
% save('MPC_UC_Exp_bj_03.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');


% % Exp ARMAX
% disp('Ensaio 01 - Exp ARMAX')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_armax.slx');
% save('MPC_UC_Exp_armax_01.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 02 - Exp ARMAX')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_armax.slx');
% save('MPC_UC_Exp_armax_02.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 03 - Exp ARMAX')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_armax.slx');
% save('MPC_UC_Exp_armax_03.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% % Exp OE
% disp('Ensaio 01 - Exp OE')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_oe.slx');
% save('MPC_UC_Exp_oe_01.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 02 - Exp OE')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_oe.slx');
% save('MPC_UC_Exp_oe_02.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 03 - Exp OE')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_oe.slx');
% save('MPC_UC_Exp_oe_03.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% % Exp SS
% disp('Ensaio 01 - Exp SS')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_ss.slx');
% save('MPC_UC_Exp_ss_01.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 02 - Exp SS')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_ss.slx');
% save('MPC_UC_Exp_ss_02.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 03 - Exp SS')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_ss.slx');
% save('MPC_UC_Exp_ss_03.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% % Exp ARX
% disp('Ensaio 01 - Exp ARX')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_arx.slx');
% save('MPC_UC_Exp_arx_01.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 02 - Exp ARX')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_arx.slx');
% save('MPC_UC_Exp_arx_02.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 03 - Exp ARX')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('MPC_UC_Exp_arx.slx');
% save('MPC_UC_Exp_arx_03.mat','u1', 'u2', 'mv1mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');