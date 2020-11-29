%% Carrega dados
load('models.mat', 'models_tf');

%% Cria tabela filtrando por AIC e Score
% T = struct2table(models_tf);
% models_tf_sorted = sortrows(T, [16 -5]);
% clear T;

%% Plot
figure
x = [models_tf.AIC].';
fit = [models_tf.fit].';
y = fit(:,1);
z = fit(:,2);
clear fit;

% Cores utilizando Score
score = [models_tf.score].';
nc = 16;
offset = 1;
c = score - min(score);
c = round((nc-1-2*offset)*c/max(c)+1+offset);

scatter3(x,y,z, 10, score,'filled')
title('TF')
xlabel('AIC')
ylabel('Fit - Sensor 1')
zlabel('Fit - Sensor 2')

%% Limpa variaveis
clear