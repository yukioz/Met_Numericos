function I = Simpson(integrand, a, b, N)

  h = (b-a)/N;
  func = inline(integrand);
  x=a:h:b;
  
  for i=1:N+1
    F(i) = func(x(i));
    
  endfor
  
  # sum(2:2:N)

  I = (h/3) * (F(1) + (4 * sum(F(2:2:N))) + (2 * sum(F(1:2:N-1))) + F(N+1));
  
endfunction