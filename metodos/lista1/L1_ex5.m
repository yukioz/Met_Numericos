clear all;
close all;
clc;

a = 0.5;
## create vector from -3 to 3 with 100 elements
v = linspace(-3,3,100);

F=((8 *a ^2) ./(v .^2 + 4*a^2));

grid on;

hold on
plot(v, F)
title("function F");
xlabel("v value");

G = v .^3 + 2*a*v .^2 - (a+5)*v - 1;
plot(v, G)

hold off