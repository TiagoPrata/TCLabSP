disp('Ensaio 01')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
RunMe;
sim('ComparaModeloTeorico.slx');
save('ComparaModeloTeorico_01.mat','u1u2', 'y1y2_model', 'y1y2_plant');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 02')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
RunMe;
sim('ComparaModeloTeorico.slx');
save('ComparaModeloTeorico_02.mat','u1u2', 'y1y2_model', 'y1y2_plant');
sim('ens_Identificacao_Cooling.slx');

disp('Ensaio 03')
disp(char(strcat('Inicio:', {' '}, datestr(datetime))))
RunMe;
sim('ComparaModeloTeorico.slx');
save('ComparaModeloTeorico_03.mat','u1u2', 'y1y2_model', 'y1y2_plant');
sim('ens_Identificacao_Cooling.slx');
