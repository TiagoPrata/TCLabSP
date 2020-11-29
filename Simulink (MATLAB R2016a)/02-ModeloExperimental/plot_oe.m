%% Carrega dados
load('models.mat', 'models_oe');

%% Filtro - elimina Scores <= 0
idx=1;
for i=1:size(models_oe,2)
    if models_oe(i).score > 0
        models_oe_filtered(idx) = models_oe(i);
        idx = idx+1;
    end
end

%% Plot
figure

x = [models_oe_filtered.aic].';
fit = [models_oe_filtered.fit].';
y = fit(:,1);
z = fit(:,2);
clear fit;

% Cores utilizando Score
score = [models_oe_filtered.score].';
nc = 16;
offset = 1;
c = score - min(score);
c = round((nc-1-2*offset)*c/max(c)+1+offset);

scatter3(x,y,z, 30, score,'filled')
title('OE')
xlabel('AIC')
ylabel('Fit - Sensor 1')
zlabel('Fit - Sensor 2')

%% Limpa variaveis
clear