%Programa Atividade 1 de MN
%Nome Victor yukio Cavalcanti Miki 
%Matricula: 180068229

clear all;
clc;
close all;

%Determinação dos limites vetoriais
xx=linspace(-39,39,78); %vetor xx [1,2,3,4,5,...]
yy=linspace(-39,39,78); %vetor yy=[1,2,3,4,5,...]

[XX,YY] = meshgrid(xx,yy); %matriz 

%Função do Paraboloide hiperbolico
a = 2;
b = 3;
cela = (YY.^2/b^2) - (XX.^2/a^2);


%Gerar figura

figure(1)
surf(XX,YY,cela)
title('gráfico da parábola')
