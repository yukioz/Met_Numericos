function Yint = LagrandeINT(x,y,Xint)
## Ajuste de polinomio de LagrandeINT
## Entrada:
## x = vetor coordenadas de x.
## y = vetor coordenadas de y.
##pont a ser interpolado
## Saida:
## Yint = O valor interpolado

n = length(x);

for i=1:n
  L(i) = 1
  for j=1:n
    if j~= i
      L(i) = L(i)*(Xint-x(j))/(x(i) - x(j));
    endif
  endfor
endfor

Yint = sum(y.*L);

endfunction