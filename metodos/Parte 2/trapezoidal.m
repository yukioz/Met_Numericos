function I = trapezoidal(integrand, a, b, N)

  h = (b-a)/N;
  func = inline(integrand);
  x=a:h:b;
  for i=1:N+1
    F(i) = func(x(i));
  endfor

  I = h*(F(1)+F(N+1))/2+h*sum(F(2:N));
  
endfunction