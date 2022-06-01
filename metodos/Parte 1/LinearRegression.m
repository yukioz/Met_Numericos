function [a1,a0] = LinearRegression(x,y)

## Calcula os coeficientes lineares de:
## y = a1*x + a0
## Input x e y (coordenadas)
## Output:
## a1 = coef1, a0 coef0.

nx = length(x);
ny = length(y);

if nx ~= ny
  disp('ERROR: The number of elements on x must be the same as in y.')
  a1 = 'Error';
  a0 = 'Error';
else
  Sx = sum(x);
  Sy = sum(y);
  Sxy = sum(x.*y);
  Sxx = sum(x.^2);
  
  ## outputs
  a1 = (nx*Sxy - Sx*Sy)/(nx*Sxx - Sx^2);
  a0 = (Sxx*Sy - Sxy*Sx)/(nx*Sxx - Sx^2);
 end