function [L,U] = LUCrout(A)
## Função que decompõe a matriz [A] de coeficientes em duas matrizes L e U.
## Entrada:
## [A] = Matriz ed coeficientes
## Saidas:
## L = Lower triangular matriz
## U = Upper triangular matriz
  
  
[R,C] = size(A);
for i=1:R
  L(i,1)=A(i,1); # Alocar a coluna L1.
  U(i,i) = 1; # Colocar 1's na diagonal principal de U.
  
endfor

for j=2:R
  U(1,j)=A(1,j)/L(1,1);
endfor

for i=2:R
  for j=2:i
    L(i,j)=A(i,j)-L(i,1:j-1)*U(1:j-1,j);
  endfor
  
  for j=i+1:R
    U(i,j)=(A(i,j)-L(i,1:i-1)*U(1:i-1,j))/L(i,i);
  endfor
endfor

endfunction
