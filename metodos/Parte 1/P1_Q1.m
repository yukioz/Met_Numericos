%Programa Prova 1 execicio 1 de MN
%Nome Victor yukio Cavalcanti Miki 
%Matricula: 180068229
%Prof: Poliana
%Data: 11/03/2022

clear all;
close all;
clc;

# Dados

x = [-8 -6 -4 -2 0 2 4];
y = [30 10 9 6 5 4 4];

# plotar
figure(1)
plot(x,y,'*r');
grid on;
xlabel('x')
ylabel('y')

z = 1 ./y;

##[a1, a0] = LinearRegression(x,y);
[a1, a0] = LinearRegression(x,z);

# Como a função e do tipo y=1/(m*x+b), temos a relaçao:
# Y = 1/y e X = x
# a1=m e a0=b

# Se a1 = m, então
m = a1;

# Se a0 = b, então
b = a0;

## opcional para curva mais bonita:
## usamos os pontos fornecidos pelo exercicio e criamos
## 50 pontos igualmente espaçados no intervalo
xx = linspace(-8,4,50);

##yy = 1/(m*x)+b;
yy = 1 ./((m*xx)+b);

hold on
##plot(x,yy)
plot(xx,yy,'m')
legend('Dados', 'Curva da função ajustada')

fprintf('Os valores de m e b são %f e %f\n', m, b)