function Ainv = inversaGaussJordan(A)
  
  
  [R, C] = size(A)
  
  b=eye(R);
  ab = [A,b];
  
  CM=2*C;
  
  for j=1 : R
    ab(j,:)=ab(j,:)/ab(j,j);
    for i=1 : R
      if i~=j
        ab(i,j:CM) = ab(i,j:CM)-ab(i,j)*ab(j,j:CM);
      endif
    endfor
  endfor
  
  Ainv = ab(:,R+1:CM);
  
endfunction
