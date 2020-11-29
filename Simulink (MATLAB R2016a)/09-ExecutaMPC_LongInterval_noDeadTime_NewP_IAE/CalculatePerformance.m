%% Carrega experimentos

CombineExperiments

%% Compara performance

% Modelo teorico SS
MPC_UC_Teo_ss_IAE_y1 = IAE( MPC_UC_Teo_ss_u1, MPC_UC_Teo_ss_y1 );
MPC_UC_Teo_ss_ISE_y1 = ISE( MPC_UC_Teo_ss_u1, MPC_UC_Teo_ss_y1 );
MPC_UC_Teo_ss_ITAE_y1 = ITAE( MPC_UC_Teo_ss_u1, MPC_UC_Teo_ss_y1, time );
MPC_UC_Teo_ss_ITSE_y1 = ITSE( MPC_UC_Teo_ss_u1, MPC_UC_Teo_ss_y1, time );
MPC_UC_Teo_ss_IAE_y2 = IAE( MPC_UC_Teo_ss_u2, MPC_UC_Teo_ss_y2 );
MPC_UC_Teo_ss_ISE_y2 = ISE( MPC_UC_Teo_ss_u2, MPC_UC_Teo_ss_y2 );
MPC_UC_Teo_ss_ITAE_y2 = ITAE( MPC_UC_Teo_ss_u2, MPC_UC_Teo_ss_y2, time );
MPC_UC_Teo_ss_ITSE_y2 = ITSE( MPC_UC_Teo_ss_u2, MPC_UC_Teo_ss_y2, time );

MPC_UC_Teo_ss_IAE_media = (MPC_UC_Teo_ss_IAE_y1 + MPC_UC_Teo_ss_IAE_y2) / 2;
MPC_UC_Teo_ss_ISE_media = (MPC_UC_Teo_ss_ISE_y1 + MPC_UC_Teo_ss_ISE_y2) / 2;
MPC_UC_Teo_ss_ITAE_media = (MPC_UC_Teo_ss_ITAE_y1 + MPC_UC_Teo_ss_ITAE_y2) / 2;
MPC_UC_Teo_ss_ITSE_media = (MPC_UC_Teo_ss_ITSE_y1 + MPC_UC_Teo_ss_ITSE_y2) / 2;

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

% Modelo Experimental ARMAX
MPC_UC_Exp_armax_IAE_y1 = IAE( MPC_UC_Exp_armax_u1, MPC_UC_Exp_armax_y1 );
MPC_UC_Exp_armax_ISE_y1 = ISE( MPC_UC_Exp_armax_u1, MPC_UC_Exp_armax_y1 );
MPC_UC_Exp_armax_ITAE_y1 = ITAE( MPC_UC_Exp_armax_u1, MPC_UC_Exp_armax_y1, time );
MPC_UC_Exp_armax_ITSE_y1 = ITSE( MPC_UC_Exp_armax_u1, MPC_UC_Exp_armax_y1, time );
MPC_UC_Exp_armax_IAE_y2 = IAE( MPC_UC_Exp_armax_u2, MPC_UC_Exp_armax_y2 );
MPC_UC_Exp_armax_ISE_y2 = ISE( MPC_UC_Exp_armax_u2, MPC_UC_Exp_armax_y2 );
MPC_UC_Exp_armax_ITAE_y2 = ITAE( MPC_UC_Exp_armax_u2, MPC_UC_Exp_armax_y2, time );
MPC_UC_Exp_armax_ITSE_y2 = ITSE( MPC_UC_Exp_armax_u2, MPC_UC_Exp_armax_y2, time );

MPC_UC_Exp_armax_IAE_media = (MPC_UC_Exp_armax_IAE_y1 + MPC_UC_Exp_armax_IAE_y2) / 2;
MPC_UC_Exp_armax_ISE_media = (MPC_UC_Exp_armax_ISE_y1 + MPC_UC_Exp_armax_ISE_y2) / 2;
MPC_UC_Exp_armax_ITAE_media = (MPC_UC_Exp_armax_ITAE_y1 + MPC_UC_Exp_armax_ITAE_y2) / 2;
MPC_UC_Exp_armax_ITSE_media = (MPC_UC_Exp_armax_ITSE_y1 + MPC_UC_Exp_armax_ITSE_y2) / 2;

% Modelo Experimental OE
MPC_UC_Exp_oe_IAE_y1 = IAE( MPC_UC_Exp_oe_u1, MPC_UC_Exp_oe_y1 );
MPC_UC_Exp_oe_ISE_y1 = ISE( MPC_UC_Exp_oe_u1, MPC_UC_Exp_oe_y1 );
MPC_UC_Exp_oe_ITAE_y1 = ITAE( MPC_UC_Exp_oe_u1, MPC_UC_Exp_oe_y1, time );
MPC_UC_Exp_oe_ITSE_y1 = ITSE( MPC_UC_Exp_oe_u1, MPC_UC_Exp_oe_y1, time );
MPC_UC_Exp_oe_IAE_y2 = IAE( MPC_UC_Exp_oe_u2, MPC_UC_Exp_oe_y2 );
MPC_UC_Exp_oe_ISE_y2 = ISE( MPC_UC_Exp_oe_u2, MPC_UC_Exp_oe_y2 );
MPC_UC_Exp_oe_ITAE_y2 = ITAE( MPC_UC_Exp_oe_u2, MPC_UC_Exp_oe_y2, time );
MPC_UC_Exp_oe_ITSE_y2 = ITSE( MPC_UC_Exp_oe_u2, MPC_UC_Exp_oe_y2, time );

MPC_UC_Exp_oe_IAE_media = (MPC_UC_Exp_oe_IAE_y1 + MPC_UC_Exp_oe_IAE_y2) / 2;
MPC_UC_Exp_oe_ISE_media = (MPC_UC_Exp_oe_ISE_y1 + MPC_UC_Exp_oe_ISE_y2) / 2;
MPC_UC_Exp_oe_ITAE_media = (MPC_UC_Exp_oe_ITAE_y1 + MPC_UC_Exp_oe_ITAE_y2) / 2;
MPC_UC_Exp_oe_ITSE_media = (MPC_UC_Exp_oe_ITSE_y1 + MPC_UC_Exp_oe_ITSE_y2) / 2;

% Modelo Experimental SS
MPC_UC_Exp_ss_IAE_y1 = IAE( MPC_UC_Exp_ss_u1, MPC_UC_Exp_ss_y1 );
MPC_UC_Exp_ss_ISE_y1 = ISE( MPC_UC_Exp_ss_u1, MPC_UC_Exp_ss_y1 );
MPC_UC_Exp_ss_ITAE_y1 = ITAE( MPC_UC_Exp_ss_u1, MPC_UC_Exp_ss_y1, time );
MPC_UC_Exp_ss_ITSE_y1 = ITSE( MPC_UC_Exp_ss_u1, MPC_UC_Exp_ss_y1, time );
MPC_UC_Exp_ss_IAE_y2 = IAE( MPC_UC_Exp_ss_u2, MPC_UC_Exp_ss_y2 );
MPC_UC_Exp_ss_ISE_y2 = ISE( MPC_UC_Exp_ss_u2, MPC_UC_Exp_ss_y2 );
MPC_UC_Exp_ss_ITAE_y2 = ITAE( MPC_UC_Exp_ss_u2, MPC_UC_Exp_ss_y2, time );
MPC_UC_Exp_ss_ITSE_y2 = ITSE( MPC_UC_Exp_ss_u2, MPC_UC_Exp_ss_y2, time );

MPC_UC_Exp_ss_IAE_media = (MPC_UC_Exp_ss_IAE_y1 + MPC_UC_Exp_ss_IAE_y2) / 2;
MPC_UC_Exp_ss_ISE_media = (MPC_UC_Exp_ss_ISE_y1 + MPC_UC_Exp_ss_ISE_y2) / 2;
MPC_UC_Exp_ss_ITAE_media = (MPC_UC_Exp_ss_ITAE_y1 + MPC_UC_Exp_ss_ITAE_y2) / 2;
MPC_UC_Exp_ss_ITSE_media = (MPC_UC_Exp_ss_ITSE_y1 + MPC_UC_Exp_ss_ITSE_y2) / 2;

% Modelo Experimental ARM
MPC_UC_Exp_arx_IAE_y1 = IAE( MPC_UC_Exp_arx_u1, MPC_UC_Exp_arx_y1 );
MPC_UC_Exp_arx_ISE_y1 = ISE( MPC_UC_Exp_arx_u1, MPC_UC_Exp_arx_y1 );
MPC_UC_Exp_arx_ITAE_y1 = ITAE( MPC_UC_Exp_arx_u1, MPC_UC_Exp_arx_y1, time );
MPC_UC_Exp_arx_ITSE_y1 = ITSE( MPC_UC_Exp_arx_u1, MPC_UC_Exp_arx_y1, time );
MPC_UC_Exp_arx_IAE_y2 = IAE( MPC_UC_Exp_arx_u2, MPC_UC_Exp_arx_y2 );
MPC_UC_Exp_arx_ISE_y2 = ISE( MPC_UC_Exp_arx_u2, MPC_UC_Exp_arx_y2 );
MPC_UC_Exp_arx_ITAE_y2 = ITAE( MPC_UC_Exp_arx_u2, MPC_UC_Exp_arx_y2, time );
MPC_UC_Exp_arx_ITSE_y2 = ITSE( MPC_UC_Exp_arx_u2, MPC_UC_Exp_arx_y2, time );

MPC_UC_Exp_arx_IAE_media = (MPC_UC_Exp_arx_IAE_y1 + MPC_UC_Exp_arx_IAE_y2) / 2;
MPC_UC_Exp_arx_ISE_media = (MPC_UC_Exp_arx_ISE_y1 + MPC_UC_Exp_arx_ISE_y2) / 2;
MPC_UC_Exp_arx_ITAE_media = (MPC_UC_Exp_arx_ITAE_y1 + MPC_UC_Exp_arx_ITAE_y2) / 2;
MPC_UC_Exp_arx_ITSE_media = (MPC_UC_Exp_arx_ITSE_y1 + MPC_UC_Exp_arx_ITSE_y2) / 2;