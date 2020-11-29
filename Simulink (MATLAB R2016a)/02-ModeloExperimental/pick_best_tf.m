%% Carrega dados
load('models.mat', 'models_tf');
load('tclabsp_data.mat', 'valid');

%% Cria tabela filtrando por AIC e Score
T = struct2table(models_tf);
models_tf_sorted = sortrows(T, [16 -5]);
models_tf_10AIC = models_tf_sorted(1:10,:);
clear T;

for i=1:10
    figure
    resid(valid, models_tf_10AIC.model{i,1});
end

% Devido aos primeiros 7 modelos não passarem no teste de autocorrelacao
% o modelo escolhido foi o #8 na lista ordenada pelo AIC

model_tf = models_tf_10AIC(8,:);

save('choosed_models.mat', 'model_tf', '-append');