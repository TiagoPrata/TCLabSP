%% Carrega dados
load('models.mat', 'models_ss');
load('tclabsp_data.mat', 'valid');

%% Cria tabela filtrando por AIC e Score
T = struct2table(models_ss);
models_ss_sorted = sortrows(T, 7);
clear T;

% for i=1:size(models_ss,2)
%     figure
%     resid(valid, models_ss_sorted.model{i,1});
% end

% TERMINAR!!! O criterio de autocorrelacao esta escolhendo ordem 9
% model_ss = models_ss_sorted.model{i,1};
model_ss = models_ss_sorted.model{1,1};

save('choosed_models.mat', 'model_ss', '-append');