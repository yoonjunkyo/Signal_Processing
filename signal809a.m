clear all
close all
clc

function [x,n] = impseq(n0 , n1, n2)
  n = [n1:n2];
  x = [(n-n0) == 0];
end

function [x,n] = stepseq(n0,n1,n2)
  n = [n1:n2];
  x=[(n-n0) >=0];
end

##n = [-3,-2,-1,0,1,2,3,4]
##x = [-2,1,-1,0,1,4,3,7]

[x1,n1] = impseq(2,-3,3)

#[x2,n2] = stepseq(0,-3,3)
