## Nome: Victor Yukio Cavalcanti Miki
## Matricula: 180068229
## Prova 2 Questão 2
## data: 28/04/2022

clear all;
close all;
clc;

a=0;
b=4;
N=3;

# a = 40;
# b = 93;

f = @(x) (3*x.^3 - 3*x + 1);

# f = @(x) 97000 * x / (5 * x.^2 + 570000);

I = Simpson38(f, a, b, N);
