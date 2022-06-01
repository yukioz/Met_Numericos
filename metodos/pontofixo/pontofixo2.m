clear all;
close all;
clc;

e = exp(1)

# intervalos
a0 = 1;
a1 = 2;

f = @(x) x*e^(0.5*x) + 1.2*x-5;

# isolar um dos x
## gx = @(x) (5 - x*e^(0.5*x))/1.2
## Dgx = @(x) -(e^(0.5*x) + 0.5*x*e^(0.5*x))/1.2

gx = @(x) 5/(e^(0.5*x) + 1.2);
Dgx = @(x) (-5*e^(0.5*x))/(2*(e^(0.5*x)+1.2)^2);

if abs(Dgx(a0)) < 1 && abs(Dgx(a1)) < 1
  fprintf('ok\n')
endif