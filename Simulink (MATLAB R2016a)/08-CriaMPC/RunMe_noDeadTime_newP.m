clear

%% Carrega modelo teorico

LoadModel_FirstPrinciples
clearvars -except TCLab_Teo_ss

%% Carrega modelo experimental

LoadModel_Experimental
clearvars -except TCLab_Teo_ss TCLab_Exp_tf TCLab_Exp_ss ...
                  TCLab_Exp_bj TCLab_Exp_oe TCLab_Exp_arx TCLab_Exp_armax
              
%% Configuracoes genericas do MPC

Ts = 7;
Max_DeadTime = 0;      % Maior atraso encontrado graficamente (nenhuma analise revelou esse atraso)
Max_SettlingTime = 2000;
MV1 = struct('Min',0,'Max',100);
MV2 = struct('Min',0,'Max',100);
M = 2;
P = 0.8 * Max_SettlingTime / Ts;

% Parametros para MPC sem constraints
Weights_uc = struct('ManipulatedVariables', [0 0], ...
                         'ManipulatedVariablesRate', [0.01 0.01], ...
                         'OutputVariables', [1 1], ...
                         'ECR', 100000);

% Parametros para MPC com constraints
Weights_c = struct('ManipulatedVariables', [0 0], ...
                   'ManipulatedVariablesRate', [0.1 0.1], ...
                   'OutputVariables', [1 1], ...
                   'ECR', 100000);


%% Cria MPC com modelo teorico

% Sem constraints
MPC_UC_tclab_teo_ss = mpc(TCLab_Teo_ss, Ts, P, M, Weights_uc, [MV1 MV2]);
% Com constraints
MPC_C_tclab_teo_ss = mpc(TCLab_Teo_ss, Ts, P, M, Weights_c, [MV1 MV2]);

%% Cria MPC com modelo experimental

% Sem constraints
MPC_UC_tclab_exp_tf = mpc(TCLab_Exp_tf, Ts, P, M, Weights_uc, [MV1 MV2]);
MPC_UC_tclab_exp_ss = mpc(TCLab_Exp_ss, Ts, P, M, Weights_uc, [MV1 MV2]);
MPC_UC_tclab_exp_oe = mpc(TCLab_Exp_oe, Ts, P, M, Weights_uc, [MV1 MV2]);
MPC_UC_tclab_exp_bj = mpc(TCLab_Exp_bj, Ts, P, M, Weights_uc, [MV1 MV2]);
MPC_UC_tclab_exp_arx = mpc(TCLab_Exp_arx, Ts, P, M, Weights_uc, [MV1 MV2]);
MPC_UC_tclab_exp_armax = mpc(TCLab_Exp_armax, Ts, P, M, Weights_uc, [MV1 MV2]);
% Com constraints
MPC_C_tclab_exp_tf = mpc(TCLab_Exp_tf, Ts, P, M, Weights_c, [MV1 MV2]);
MPC_C_tclab_exp_ss = mpc(TCLab_Exp_ss, Ts, P, M, Weights_c, [MV1 MV2]);
MPC_C_tclab_exp_oe = mpc(TCLab_Exp_oe, Ts, P, M, Weights_c, [MV1 MV2]);
MPC_C_tclab_exp_bj = mpc(TCLab_Exp_bj, Ts, P, M, Weights_c, [MV1 MV2]);
MPC_C_tclab_exp_arx = mpc(TCLab_Exp_arx, Ts, P, M, Weights_c, [MV1 MV2]);
MPC_C_tclab_exp_armax = mpc(TCLab_Exp_armax, Ts, P, M, Weights_c, [MV1 MV2]);

%% Limpando variaveis

clear M MV1 MV2 Weights_uc Weights_c P Ts Max_DeadTime