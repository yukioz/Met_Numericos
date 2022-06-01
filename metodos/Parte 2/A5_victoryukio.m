%Programa Atividade 1 de MN
%Nome Victor yukio Cavalcanti Miki 
%Matricula: 180068229

integrand = '211.5 - 20.97 * cosh(x/30.38)';
a = -91.21;
b = 91.21;
N = 8;

Resp = Simpson(integrand, a, b, N)