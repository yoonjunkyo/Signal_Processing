function [Xk] = dfs(xn,N)
  
  n=[0:1:N-1];
  k=[0:1:N-1];
  
  WN = exp(-j*2*pi/N);
  nK = n'*k;
  WNnk=WN.^nK;
  Xk=xn*WNnk;