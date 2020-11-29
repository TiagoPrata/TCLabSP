%% Carrega dados
load('models.mat', 'models_arx');
load('tclabsp_data.mat', 'valid');

%% Cria tabela filtrando por AIC e Score
T = struct2table(models_arx);
models_arx_sorted = sortrows(T, 3);
clear T;

for i=1:9
    figure
    resid(valid, models_arx_sorted.model{i,1});
end

% O primeiro modelo escolhido por AIC tbm respeita o criterio de autocov

model_arx = models_arx_sorted(1,:);

save('choosed_models.mat', 'model_arx', '-append');