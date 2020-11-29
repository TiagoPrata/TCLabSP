%% Carrega dados
load('models.mat', 'models_armax');
load('tclabsp_data.mat', 'valid');

%% Cria tabela filtrando por AIC e Score
T = struct2table(models_armax);
models_armax_sorted = sortrows(T, 3);
models_armax_10AIC = models_armax_sorted(1:10,:);
clear T;

for i=1:10
    figure
    resid(valid, models_armax_10AIC.model{i,1});
end

% Escolhido o terceiro por ser o melhor no criterio de autocorr

model_armax = models_armax_10AIC(3,:);

save('choosed_models.mat', 'model_armax', '-append');