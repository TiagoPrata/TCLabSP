%% Carrega dados
load('models.mat', 'models_bj');

%% Filtro - elimina Scores <= 0
idx=1;
for i=1:size(models_bj,2)
    if models_bj(i).score > 0
        models_bj_filtered(idx) = models_bj(i);
        idx = idx+1;
    end
end

%% Plot
figure

x = [models_bj_filtered.aic].';
fit = [models_bj_filtered.fit].';
y = fit(:,1);
z = fit(:,2);
clear fit;

% Cores utilizando Score
score = [models_bj_filtered.score].';
nc = 16;
offset = 1;
c = score - min(score);
c = round((nc-1-2*offset)*c/max(c)+1+offset);

scatter3(x,y,z, 30, score,'filled')
title('BJ')
xlabel('AIC')
ylabel('Fit - Sensor 1')
zlabel('Fit - Sensor 2')

%% Limpa variaveis
clear