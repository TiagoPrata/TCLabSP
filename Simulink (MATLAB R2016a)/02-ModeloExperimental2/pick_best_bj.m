%% Carrega dados
load('models.mat', 'models_bj');
load('tclabsp_data.mat', 'valid');

%% Cria tabela filtrando por AIC e Score
T = struct2table(models_bj);
models_bj_sorted = sortrows(T, 3);
models_bj_10AIC = models_bj_sorted(1:10,:);
clear T;

for i=1:10
    figure
    resid(valid, models_bj_10AIC.model{i,1});
end

% Escolhido o primeiro por ser o melhor no criterio de autocorr

model_bj = models_bj_10AIC(1,:);

save('choosed_models.mat', 'model_bj', '-append');