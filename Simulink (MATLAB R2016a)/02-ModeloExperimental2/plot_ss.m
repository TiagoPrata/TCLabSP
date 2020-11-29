%% Carrega dados
load('models.mat', 'models_ss');

%% Plot
figure
x = [models_ss.AIC].';
fit = [models_ss.fit].';
y = fit(:,1);
z = fit(:,2);
clear fit;

% Cores utilizando Score
score = [models_ss.score].';
nc = 16;
offset = 1;
c = score - min(score);
c = round((nc-1-2*offset)*c/max(c)+1+offset);

scatter3(x,y,z, 40, score,'filled')
title('SS')
xlabel('AIC')
ylabel('Fit - Sensor 1')
zlabel('Fit - Sensor 2')

%% Limpa variaveis
clear