% disp('Ensaio 01')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('PIDtest.slx');
% save('PIDtest_01.mat','u1', 'u2', 'mv1', 'mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');
% 
% disp('Ensaio 02')
% disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
% sim('PIDtest.slx');
% save('PIDtest_02.mat','u1', 'u2', 'mv1', 'mv2', 'y1y2');
% sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 03')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('PIDtest.slx');
save('PIDtest_03.mat','u1', 'u2', 'mv1', 'mv2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 04')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('PIDtest.slx');
save('PIDtest_04.mat','u1', 'u2', 'mv1', 'mv2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 05')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('PIDtest.slx');
save('PIDtest_05.mat','u1', 'u2', 'mv1', 'mv2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');
