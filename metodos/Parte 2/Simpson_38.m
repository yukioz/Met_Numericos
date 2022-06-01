function I = Simpson_38(integrand, a, b, N)

  h = (b-a)/2;
  func = inline(integrand);
  x=a:h:b;
  
  for i=1:N+1
    F(i) = func(x(i));
    
  endfor
  
  # sum(2:2:N)

  I = (3h/8) * (F(a) + (3 * (sum(F(2:3:N-1)) + sum(F(3:3:N-1)))) + (2 * sum(F(4:3:N-2))) + F(b));
  
endfunction