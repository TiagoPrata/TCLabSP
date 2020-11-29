%% Carrega dados
load('models.mat', 'models_nlarx');

%% Filtro - elimina Scores <= 0
idx=1;
for i=1:size(models_nlarx,2)
    if models_nlarx(i).score > 0
        models_nlarx_filtered(idx) = models_nlarx(i);
        idx = idx+1;
    end
end

%% Plot
figure

x = [models_nlarx_filtered.aic].';
fit = [models_nlarx_filtered.fit].';
y = fit(:,1);
z = fit(:,2);
clear fit;

% Cores utilizando Score
score = [models_nlarx_filtered.score].';
nc = 16;
offset = 1;
c = score - min(score);
c = round((nc-1-2*offset)*c/max(c)+1+offset);

scatter3(x,y,z, 25, score,'filled')
title('NLARX')
xlabel('AIC')
ylabel('Fit - Sensor 1')
zlabel('Fit - Sensor 2')

%% Limpa variaveis
clear