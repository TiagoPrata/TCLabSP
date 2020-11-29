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

% Modelo 2 tem o autocorr um pouco melhor
% a xcorr do modelo 2 não tem cor, mas eles estão bem abaixo do limite

model_oe = models_oe_10AIC(2,:);

save('choosed_models.mat', 'model_oe', '-append');