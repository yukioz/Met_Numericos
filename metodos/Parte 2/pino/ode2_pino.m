function dwdx = ode2_pino(x,T,w)
  hc = 40;
  P=0.016;
  eps=0.4;
  k=240;
  Ac=1.6E-5;
  Seg=5.67E-8
  Ts=293;
  
  A1=hc*P/(k*Ac);
  A2=eps*Seg*P/(k*Ac);
  
  dwdx=A1*(T-Ts) + A2*(T^4-Ts^4);
  
endfunction