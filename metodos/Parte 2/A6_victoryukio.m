%Programa Atividade 1 de MN
%Nome Victor yukio Cavalcanti Miki 
%Matricula: 180068229

clear all;
close all;
clc;

fOFx = 0;
gOFx = 0;
hOFx = '(1/6) * 30000 * (Lx-(x^3/4)) * (1/1.2*10^7)';
a = 0;
b = 4;
n = 100;
Ya = 0;
Yb = 0;
WL = 0;
WH = -0.005;

PVC_tiro_bisec(fOFx, gOFx, hOFx, a, b, n, Ya, Yb, WL, WH)