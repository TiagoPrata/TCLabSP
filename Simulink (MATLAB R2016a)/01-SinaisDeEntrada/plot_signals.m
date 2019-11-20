subplot(2,1,1)
plot(ensaios.('Time'), ensaios.('Aquecedor1'));
title('Entrada Aquecedor 1', 'FontSize', 14);
xlabel('Tempo (s)', 'FontSize', 14);
ylabel('Potência (%)', 'FontSize', 14);

subplot(2,1,2)
plot(ensaios.('Time'), ensaios.('Aquecedor2'));
title('Entrada Aquecedor 2', 'FontSize', 14);
xlabel('Tempo (s)', 'FontSize', 14);
ylabel('Potência (%)', 'FontSize', 14);