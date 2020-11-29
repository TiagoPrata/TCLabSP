%% MPC_UC_Exp_tf

load('MPC_UC_Exp_tf_01.mat')
u1_tmp = getsamples(u1, find(~mod(u1.Time, 0.25)));
u2_tmp = getsamples(u2, find(~mod(u2.Time, 0.25)));
mv1mv2_tmp = getsamples(mv1mv2, find(~mod(mv1mv2.Time, 0.25)));
y1y2_tmp = getsamples(y1y2, find(~mod(y1y2.Time, 0.25)));

exp1_u1 = u1_tmp.Data(:,1);
exp1_u2 = u2_tmp.Data(:,1);
exp1_mv1 = mv1mv2_tmp.Data(:,1);
exp1_mv2 = mv1mv2_tmp.Data(:,2);
exp1_y1 = y1y2_tmp.Data(:,1);
exp1_y2 = y1y2_tmp.Data(:,2);

load('MPC_UC_Exp_tf_02.mat')
u1_tmp = getsamples(u1, find(~mod(u1.Time, 0.25)));
u2_tmp = getsamples(u2, find(~mod(u2.Time, 0.25)));
mv1mv2_tmp = getsamples(mv1mv2, find(~mod(mv1mv2.Time, 0.25)));
y1y2_tmp = getsamples(y1y2, find(~mod(y1y2.Time, 0.25)));

exp2_u1 = u1_tmp.Data(:,1);
exp2_u2 = u2_tmp.Data(:,1);
exp2_mv1 = mv1mv2_tmp.Data(:,1);
exp2_mv2 = mv1mv2_tmp.Data(:,2);
exp2_y1 = y1y2_tmp.Data(:,1);
exp2_y2 = y1y2_tmp.Data(:,2);

load('MPC_UC_Exp_tf_03.mat')
u1_tmp = getsamples(u1, find(~mod(u1.Time, 0.25)));
u2_tmp = getsamples(u2, find(~mod(u2.Time, 0.25)));
mv1mv2_tmp = getsamples(mv1mv2, find(~mod(mv1mv2.Time, 0.25)));
y1y2_tmp = getsamples(y1y2, find(~mod(y1y2.Time, 0.25)));

exp3_u1 = u1_tmp.Data(:,1);
exp3_u2 = u2_tmp.Data(:,1);
exp3_mv1 = mv1mv2_tmp.Data(:,1);
exp3_mv2 = mv1mv2_tmp.Data(:,2);
exp3_y1 = y1y2_tmp.Data(:,1);
exp3_y2 = y1y2_tmp.Data(:,2);

time = y1y2_tmp.time;
mv_time = mv1mv2_tmp.time;

MPC_UC_Exp_tf_u1 = (exp1_u1 + exp2_u1 + exp3_u1)/3;
MPC_UC_Exp_tf_u2 = (exp1_u2 + exp2_u2 + exp3_u2)/3;
MPC_UC_Exp_tf_mv1 = (exp1_mv1 + exp2_mv1 + exp3_mv1)/3;
MPC_UC_Exp_tf_mv2 = (exp1_mv2 + exp2_mv2 + exp3_mv2)/3;
MPC_UC_Exp_tf_y1 = (exp1_y1 + exp2_y1 + exp3_y1)/3;
MPC_UC_Exp_tf_y2 = (exp1_y2 + exp2_y2 + exp3_y2)/3;


