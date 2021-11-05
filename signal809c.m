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

function [y,n] = sigadd(x1,n1,x2,n2); #신호의 길이가 다를때 어떻게 처리하는지
n = min(min(n1),min(n2)):max(max(n1),max(n2)); #n1과n2 최소 최대를 골라서 n에 저장
y1 = zeros(1,length(n));
y2=y1;
y1 (find((n>=min(n1))&(n<=max(n1))==1))=x1;
y2 (find((n>=min(n2))&(n<=max(n2))==1))=x2; 
y= y1+y2;
end

function [y,n] = sigmult(x1,n1,x2,n2); 
n = min(min(n1),min(n2)):max(max(n1),max(n2)); 
y1 = zeros(1,length(n));
y2=y1;
y1 (find((n>=min(n1))&(n<=max(n1))==1))=x1;
y2 (find((n>=min(n2))&(n<=max(n2))==1))=x2; 
y= y1.*y2;
end

[x1,n1] = impseq(2,-3,3)
[x2,n2] = stepseq(-1,-4,4)

figure()
stem(n1,x1);

figure()
stem(n2,x2);

[y,n] = sigmult(x1,n1,x2,n2)