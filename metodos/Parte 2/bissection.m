%metodo da bisseção

for i=1:imax+1
  wi=(wH+wL)/2;
  [x, T3,w] = Sys2ODEsRK2('ode1_pino','ode2_pino',a,b,h,TINI,wi);
  fprintf('The temperature at x=0.1 is %5,3f, for initial value of dt/dx= %4.1f\n',T3(n),wi)
  E = T3(n)-Yb;
  
  if abs(E)<tol
    break
  endif

  if E>0
    wH=wi;
  else
    wL=wi;
  endif

  if i>imax
    fprintf('A solução não foi encontrada em %i iterações.\n',imax)
  else
    
    plot(x,T3)
    xlabel('Distance (m)')
    ylabel('Temperature )K)')
    grid on;
    fprintf('Solution obtained\n')
    i
  end
    