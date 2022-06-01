function y = RegresSub(A,b)
## A função resolve um sistema de eq, lineares Ax = b,
## Onde A e uma matriz superior inferior, usando subs progressiva.

## Variaveis de entrada:
## [A] = Matriz de coef.
## [b] = Vetor coluna com solução

## Variaveis de saida:
## y - Vetor coluna com a solução

n=length(b);
y(n,1)=b(n)/A(n,n);

for i=n-1:-1:1
  y(i,1)=(b(i)-A(i,i+1:n)*y(i+1:n,1))./A(i,i);
endfor

endfunction