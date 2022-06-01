function Yint = LinearSpline(x, y, Xint)
  
n = length(x)
for i=2 : n
  if Xint < x(i)
    break
  endif
endfor

Yint = (Xint - x(i)*y(i-1)/(x(i-1)-x(i))+(Xint - x(i-1))*y(i)/(x(i)-x(i-1));
