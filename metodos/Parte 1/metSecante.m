## limpar variaveis
clc;
clear all;
close all;

## Metodo da secante

## anonymous function (corrigir warnning)
Fun = @(x) 8-4.5*(x-sin(x));

Err=1e-3; ## Erro de aproximação
imax=50; ## numero maximo de iterações
a=2;
b=3;

## Iterações
for i=1: imax
  
  ## Sequencia recursiva:
  Fb=feval(Fun, b);
  Fa=feval(Fun, a);
  
  xi = b-Fb*(a-b)/(Fa-Fb);
  
  ## Verificar erro
  if abs((xi-b)/b)<Err
    xz=xi;
    break
  endif

  a=b;
  b=xi;
endfor

fprintf('Solução xz=%6f', xz)
fprintf(', obtida em %i interações\n', i)