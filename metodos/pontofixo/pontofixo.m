function x = pontofixo(fin,fit,erro,x0)
  limite=1000
  
  for k=1:limite
    xk=fit(x0);
    if abs(xk-x0)<erro
      x = xk;
      break
    else
      x0=xk;
    endif
  endfor
  fprintf('Numero de iterações: %d\n',k)
  
endfunction