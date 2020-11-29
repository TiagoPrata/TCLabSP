%% Carrega dados
load('models.mat', 'models_oe');
load('tclabsp_data.mat', 'valid');

%% Cria tabela filtrando por AIC e Score
T = struct2table(models_oe);
models_oe_sorted = sortrows(T, 3);
models_oe_10AIC = models_oe_sorted(1:10,:);
clear T;

for i=1:10
    figure
    resid(valid, models_oe_10AIC.model{i,1});
end

% Escolhido o quarto por ser o melhor no criterio de autocorr

model_oe = models_oe_10AIC(4,:);

save('choosed_models.mat', 'model_oe', '-append');