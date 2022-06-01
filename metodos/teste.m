clear all;
close all;
clc;

Fun = @(x) (2*x-1)/((((x^4)*sin(x))+x+1)^(1/4));

xi_p_2 = 1.96;
xi_p_1 = 1.98;
xi_plus_1 = 2.02;
xi_plus_2 = 2.04;
fi_p_2 = Fun(xi_p_2);
fi_p_1 = Fun(xi_p_1);
fi_plus_1 = Fun(xi_plus_1);
fi_plus_2 = Fun(xi_plus_2);

h=0.02;

%% e ISSO
first_deriv=(fi_p_2 - (8*fi_p_1) + (8*fi_plus_1) - fi_plus_2)/12/h