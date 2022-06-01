clear all;
close all;
clc;

x = [1850 1900 1950 1980 2000];
y = [1.3 1.6 3 4.4 6];

figure(1)
plot(x,y,'*r')
grid on
xlabel('Ano')
ylabel('População (Bilhões)')

z=log(y);

## Valores para regressão linear por minimos quadrados y=be^(mx)
## "x" e "log(y)"
[a1,a0] = LinearRegression(x,z);

## a1 = m, então
m=a1;

## a0=log(b), então
b=exp(a0);
xx=[1850:1:2000];

yy = b.*exp(m*x);
yyy = b.*exp(m*xx);

hold on

plot(x, yy)
plot(xx, yyy, 'm')
legend("Dados", "Dados ajustados")

fprintf("Os valores de b e m são, respectivamente, %f e %f\n\n", b, m)

Resposta = b*exp(m*1970);

fprintf("A população extimada em 1970 e %f\n", Resposta)
