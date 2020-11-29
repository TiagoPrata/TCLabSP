%% Carrega experimentos e sanitiza dados ruins

load('PIDtest_01.mat')
u1_tmp = getsamples(u1, find(~mod(u1.Time, 0.25)));
u2_tmp = getsamples(u2, find(~mod(u2.Time, 0.25)));
mv1_tmp = getsamples(mv1, find(~mod(mv1.Time, 0.25)));
mv2_tmp = getsamples(mv2, find(~mod(mv2.Time, 0.25)));
y1y2_tmp = getsamples(y1y2, find(~mod(y1y2.Time, 0.25)));

exp1_time = y1y2_tmp.Time;
exp1_u1 = u1_tmp.Data(:,1);
exp1_u2 = u2_tmp.Data(:,1);
exp1_mv1 = mv1_tmp.Data(:,1);
exp1_mv2 = mv2_tmp.Data(:,1);
exp1_y1 = y1y2_tmp.Data(:,1);
exp1_y2 = y1y2_tmp.Data(:,2);


load('PIDtest_02.mat')
u1_tmp = getsamples(u1, find(~mod(u1.Time, 0.25)));
u2_tmp = getsamples(u2, find(~mod(u2.Time, 0.25)));
mv1_tmp = getsamples(mv1, find(~mod(mv1.Time, 0.25)));
mv2_tmp = getsamples(mv2, find(~mod(mv2.Time, 0.25)));
y1y2_tmp = getsamples(y1y2, find(~mod(y1y2.Time, 0.25)));

exp2_time = y1y2_tmp.Time;
exp2_u1 = u1_tmp.Data(:,1);
exp2_u2 = u2_tmp.Data(:,1);
exp2_mv1 = mv1_tmp.Data(:,1);
exp2_mv2 = mv2_tmp.Data(:,1);
exp2_y1 = y1y2_tmp.Data(:,1);
exp2_y2 = y1y2_tmp.Data(:,2);


load('PIDtest_03.mat')
u1_tmp = getsamples(u1, find(~mod(u1.Time, 0.25)));
u2_tmp = getsamples(u2, find(~mod(u2.Time, 0.25)));
mv1_tmp = getsamples(mv1, find(~mod(mv1.Time, 0.25)));
mv2_tmp = getsamples(mv2, find(~mod(mv2.Time, 0.25)));
y1y2_tmp = getsamples(y1y2, find(~mod(y1y2.Time, 0.25)));

exp3_time = y1y2_tmp.Time;
exp3_u1 = u1_tmp.Data(:,1);
exp3_u2 = u2_tmp.Data(:,1);
exp3_mv1 = mv1_tmp.Data(:,1);
exp3_mv2 = mv2_tmp.Data(:,1);
exp3_y1 = y1y2_tmp.Data(:,1);
exp3_y2 = y1y2_tmp.Data(:,2);


load('PIDtest_04.mat')
u1_tmp = getsamples(u1, find(~mod(u1.Time, 0.25)));
u2_tmp = getsamples(u2, find(~mod(u2.Time, 0.25)));
mv1_tmp = getsamples(mv1, find(~mod(mv1.Time, 0.25)));
mv2_tmp = getsamples(mv2, find(~mod(mv2.Time, 0.25)));
y1y2_tmp = getsamples(y1y2, find(~mod(y1y2.Time, 0.25)));

exp4_time = y1y2_tmp.Time;
exp4_u1 = u1_tmp.Data(:,1);
exp4_u2 = u2_tmp.Data(:,1);
exp4_mv1 = mv1_tmp.Data(:,1);
exp4_mv2 = mv2_tmp.Data(:,1);
exp4_y1 = y1y2_tmp.Data(:,1);
exp4_y2 = y1y2_tmp.Data(:,2);


load('PIDtest_05.mat')
u1_tmp = getsamples(u1, find(~mod(u1.Time, 0.25)));
u2_tmp = getsamples(u2, find(~mod(u2.Time, 0.25)));
mv1_tmp = getsamples(mv1, find(~mod(mv1.Time, 0.25)));
mv2_tmp = getsamples(mv2, find(~mod(mv2.Time, 0.25)));
y1y2_tmp = getsamples(y1y2, find(~mod(y1y2.Time, 0.25)));

exp5_time = y1y2_tmp.Time;
exp5_u1 = u1_tmp.Data(:,1);
exp5_u2 = u2_tmp.Data(:,1);
exp5_mv1 = mv1_tmp.Data(:,1);
exp5_mv2 = mv2_tmp.Data(:,1);
exp5_y1 = y1y2_tmp.Data(:,1);
exp5_y2 = y1y2_tmp.Data(:,2);



%% Combina experimentos

y1_avg = (exp1_y1 + exp2_y1 + exp3_y1 + exp4_y1 + exp5_y1)/5;
y2_avg = (exp1_y2 + exp2_y2 + exp3_y2 + exp4_y2 + exp5_y2)/5;

m1_avg = (exp1_mv1 + exp2_mv1 + exp3_mv1 + exp4_mv1 + exp5_mv1)/5;
m2_avg = (exp1_mv2 + exp2_mv2 + exp3_mv2 + exp4_mv2 + exp5_mv2)/5;