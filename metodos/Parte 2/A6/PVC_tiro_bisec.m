function [x, Yi] = PVC_tiro_bisec(fOFx, gOFx, hOFx, a, b, n, Ya, Yb, WL, WH)
  
### Solves ODE of form:
%%  d2y/dx2 + f(x) (dy/dx) + g(x)y = h(x)

% dy/dx = z
# >>>>
# dy/dx = z and,
# dz/dx = h(x) - g(x)y - f(x)z

## Inputs:

% fOFx = f(x)
% gOFX = g(x)
% hOFx = h(x)
% a = first value of x
% b = last value of x
% n = number of subintervals
% Ya = cond at x=a
% Yb = cond at x=b
% WL slope x=a
% WH slope x=a 
  
  
  h = (b-a)/n;
  [x YL zL] = Sys2ODEsRK4('ODE_A6', 'ODE2_A6', a,b,h,Ya,WL);
  [x YH zH] = Sys2ODEsRK4('ODE_A6', 'ODE2_A6', a,b,h,Ya,WH);
  iLast = length(x);
  
  if(Yb < YL(iLast) & Yb < YH(iLast)) | (Yb > YH(iLast) & Yb > YL(iLast))
    display('Error: The boundary condition at x=b is not between the two guessed solutions')
  else
    imax=15;
    tol=0.001;
    
  for i=1:imax+1
    Wi = (WH + WL)/2;
    [x Yi zi] = Sys2ODEsRK4(@ODE1, @ODE2, a,b,h,Ya,Wi);
    E = Yi(iLast) - Yb;
    
    if abs(E) < tol
      break
    end
    
    if YL(iLast)*Yi(iLast) > 0
      WL = Wi;
      YL(iLast) = Yi(iLast);
    else
      WH = Wi;
      YH(iLast) = Yi(iLast);
    end
  end
  
  if i> imax
    fprintf('Solution was not found in %i iterations.\n', imax)
  end
end

function dydx = ODE1(x,y,z)
  dydx=z;
end

function dzdx=ODE2(x,y,z)
  dzdx=hOFx(x) - gOFx(x) * y - fOFx(x) * z;
end

end
  
  
  
