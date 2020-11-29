%% Carrega experimentos

CombineExperiments

%% Compara performance

% Modelo Experimental TF
MPC_UC_Exp_tf_IAE_y1 = IAE( MPC_UC_Exp_tf_u1, MPC_UC_Exp_tf_y1 );
MPC_UC_Exp_tf_ISE_y1 = ISE( MPC_UC_Exp_tf_u1, MPC_UC_Exp_tf_y1 );
MPC_UC_Exp_tf_ITAE_y1 = ITAE( MPC_UC_Exp_tf_u1, MPC_UC_Exp_tf_y1, time );
MPC_UC_Exp_tf_ITSE_y1 = ITSE( MPC_UC_Exp_tf_u1, MPC_UC_Exp_tf_y1, time );
MPC_UC_Exp_tf_IAE_y2 = IAE( MPC_UC_Exp_tf_u2, MPC_UC_Exp_tf_y2 );
MPC_UC_Exp_tf_ISE_y2 = ISE( MPC_UC_Exp_tf_u2, MPC_UC_Exp_tf_y2 );
MPC_UC_Exp_tf_ITAE_y2 = ITAE( MPC_UC_Exp_tf_u2, MPC_UC_Exp_tf_y2, time );
MPC_UC_Exp_tf_ITSE_y2 = ITSE( MPC_UC_Exp_tf_u2, MPC_UC_Exp_tf_y2, time );

MPC_UC_Exp_tf_IAE_media = (MPC_UC_Exp_tf_IAE_y1 + MPC_UC_Exp_tf_IAE_y2) / 2;
MPC_UC_Exp_tf_ISE_media = (MPC_UC_Exp_tf_ISE_y1 + MPC_UC_Exp_tf_ISE_y2) / 2;
MPC_UC_Exp_tf_ITAE_media = (MPC_UC_Exp_tf_ITAE_y1 + MPC_UC_Exp_tf_ITAE_y2) / 2;
MPC_UC_Exp_tf_ITSE_media = (MPC_UC_Exp_tf_ITSE_y1 + MPC_UC_Exp_tf_ITSE_y2) / 2;
