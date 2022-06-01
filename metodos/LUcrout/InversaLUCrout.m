function invA = InversaLUCrout(A)
  
## Esta função calcula a inversa de uma matriz [A]
## # Variaveis de entrada:
## [A] = Matriz a ser invertida
## # Variaveis de saida:
## Matriz inversa de [A]

[nR, nC]=size(A);
I=eye(nR);
[L,U]=LUCrout(A);

for j = 1:nC
  
  y=ProgresSub(L,I(:,j));
  invA(:,j)=RegresSub(U,y);
  
endfor

endfunction