clear all; close all; clc;

% Definir funçao a ser analisada
F = @(x) x^2-e^(-x);

% Definir intervalos usando PLOT e observando o grafico
a=0;
b=1;

% Quantidade maxima de iterações permitidas
imax=50;

% Tolerancia para o resultado final
tol=1e-4;

% Avaliar a função nos limites de intervalo
Fa=F(a);
Fb=F(b);

if Fa*Fb>0
  disp('Erro: Não ha raiz no intervalo')
  else
  disp('iter        a            b             (xNS)             F(xNS)             Tol')
  
for i=1:imax
  
  xNS=(a*Fb-b*Fa)/(Fb-Fa); %Calcula o ponto onde a reta cruza o eixo x
  
  tol_i=(b-a)/2; %Avalia função no ponto medio
  F_xNS=F(xNS);
  fprintf('%3i    %11.6f   %11.6f   %11.6f      %11.6f       %11.6f', i, a, b, xNS, F_xNS, tol_i)
  fprintf('\n')
  
  % Estabelecer criterio de parada com base na tolerancia estipulada
  if tol_i<tol
    break
   endif
    
% if i == imax
%   fprintf('Solução não encontrada com %i iterações', imax)
%   break
% endfi

  if F(a)*F_xNS<0
    b=xNS;
  else
    a=xNS; 
    endif
    
endfor
endif  