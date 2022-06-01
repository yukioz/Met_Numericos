## limpar variaveis
clc;
clear all;
close all;

## Metodo de Newton

## anonymous function (corrigir warnning)
Fun = @(x) 8-4.5*(x-sin(x));
D_Fun = @(x) -4.5*(1-cos(x));

x0=-7; ## ponto de partida
Err=1e-5; ## Erro de aproximação
imax=50; ## numero maximo de iterações

## Iterações
for i=1: imax
  
  ## Sequencia recursiva:
  xi=x0-feval(Fun,x0)/feval(D_Fun,x0);
  
  ## Verificar erro
  if abs((xi-x0)/x0)<Err
    xz=xi;
##    fprintf('passou\n')
    break
  endif

  x0=xi;
endfor

fprintf('Solução xz=%6f', xz)
fprintf(', obtida em %i interações\n', i)