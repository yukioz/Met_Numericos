function [x,y] = edoEulerMod(EDO,a,b,h,yINI)
  
## Resolve EDO de primeira ordem

## Entradas:
% EDO - String de uma funcao dy/dx
% a Primeiro valor de "x".
% b - ultimo valor de "x".
% h - passo de interação.
% yINI - solução y no primeiro ponto.

## saida:

% x - coordenada da solução x.
% y - coordenada solução y.  

x(1) = a;
y(1) = yINI;
N=(b-a)/h; %n passos

for i=1:N
  x(i+1) = x(i)+h;
  IncliEu = feval(EDO,x(i), y(i));
  YEu = y(i) + IncliEu * h;
  InclFin = feval(EDO,x(i+1), YEu);
  y(i+1) = y(i) + (IncliEu+InclFin) * n/2;
endfor

endfunction