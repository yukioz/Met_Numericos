clear all;
close all;
clc;
[t, y, u] = Sys2ODEsRK4('First_ODE', 'Second_ODE', 0, 3, 0.1, 0, 0)
subplot(3,1,1)
plot(t,y)
xlabel('Time (s)')
ylabel('Position (m)')
subplot(3,1,2)
plot(t,u)
xlabel('Time(s)')
ylabel('Velocity (m)')
Accel = First_ODE(t,y,u)
subplot(3,1,3)
plot(t,Accel)
xlabel('Time(s)')
ylabel('Acceleration (m/s^2)')
