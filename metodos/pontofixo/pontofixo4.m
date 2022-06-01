%Programa Atividade 2 de MN
%Nome: Victor yukio Cavalcanti Miki 
%Matricula: 180068229

## limpar variaveis
clc;
clear all;
close all;

## Plotar função:
e = exp(1);

x = linspace(1, 2, 50)
F = @(x) (x*e^(0.5*x)) + (1.2*x)-5;
Z = 0*x;

hold on

## # Segundo metodo
## fh = @(y) y^3 + 3.8*y^2 - 8.6*y - 24.4;
## fplot (fh, [-5, 5]);

fplot(F, [1, 2]);
plot(x, Z);

hold off

## Metodo de Newton

## anonymous function (corrigir warnning)
gx = @(x) 5/(e^(0.5*x) + 1.2);
Dgx = @(x) (-5*e^(0.5*x))/(2*(e^(0.5*x)+1.2)^2);

x0=1; ## ponto de partida para achar a primeira raiz
Err=1e-5; ## Erro de aproximação
imax=50; ## numero maximo de iterações

## Iterações
for i=1: imax
  
  ## Sequencia recursiva:
  xi=feval(gx,x0)
  
  ## Verificar Err
  if abs(xi-x0)<Err
    xz=xi;
##    fprintf('passou\n')
    break
  endif

  x0=xi;
endfor

fprintf('Solução xz=%6f', xz)
fprintf(', obtida em %i interações\n', i)