
disp(' ');
disp('Carregando ensaios');
disp('==================');
disp(' ');
ensaios = combinar_experimentos('./Ensaios');
disp(' ');
disp(' ');
disp('Plotando sinais de entrada');
disp('==========================');
run('plot_signals');