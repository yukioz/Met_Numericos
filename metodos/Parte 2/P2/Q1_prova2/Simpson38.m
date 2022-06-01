function I = Simpson38(FunName, a, b, N)
  
  FunName
  h = (b-a)/N;
  x = a:h:b;
  F = FunName(x);
  I = (3*h/8) * (F(1) + 2*sum(F(4:3:(N-2))) + F(N+1));
  
  N=2*N;
  check=0;
  count = 0;
  while check==0;
    count = count + 1;
    h=(b-a)/N;
    x=a:h:b;
    F=FunName(x);
    
    I_new = (3*h/8) * (F(1) + 2*sum(F(4:3:(N-2))) + F(N+1));
    I_new = I_new + (3*h/8) * (F(1) + 2*sum(F(4:3:(N-2))) + F(N+1));
    
    error=abs(I-I_new)/I*100;
    
    if error>1.0%
      check=0;
      N=N*2;
      I=I_new;
    elseif error <= 1.0%
      check=1;
      I=I_new;
    endif
    
  endwhile
  
  fprintf('E necessario %i subintervalos para o dominio de integração ser menor que um porcento\n', N)
  
endfunction