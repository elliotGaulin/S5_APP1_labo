clc
clear all
close all

min_x = -pi/3;
max_x = pi/3;
nb_points = 1024;
dt = (max_x - min_x)/nb_points;

phi = min_x:dt:max_x;

l_1 = 0.25;
g=9.81;
m_ab = 1;
m_a = 0.1;

C_b = g*l_1*(m_ab/2 + m_a)*cos(phi);

figure(1)
plot(phi, C_b)
title('Couple de la barre AB en fonction de phi')
xlabel('phi (rad)')
ylabel('C_b (N.m)')