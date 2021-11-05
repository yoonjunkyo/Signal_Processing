clear all
close all
clc

function [x,n] = impseq(n0 , n1, n2)
  n = [n1:n2];
  x = [(n-n0) == 0];
end
function [y,n] = sigshift(x,m,k)
  n=m+k;
  y=x;
end

[x1,n1] = impseq(2,-3,3)

[y,n] = sigshift(x1,0,1)