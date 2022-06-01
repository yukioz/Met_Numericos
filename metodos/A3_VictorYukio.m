%Programa Atividade 1 de MN
%Nome Victor yukio Cavalcanti Miki 
%Matricula: 180068229

clear all;
clc;
close all;

%Determinação da matriz 
A = [5 -1 0; -1 5 -1; 0 -1 5];

x = [9; 4; 6];

[nR, nC]=size(A);
I=eye(nR);

## Determinar L e U com: LUCrout inicio
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

## Fim LUCrout

for j = 1:nC
  
  
  ## y=ProgresSub(L,I(:,j));
  temB = I(:,j);
  n=length(temB);
  y(1,1)=temB(1)/L(1,1);

  for i=2:n
    y(i,1)=(temB(i)-L(i,1:i-1)*y(1:i-1,1))./L(i,i);
  endfor
  ## Termina ProgresSub
  
  ###############
  
  ## invA(:,j)=RegresSub(U,y);
  n=length(y);
  invA(n,1)=y(n)/U(n,n);

  for i=n-1:-1:1
    invA(i,1)=(y(i)-U(i,i+1:n)*invA(i+1:n,1))./U(i,i);
  endfor
  
 ## Termina RegresSub
  inversaA(:,j)=invA;
  
endfor

inversaA;

printf('Matriz ');
L
printf('Matriz ');
U
printf('Vetor ');
## Calcular vetor
xyz = inversaA * x
