clc 
clear all
close all

dt = pi/1024;
teta = 0:dt:2*pi;

OB = 100;
AB = 450;
w_ob = 6.283;
beta = pi/4;

sin_beta = OB/AB *  (1 + cos(teta));
cos_beta = sqrt(1 - sin_beta.^2);

w_ab = -(OB * w_ob * sin(teta)) ./ (AB * cos_beta);
v_ax = -(OB * w_ob * cos(teta)) + (AB * w_ab .* sin_beta);
alpha_ab = (-OB * w_ob^2*cos(teta) + AB * w_ab.^2 .* sin_beta) ./ (AB*cos_beta);
A_ax = OB * w_ob^2 * sin(teta) + AB * w_ab.^2 .* cos_beta + AB * alpha_ab .* sin_beta;


subplot(2,2,1)
plot(teta, w_ab)
title('Vitesse angulaire de la barre AB')

subplot(2,2,2)
plot(teta, v_ax)
title('Vitesse linéaire de la lame')

subplot(2,2,3)
plot(teta, alpha_ab)
title('Accélération angulaire de la barre AB')

subplot(2,2,4)
plot(teta, A_ax)
title('Accélération linéaire de la lame')