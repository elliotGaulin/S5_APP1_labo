%% Exercice 1
clc 
close all
clear all

dt = 1e-1;
a_max = 5.886;
v_max = 111.11;

t = 0:dt:109-dt;
t1 = 0:dt:18.9-dt;
t2 = 18.9:dt:109-18.9-dt;
t3 = 109-18.9:dt:109-dt;

a1 = a_max + zeros(length(t1));
a2 = 0*t2;
a3 = -a_max + zeros(length(t3));
subplot(3,1,1)
hold on
plot(t1, a1, 'r')
plot(t2, a2, 'g')
plot(t3, a3, 'b')
xline(t2(1), '--w')
xline(t3(1), '--w')

% a3 = -a_max*d(1,floor(18.88/dt));

v1 = a_max*t1;
v2 = v_max + zeros(length(t2));
v3 = -a_max*t1 + v_max;
% v(1, length(t) - floor(18.88/dt):length(t)) = -a_max*t(1, length(t) - floor(18.88/dt):length(t));

subplot(3,1,2)
hold on
plot(t1, v1, 'r')
plot(t2, v2, 'g')
plot(t3, v3, 'b')
xline(t2(1), '--w')
xline(t3(1), '--w')

d1 = a_max * (t1.^2)/2;
d2 = v_max * (t2 - t1(length(t1))) + d1(length(d1));
d3 = -a_max * (t1.^2)/2 + v_max*t1 + d2(length(d2));

subplot(3,1,3)
hold on
plot(t1, d1, 'r')
plot(t2, d2, 'g')
plot(t3, d3, 'b')
xline(t2(1), '--w')
xline(t3(1), '--w')

