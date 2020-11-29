%% Prepara dados do Ensaio01

load('Resultados.mat');

newPID01_MOs = PID01_MOs;
newPID01_MOs = delsample(newPID01_MOs,'Index',2);
newPID01_MOs = delsample(newPID01_MOs,'Index',2);
newPID01_MOs = delsample(newPID01_MOs,'Index',2);
newPID01_MOs = delsample(newPID01_MOs,'Index',2);
newPID01_MOs = delsample(newPID01_MOs,'Index',2);
newPID01_MOs = delsample(newPID01_MOs,'Index',2);
newPID01_MOs = delsample(newPID01_MOs,'Index',6194);
newPID01_MOs = delsample(newPID01_MOs,'Index',6194);
newPID01_MOs = delsample(newPID01_MOs,'Index',6195);

newPID01_MVs = PID01_MVs;
newPID01_MVs = delsample(newPID01_MVs,'Index',2);
newPID01_MVs = delsample(newPID01_MVs,'Index',2);
newPID01_MVs = delsample(newPID01_MVs,'Index',2);
newPID01_MVs = delsample(newPID01_MVs,'Index',2);
newPID01_MVs = delsample(newPID01_MVs,'Index',2);
newPID01_MVs = delsample(newPID01_MVs,'Index',2);
newPID01_MVs = delsample(newPID01_MVs,'Index',6194);
newPID01_MVs = delsample(newPID01_MVs,'Index',6194);
newPID01_MVs = delsample(newPID01_MVs,'Index',6195);

newPID01_SPs = PID01_SPs;
newPID01_SPs = delsample(newPID01_SPs,'Index',2);
newPID01_SPs = delsample(newPID01_SPs,'Index',2);
newPID01_SPs = delsample(newPID01_SPs,'Index',2);
newPID01_SPs = delsample(newPID01_SPs,'Index',2);
newPID01_SPs = delsample(newPID01_SPs,'Index',2);
newPID01_SPs = delsample(newPID01_SPs,'Index',2);
newPID01_SPs = delsample(newPID01_SPs,'Index',6194);
newPID01_SPs = delsample(newPID01_SPs,'Index',6194);
newPID01_SPs = delsample(newPID01_SPs,'Index',6195);

%% Plota MOs - Ensaio 1

% Dados do ensaio
Time = MPC01_MOs.Time;
SP1 = MPC01_SPs.Data(:,1);
SP2 = MPC01_SPs.Data(:,2);
MPC_MO1 = MPC01_MOs.Data(:,1);
MPC_MO2 = MPC01_MOs.Data(:,2);
MPC_MV1 = MPC01_MVs.Data(:,1);
MPC_MV2 = MPC01_MVs.Data(:,2);
PID_MO1 = newPID01_MOs.Data(:,1);
PID_MO2 = newPID01_MOs.Data(:,2);
PID_MV1 = newPID01_MVs.Data(:,1);
PID_MV2 = newPID01_MVs.Data(:,2);

% Dados de erro
MPC_MO1_err = (MPC_MO1 - SP1).^2;
MPC_MO2_err = (MPC_MO2 - SP2).^2;
PID_MO1_err = (PID_MO1 - SP1).^2;
PID_MO2_err = (PID_MO2 - SP2).^2;
MPC_MO1_mean = sqrt(mean(MPC_MO1_err));
MPC_MO2_mean = sqrt(mean(MPC_MO2_err));
PID_MO1_mean = sqrt(mean(PID_MO1_err));
PID_MO2_mean = sqrt(mean(PID_MO2_err));

figure
plot(Time,SP1,'r-',Time,MPC_MO1,'g-',Time,PID_MO1,'b-')
figure
plot(Time,MPC_MO1_err,'g.',Time,PID_MO1_err,'b.')

