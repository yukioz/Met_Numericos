function [x,y,z] = Sys2ODEsRK2(ODE1, ODE2, a, b, h, y1, z1)
  
## Resolver sistema de duas EDO's com valores iniciais
## pelo metodo de Runge-Kutta de segudna ordem.

# Entrada:
% ODE 1 = função que calcula dy/dx
% ODE 2 = função que calcula dz/dx
% a = primeiro valor de "x".
% b = ultimo valor de "x".
% h = incremento.
% y1 = valor inicial de y.
% z1 = valor inicial de z.

# Saida:
% Vetorers coordenadas x, y e z.

x(1) = a;
y(1) = y1;
z(1) = z1;
n = (b-a)/h;

for i= 1:n
  x(i+1) = x(i) + h;
  
  Ky1 = feval(ODE1, x(i), y(i), z(i));
  Kz1 = feval(ODE2, x(i), y(i), z(i));
  
  Ky2 = feval(ODE1, x(i+1), y(i)+Ky1*h, z(i)+Kz1*h);
  Kz2 = feval(ODE2, x(i+1), y(i)+Ky1*h, z(i)+Kz1*h);
  
  y(i+1) = y(i) = y(i) + (Ky1 + Ky2)*h/2;
  z(i+1) = z(i) + (Kz1 + Kz2)*h/2;
  
endfor

endfunction