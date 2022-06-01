%Programa Atividade 2 de MN
%Nome: Victor yukio Cavalcanti Miki 
%Matricula: 180068229

## limpar variaveis
clc;
clear all;
close all;

## Plotar função:

x = linspace(-5, 5, 50);
F = x .^3 + 3.8*x .^2 - 8.6*x - 24.4;
Z = 0*x;

hold on

## # Segundo metodo
## fh = @(y) y^3 + 3.8*y^2 - 8.6*y - 24.4;
## fplot (fh, [-5, 5]);

plot(x, F);
plot(x, Z);

hold off

## Metodo de Newton

## anonymous function (corrigir warnning)
Fun = @(x) x .^3 + 3.8*x .^2 - 8.6*x - 24.4;
D_Fun = @(x) 3*x .^2 + 3.8*2*x - 8.6;

x0=-5; ## ponto de partida para achar a primeira raiz
Err=1e-5; ## Erro de aproximação
imax=50; ## numero maximo de iterações

## Iterações
for i=1: imax
  
  ## Sequencia recursiva:
  xi=x0-feval(Fun,x0)/feval(D_Fun,x0);
  
  ## Verificar Err
  if abs((xi-x0)/x0)<Err
    xz=xi;
##    fprintf('passou\n')
    break
  endif

  x0=xi;
endfor

fprintf('Solução xz=%6f', xz)
fprintf(', obtida em %i interações\n', i)