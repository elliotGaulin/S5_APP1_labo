clc
clear all
close all

min_x = 0;
max_x = pi/3;
nb_points = 1024;
dt = (max_x - min_x)/nb_points;

theta = min_x:dt:max_x;

l = 0.25;
w_theta = 25;
alpha_theta = 5;

% Position
posx_a = 2*l*cos(theta);

subplot(2,2,1)
plot(theta, posx_a)
title('Position de A en fonction de theta')

% Vitesse
Vx_a = -2*l*w_theta*sin(theta);

subplot(2,2,2)
plot(theta, Vx_a)
title('Vitesse de A en fonction de theta')

% Accélération
Ax_a = -2*l*(alpha_theta*sin(theta) + w_theta^2*cos(theta));

subplot(2,2,3)
plot(theta, Ax_a)
title('Accélération de A en fonction de theta')