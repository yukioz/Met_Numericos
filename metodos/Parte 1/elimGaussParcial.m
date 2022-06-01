function [A,b] = elimGaussParcial(A,b)
  
  n = size(A);
  
  for k=1 : n-1
    max=abs(A(k,k));
    l=k;
    for i=k+1 : n
      if abs(A(i,k)) > max
        max = abs(A(i,k));
        l=i;
      endif
    endfor
    
    if 1 ~= k
      for j=k : n
        aux = A(l,j);
        A(l,j) = A(k,j);
        A(k,j) = aux;
      endfor
      aux = b(l);
      b(l) = b(k);
      b(k) = aux;
    endif
    
    for i=k+1 : n
      mult = A(i,k)/A(k,k)
      A(i,k) = 0;
      for j=k+1 : n
        A(i,j) = A(i,j) - mult *A(k,j);
      endfor
      b(i) = b(i) - mult *b(k);
    endfor
    
  endfor
  
  A
  b
  
endfunction