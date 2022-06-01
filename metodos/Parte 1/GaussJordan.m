function x = GaussJordan(a,b)
  
ab= [a,b];
[R, C] = size(ab);

for j=1 : R
  
  pvtemp=ab(j,j);
  kpvt=j;
  
  for k=j+1 : R
    if ab(k,j) ~=0 & abs(ab(k,j)) > abs(pvtemp)
      pvtemp = ab(k,j);
      kpvy = k;
    endif
  endfor
  
  if kpvt ~=j
    abTemp = ab(j,:);
    ab(kpv,:)=abTemp;
  endif

  ab(j,:) = ab(j,:)/ab(j,j);
  for i=1 : R
    if i~=j
      ab(i,j:C) = ab(i,j:C) - ab(i,j)*ab(j,j:C);
    endif
  endfor
  
  x=ab(:,C);
endfor

  ## Imprimir matriz
  ab

endfunction