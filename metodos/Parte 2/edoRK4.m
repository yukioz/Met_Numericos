function [x,y] = edoRK4(EDO,a,b,h,yINI)
  
  x(1) = a;
  y(1) = yINI;
  n = (b-a)/h;
  
  for i=1:n
    v(i+1) = x(i) + h;
    K1 = feval(EDO, x(i), y(i));
    xhalf = x(i) + h/2;
    yK1 = y(i) + K1*h/2;
    
    K2 = feval((EDO, xhalf, yK1);
    yK2 = y(i) + K2*h/2;
    
    K3 = feval(EDO, xhalf, yK2);
    yK3 = y(i) + K3*h;
    
    K4 = feval(EDO, x(i+1), yK3);
    
    y(i+1) = y(i) + (K1 + 2*K2 + 2*K3 + K4) * h/6;
  endfor

endfunction