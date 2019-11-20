disp('Ensaio 07')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('ens_IdentificacaoH1_0to50.slx');
save('ens_IdentificacaoH1_0to50_07.mat','u1u2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 08')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('ens_IdentificacaoH1_0to50.slx');
save('ens_IdentificacaoH1_0to50_08.mat','u1u2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 09')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('ens_IdentificacaoH1_0to50.slx');
save('ens_IdentificacaoH1_0to50_09.mat','u1u2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 10')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('ens_IdentificacaoH1_0to50.slx');
save('ens_IdentificacaoH1_0to50_10.mat','u1u2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');
