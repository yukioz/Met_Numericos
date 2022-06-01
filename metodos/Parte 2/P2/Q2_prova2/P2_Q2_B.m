## Nome: Victor Yukio Cavalcanti Miki
## Matricula: 180068229
## Prova 2 Questão 2
## data: 28/04/2022

clear all;
close all;
clc;

t0 = 0; # tempo inicial
t3 = 3; # tempo final
intervalo = 0.1;
P0 = 0; # posição inicial
V0 = 0; # velocidade inicial

[t, y, u] = Sys2ODEsRK2('Second_ODE','First_ODE', t0, t3, intervalo, P0, V0);
subplot(3,1,1)
plot(t,y)
xlabel('tempo (s)')
ylabel('posição (m)')

subplot(3,1,2)
plot(t,u)
xlabel('tempo(s)')
ylabel('velocidade (m)')

Aceleracao = First_ODE(t,y,u);
subplot(3,1,3)
plot(t,Aceleracao)
xlabel('tempo(s)')
ylabel('aceleração (m/s^2)')

imax = t3/intervalo;

aux = 0;
fprintf("  tempo    |  distancia | velocidade | aceleração |\n")
for i=1:imax
  fprintf(" %5.6f s |  %5.5f m |  %5.5f  |  %5.5f   |\n", aux, y(i), u(i), Aceleracao(i))
  aux = aux + intervalo;
endfor