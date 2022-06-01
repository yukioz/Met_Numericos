%Programa Prova 1 execicio 2 de MN
%Nome Victor yukio Cavalcanti Miki 
%Matricula: 180068229
%Prof: Poliana
%Data: 11/03/2022

## limpar variaveis
clc;
clear all;
close all;

## Plotar função:

x = linspace(0, 5, 50);
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
  
  xz = xi;
  
  a=b;
  b=xi;
endfor

fprintf('\n\nSolução pelo metodo secante = %6f\n', xz)
fprintf(', obtida em %i interações\n\n', i)

## Metodo da posicão falsa

## anonymous function (corrigir warnning)
Fun = @(x) x^4 - 6.4*x^3 + 6.45*x^2 + 20.538*x - 31.725;

## Erro de aproximação e 4 pois e o intervalo inicial escolhido da maior raiz da letra a).
tol=1e-4;
imax=50; ## numero maximo de iterações

## intervalo inicial e final escolhido pois,
## estão APOS a maior raiz, assim garantimos encontrar a maior raiz.
a=0;
b=5;

Fa = Fun(a);
Fb = Fun(b);

if Fa*Fb>0
  disp('Erro: Não ha raiz no intervalo')
  else
  disp('iter          a              b              (xNS)             F(xNS)              Tol')
  
for i=1:imax
  
  xNS=(a*Fb-b*Fa)/(Fb-Fa); %Calcula o ponto onde a reta cruza o eixo x
  
  tol_i=(b-a)/2; %Avalia função no ponto medio
  F_xNS=Fun(xNS);
  fprintf('%3i    %11.6f    %11.6f      %11.6f        %11.6f       %11.6f', i, a, b, xNS, F_xNS, tol_i)
  fprintf('\n')
  
  % Estabelecer criterio de parada com base na tolerancia estipulada
  if tol_i<tol
    break
   endif
    
% if i == imax
%   fprintf('Solução não encontrada com %i iterações', imax)
%   break
% endfi

  if Fun(a)*F_xNS<0
    b=xNS;
  else
    a=xNS; 
    endif
    
endfor

fprintf('\n\nSolução pelo metodo posição falsa = %6f\n', xNS)
fprintf(', obtida em %i interações\n', i)

endif  