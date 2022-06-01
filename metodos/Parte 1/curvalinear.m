clear all;
close all;
clc;

# Dados

x = [-1 -0.7 -0.4 -0.1 0.2 0.5 0.8 1];
y = [36.547 17.264 8.155 3.852 1.820 0.860 0.406 0.246];

# plotar
figure(1)
plot(x,y,'*r');
grid on;
xlabel('')
ylabel('')

z = log(y);

##[a1, a0] = LinearRegression(x,y);
[a1, a0] = LinearRegression(x,z);

#yy = a1.*x+a0;
m = a1;
b=exp(a0);

##  opcional
xx = linspace(-1,1,50);

##yy = b.*exp(m.*x);
yy = b.*exp(m.*xx);

hold on
##plot(x,yy)
plot(xx,yy,'m')
legend('Dados', 'Ajuste')

fprintf('Os valores de a0 e a1 são %f e %f', b, m)