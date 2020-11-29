%% Carrega experimentos

CombineExperiments

%% Compara performance

% Modelo teorico SS
PID_IAE_y1 = IAE( u1_avg, y1_avg );
PID_ISE_y1 = ISE( u1_avg, y1_avg );
PID_ITAE_y1 = ITAE( u1_avg, y1_avg, time );
PID_ITSE_y1 = ITSE( u1_avg, y1_avg, time );
PID_IAE_y2 = IAE( u2_avg, y2_avg );
PID_ISE_y2 = ISE( u2_avg, y2_avg );
PID_ITAE_y2 = ITAE( u2_avg, y2_avg, time );
PID_ITSE_y2 = ITSE( u2_avg, y2_avg, time );

PID_IAE_media = (PID_IAE_y1 + PID_IAE_y2) / 2;
PID_ISE_media = (PID_ISE_y1 + PID_ISE_y2) / 2;
PID_ITAE_media = (PID_ITAE_y1 + PID_ITAE_y2) / 2;
PID_ITSE_media = (PID_ITSE_y1 + PID_ITSE_y2) / 2;
