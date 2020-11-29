%% Carrega dados
load('models.mat', 'models_armax');

%% Filtro - elimina Scores <= 0
idx=1;
for i=1:size(models_armax,2)
    if models_armax(i).score > 0
        models_armax_filtered(idx) = models_armax(i);
        idx = idx+1;
    end
end

%% Plot
figure

x = [models_armax_filtered.aic].';
fit = [models_armax_filtered.fit].';
y = fit(:,1);
z = fit(:,2);
clear fit;

% Cores utilizando Score
score = [models_armax_filtered.score].';
nc = 16;
offset = 1;
c = score - min(score);
c = round((nc-1-2*offset)*c/max(c)+1+offset);

scatter3(x,y,z, 70, score,'filled')
title('ARMAX')
xlabel('AIC')
ylabel('Fit - Sensor 1')
zlabel('Fit - Sensor 2')

%% Limpa variaveis
clear