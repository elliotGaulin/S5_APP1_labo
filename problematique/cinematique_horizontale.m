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
alpha_theta = 0;

% Position
posx_a = 2*l*cos(theta);

subplot(2,2,1)
plot(theta, posx_a)
title('Position de A en fonction de theta')
xlabel('theta (rad)')
ylabel('Position (m)')
% Vitesse
Vx_a = -2*l*w_theta*sin(theta);

subplot(2,2,2)
plot(theta, Vx_a)
title('Vitesse de A en fonction de theta')
xlabel('theta (rad)')
ylabel('Vitesse (m/s)')

% Accélération
Ax_a = -2*l*(w_theta^2*cos(theta));

subplot(2,2,3)
plot(theta, Ax_a)
title('Accélération de A en fonction de theta')
xlabel('theta (rad)')
ylabel('Accélération (m/s^2)')