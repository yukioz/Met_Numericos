%Programa Atividade 2 de MN
%Nome: Victor yukio Cavalcanti Miki 
%Matricula: 180068229

## limpar variaveis
clc;
clear all;
close all;

## Plotar função:

x = linspace(0, 5, 100);
F = x .^4 - 6.4*x .^3 + 6.45*x .^2 + 20.538*x - 31.725;
## Função para criar uma linha no x=0
Z = 0*x;

hold on

## # Segundo metodo
## fh = @(x) x^4 - 6.4*x^3 + 6.45*x^2 + 20.538*x - 31.725;
## fplot (fh, [0, 5]);

plot(x, F);
plot(x, Z);

hold off

## >>>>> RESPOSTA:
## Observando o grafica vemos que a MAIOR raiz fica
## RESPOSTA DA QUESTÂO: no intervalo de [4,5].

## Metodo da secante

## anonymous function (corrigir warnning)
Fun = @(x) x^4 - 6.4*x^3 + 6.45*x^2 + 20.538*x - 31.725;

## Erro de aproximação e 4 pois e o intervalo inicial escolhido da maior raiz da letra a).
Err=1e-4;
imax=50; ## numero maximo de iterações

## intervalo inicial e final escolhido pois,
## estão APOS a maior raiz, assim garantimos encontrar a maior raiz.
a=0;
b=5;

## Iterações
fprintf('iter    |     Fb      |     Fa     |      xi      |      a      |      b       |      tol  \n');

for i=1: imax
  
  ## Sequencia recursiva:
  Fb=feval(Fun, b);
  Fa=feval(Fun, a);
  
  xi = b-Fb*(a-b)/(Fa-Fb);
  
  tol = abs((xi-b)/b);
  
  fprintf(' %3i    | %10.6f  | %10.6f |  %10.6f  | %10.6f  |  %10.6f  |  %10.6f \n', i, Fb, Fa, xi, a, b, tol);
  
  ## Verificar erro
  if abs((xi-b)/b)<Err
    xz=xi;
    break
  endif
  
  xz = xi
  
  a=b;
  b=xi;
endfor

fprintf('Solução xz=%6f', xz)
fprintf(', obtida em %i interações\n', i)