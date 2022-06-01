clear all;
close all;
clc;

fOFx = 0;
gOFx = 0;
hOFx = '(1/6) * 30000 * (Lx - (x^3/4)) / (1.2*10^7)';
n= 100;
WL = 0;
WH = -0.005;

PVC_tiro_bisec(fOFx, gOFx, hOFx, a, b, n, Ya, Yb, WL, WH)