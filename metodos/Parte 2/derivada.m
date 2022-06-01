function dx = derivada(x,y)
  
## Calcula derivada de uma função dada por um conjunto de pontos. usando a formula de diferenças finitas (progressiva e regressiva) no primeiro  e ultimo ponto respectivamente.
## o restante usa diferença central.

% Entradas:
% x vetor com coordenadas x dos pontos
% y vetor com coordenadas y dos pontos

% saida:
% dx vetor com valor da derivada em cada ponto.

  n=length(x);
  dx(1) = (y(2)-y(1))/(x(2)-x(1));

  for i=2:n-1

    dx(i) = (y(i+1)-y(i-1))/(x(i+1)-x(i-1));
  endfor

  dx(n) = (y(n)-y(n-1))/(x(n)-x(n-1));

endfunction
  