function x= GaussPivot(A,b);
## Resolve Sist de equações lineares [A][x]=[b] por Gauss  

## Variaveis de entrada:
# [A] = matriz de coeficientes
# [b] = Vetor coluna contendo as constantes do lado direito do sistema

## Variaveis de saida:
# [x] = Vetor coluna com a solução

Ab=[A,b]; # Concatenar Matriz A com vetor b.
[R,C]=size(Ab); # Extrair o nº de linhas E e colunas C da matriz Ab.

for j=1:R-1

  ## Inicio da seção de pivotação
  if Ab(j,j)==0 # Verifica se o elemento pivo e nulo
      for k=j+1:R
        if Ab(k,j) ~=0
          AbTemp=Ab(j,:);
          Ab(j,:)=Ab(k,:);
          Ab(k,:)=AbTemp;
          break
        endif
      endfor
  endif

## Triangulaçãosuperior do sistema-Gauss
## duplicado? ##for j=1:R-1
  for i=j+1:R
    Ab(i,j:C)=Ab(i,j:C)-Ab(i,j)/Ab(j,j)*Ab(j,j:C) # Calculo dos coeficientes
  endfor
endfor

## Solução direta so sistema triangular superior
x=zeros(R,1);
x(R)=Ab(R,C)/Ab(R,R);

for i=R-1:-1:1
  x(i)=(Ab(i,C)-Ab(i,i+1:R)*x(i+1:R))/Ab(i,i);
endfor

endfunction