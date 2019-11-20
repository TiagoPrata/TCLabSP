disp('Ensaio 17')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('ens_IdentificacaoH1H2_Random_v2.slx');
save('ens_IdentificacaoH1H2_Random_v2_17.mat','u1u2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 18')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('ens_IdentificacaoH1H2_Random_v2.slx');
save('ens_IdentificacaoH1H2_Random_v2_18.mat','u1u2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 19')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('ens_IdentificacaoH1H2_Random_v2.slx');
save('ens_IdentificacaoH1H2_Random_v2_19.mat','u1u2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 20')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
sim('ens_IdentificacaoH1H2_Random_v2.slx');
save('ens_IdentificacaoH1H2_Random_v2_20.mat','u1u2', 'y1y2');
sim('ens_Identificacao_Cooling.slx');