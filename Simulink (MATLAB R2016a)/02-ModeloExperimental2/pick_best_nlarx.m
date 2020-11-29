%% Carrega dados
load('models.mat', 'models_nlarx');
load('tclabsp_data.mat', 'valid');

%% Cria tabela filtrando por AIC e Score
T = struct2table(models_nlarx);
models_nlarx_AICsorted = sortrows(T, 3);
models_nlarx_10AIC = models_nlarx_AICsorted(1:10,:);
models_nlarx_262AIC = models_nlarx_AICsorted(1:262,:);
models_nlarx_AICsorted_ScoreSorted = sortrows(models_nlarx_262AIC, -5);
clear T;

% for i=1:10
%     figure
%     resid(valid, models_nlarx_10AIC.model{i,1});
% end

% Escolhendo o primeiro modelo com sorted score, pois os testes
% de residuos se mostraram muito parecidos para todos os modelos

%model_nlarx = models_nlarx_10AIC(1,:);
model_nlarx = models_nlarx_AICsorted_ScoreSorted(1,:);

save('choosed_models.mat', 'model_nlarx', '-append');