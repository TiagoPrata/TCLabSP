%% MPC_UC_Teo_ss

load('MPC_UC_Teo_ss_01.mat')

time = y1y2.time;
mv_time = mv1mv2.time;

exp1_u1 = u1.Data(:,1);
exp1_u2 = u2.Data(:,1);
exp1_mv1 = mv1mv2.Data(:,1);
exp1_mv2 = mv1mv2.Data(:,2);
exp1_y1 = y1y2.Data(:,1);
exp1_y2 = y1y2.Data(:,2);

load('MPC_UC_Teo_ss_02.mat')
exp2_u1 = u1.Data(:,1);
exp2_u2 = u2.Data(:,1);
exp2_mv1 = mv1mv2.Data(:,1);
exp2_mv2 = mv1mv2.Data(:,2);
exp2_y1 = y1y2.Data(:,1);
exp2_y2 = y1y2.Data(:,2);

load('MPC_UC_Teo_ss_03.mat')
exp3_u1 = u1.Data(:,1);
exp3_u2 = u2.Data(:,1);
exp3_mv1 = mv1mv2.Data(:,1);
exp3_mv2 = mv1mv2.Data(:,2);
exp3_y1 = y1y2.Data(:,1);
exp3_y2 = y1y2.Data(:,2);

MPC_UC_Teo_ss_u1 = (exp1_u1 + exp2_u1 + exp3_u1)/3;
MPC_UC_Teo_ss_u2 = (exp1_u2 + exp2_u2 + exp3_u2)/3;
MPC_UC_Teo_ss_mv1 = (exp1_mv1 + exp2_mv1 + exp3_mv1)/3;
MPC_UC_Teo_ss_mv2 = (exp1_mv2 + exp2_mv2 + exp3_mv2)/3;
MPC_UC_Teo_ss_y1 = (exp1_y1 + exp2_y1 + exp3_y1)/3;
MPC_UC_Teo_ss_y2 = (exp1_y2 + exp2_y2 + exp3_y2)/3;


%% MPC_UC_Exp_tf

load('MPC_UC_Exp_tf_01.mat')
exp1_u1 = u1.Data(:,1);
exp1_u2 = u2.Data(:,1);
exp1_mv1 = mv1mv2.Data(:,1);
exp1_mv2 = mv1mv2.Data(:,2);
exp1_y1 = y1y2.Data(:,1);
exp1_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_tf_02.mat')
exp2_u1 = u1.Data(:,1);
exp2_u2 = u2.Data(:,1);
exp2_mv1 = mv1mv2.Data(:,1);
exp2_mv2 = mv1mv2.Data(:,2);
exp2_y1 = y1y2.Data(:,1);
exp2_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_tf_03.mat')
exp3_u1 = u1.Data(:,1);
exp3_u2 = u2.Data(:,1);
exp3_mv1 = mv1mv2.Data(:,1);
exp3_mv2 = mv1mv2.Data(:,2);
exp3_y1 = y1y2.Data(:,1);
exp3_y2 = y1y2.Data(:,2);

MPC_UC_Exp_tf_u1 = (exp1_u1 + exp2_u1 + exp3_u1)/3;
MPC_UC_Exp_tf_u2 = (exp1_u2 + exp2_u2 + exp3_u2)/3;
MPC_UC_Exp_tf_mv1 = (exp1_mv1 + exp2_mv1 + exp3_mv1)/3;
MPC_UC_Exp_tf_mv2 = (exp1_mv2 + exp2_mv2 + exp3_mv2)/3;
MPC_UC_Exp_tf_y1 = (exp1_y1 + exp2_y1 + exp3_y1)/3;
MPC_UC_Exp_tf_y2 = (exp1_y2 + exp2_y2 + exp3_y2)/3;


%% MPC_UC_Exp_ss

load('MPC_UC_Exp_ss_01.mat')
exp1_u1 = u1.Data(:,1);
exp1_u2 = u2.Data(:,1);
exp1_mv1 = mv1mv2.Data(:,1);
exp1_mv2 = mv1mv2.Data(:,2);
exp1_y1 = y1y2.Data(:,1);
exp1_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_ss_02.mat')
exp2_u1 = u1.Data(:,1);
exp2_u2 = u2.Data(:,1);
exp2_mv1 = mv1mv2.Data(:,1);
exp2_mv2 = mv1mv2.Data(:,2);
exp2_y1 = y1y2.Data(:,1);
exp2_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_ss_03.mat')
exp3_u1 = u1.Data(:,1);
exp3_u2 = u2.Data(:,1);
exp3_mv1 = mv1mv2.Data(:,1);
exp3_mv2 = mv1mv2.Data(:,2);
exp3_y1 = y1y2.Data(:,1);
exp3_y2 = y1y2.Data(:,2);

MPC_UC_Exp_ss_u1 = (exp1_u1 + exp2_u1 + exp3_u1)/3;
MPC_UC_Exp_ss_u2 = (exp1_u2 + exp2_u2 + exp3_u2)/3;
MPC_UC_Exp_ss_mv1 = (exp1_mv1 + exp2_mv1 + exp3_mv1)/3;
MPC_UC_Exp_ss_mv2 = (exp1_mv2 + exp2_mv2 + exp3_mv2)/3;
MPC_UC_Exp_ss_y1 = (exp1_y1 + exp2_y1 + exp3_y1)/3;
MPC_UC_Exp_ss_y2 = (exp1_y2 + exp2_y2 + exp3_y2)/3;


%% MPC_UC_Exp_oe

load('MPC_UC_Exp_oe_01.mat')
exp1_u1 = u1.Data(:,1);
exp1_u2 = u2.Data(:,1);
exp1_mv1 = mv1mv2.Data(:,1);
exp1_mv2 = mv1mv2.Data(:,2);
exp1_y1 = y1y2.Data(:,1);
exp1_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_oe_02.mat')
exp2_u1 = u1.Data(:,1);
exp2_u2 = u2.Data(:,1);
exp2_mv1 = mv1mv2.Data(:,1);
exp2_mv2 = mv1mv2.Data(:,2);
exp2_y1 = y1y2.Data(:,1);
exp2_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_oe_03.mat')
exp3_u1 = u1.Data(:,1);
exp3_u2 = u2.Data(:,1);
exp3_mv1 = mv1mv2.Data(:,1);
exp3_mv2 = mv1mv2.Data(:,2);
exp3_y1 = y1y2.Data(:,1);
exp3_y2 = y1y2.Data(:,2);

MPC_UC_Exp_oe_u1 = (exp1_u1 + exp2_u1 + exp3_u1)/3;
MPC_UC_Exp_oe_u2 = (exp1_u2 + exp2_u2 + exp3_u2)/3;
MPC_UC_Exp_oe_mv1 = (exp1_mv1 + exp2_mv1 + exp3_mv1)/3;
MPC_UC_Exp_oe_mv2 = (exp1_mv2 + exp2_mv2 + exp3_mv2)/3;
MPC_UC_Exp_oe_y1 = (exp1_y1 + exp2_y1 + exp3_y1)/3;
MPC_UC_Exp_oe_y2 = (exp1_y2 + exp2_y2 + exp3_y2)/3;


%% MPC_UC_Exp_arx

load('MPC_UC_Exp_arx_01.mat')
exp1_u1 = u1.Data(:,1);
exp1_u2 = u2.Data(:,1);
exp1_mv1 = mv1mv2.Data(:,1);
exp1_mv2 = mv1mv2.Data(:,2);
exp1_y1 = y1y2.Data(:,1);
exp1_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_arx_02.mat')
exp2_u1 = u1.Data(:,1);
exp2_u2 = u2.Data(:,1);
exp2_mv1 = mv1mv2.Data(:,1);
exp2_mv2 = mv1mv2.Data(:,2);
exp2_y1 = y1y2.Data(:,1);
exp2_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_arx_03.mat')
exp3_u1 = u1.Data(:,1);
exp3_u2 = u2.Data(:,1);
exp3_mv1 = mv1mv2.Data(:,1);
exp3_mv2 = mv1mv2.Data(:,2);
exp3_y1 = y1y2.Data(:,1);
exp3_y2 = y1y2.Data(:,2);

MPC_UC_Exp_arx_u1 = (exp1_u1 + exp2_u1 + exp3_u1)/3;
MPC_UC_Exp_arx_u2 = (exp1_u2 + exp2_u2 + exp3_u2)/3;
MPC_UC_Exp_arx_mv1 = (exp1_mv1 + exp2_mv1 + exp3_mv1)/3;
MPC_UC_Exp_arx_mv2 = (exp1_mv2 + exp2_mv2 + exp3_mv2)/3;
MPC_UC_Exp_arx_y1 = (exp1_y1 + exp2_y1 + exp3_y1)/3;
MPC_UC_Exp_arx_y2 = (exp1_y2 + exp2_y2 + exp3_y2)/3;


%% MPC_UC_Exp_armax

load('MPC_UC_Exp_armax_01.mat')
exp1_u1 = u1.Data(:,1);
exp1_u2 = u2.Data(:,1);
exp1_mv1 = mv1mv2.Data(:,1);
exp1_mv2 = mv1mv2.Data(:,2);
exp1_y1 = y1y2.Data(:,1);
exp1_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_armax_02.mat')
exp2_u1 = u1.Data(:,1);
exp2_u2 = u2.Data(:,1);
exp2_mv1 = mv1mv2.Data(:,1);
exp2_mv2 = mv1mv2.Data(:,2);
exp2_y1 = y1y2.Data(:,1);
exp2_y2 = y1y2.Data(:,2);

load('MPC_UC_Exp_armax_03.mat')
exp3_u1 = u1.Data(:,1);
exp3_u2 = u2.Data(:,1);
exp3_mv1 = mv1mv2.Data(:,1);
exp3_mv2 = mv1mv2.Data(:,2);
exp3_y1 = y1y2.Data(:,1);
exp3_y2 = y1y2.Data(:,2);

MPC_UC_Exp_armax_u1 = (exp1_u1 + exp2_u1 + exp3_u1)/3;
MPC_UC_Exp_armax_u2 = (exp1_u2 + exp2_u2 + exp3_u2)/3;
MPC_UC_Exp_armax_mv1 = (exp1_mv1 + exp2_mv1 + exp3_mv1)/3;
MPC_UC_Exp_armax_mv2 = (exp1_mv2 + exp2_mv2 + exp3_mv2)/3;
MPC_UC_Exp_armax_y1 = (exp1_y1 + exp2_y1 + exp3_y1)/3;
MPC_UC_Exp_armax_y2 = (exp1_y2 + exp2_y2 + exp3_y2)/3;