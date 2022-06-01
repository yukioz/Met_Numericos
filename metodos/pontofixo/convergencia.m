function convergencia(dfit,a,b)
  for p=a:0.1;b
    k=abs(dift(p));
    if k>=1
      disp('Essa função de iteração não converge no intervalo [a,b]');
      break
    endif
  endfor
  
  if k<1
    disp('Essa função de iteração converge no intervalo [a,b]');
  endif
  
endfunction
