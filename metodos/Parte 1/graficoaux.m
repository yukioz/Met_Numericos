%Programa Atividade 1 de MN
%Nome Victor yukio Cavalcanti Miki 
%Matricula: 180068229

clear all;
clc;
close all;

x = linspace(-5, 5, 1000);

F = x .^3 + 3.8*x .^2 - 8.6*x - 24.4;
Z = 0*x;

hold on

## # Segundo metodo
## fh = @(y) y^3 + 3.8*y^2 - 8.6*y - 24.4;
## fplot (fh, [-5, 5]);

plot(x, F);
plot(x, Z);

hold off
