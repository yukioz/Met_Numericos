function dudt = First_ODE(t,y,u)
  g = 9.81;
  T = 31400;
  w = 13500 + 3360*t;
  
  dudt = (T-w-0.036*g*u.^2) * g./w;