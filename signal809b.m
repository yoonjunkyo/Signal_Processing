clear all
close all
clc

##n = [-50:50];
##alpha_ = 0.9; # 1���� �����Ƿ� 0���� ����
##x=(alpha_).^n;
##
##figure()
##stem(n,x)
#��ȣ�� ����
function [y,n] = sigadd(x1,n1,x2,n); #��ȣ�� ���̰� �ٸ��� ��� ó���ϴ���
n = min(min(n1),min(n2)):max(max(n1),max(n2));
y1 = zeros(1,length(n));
y2=y1;
y1 (find((n>=min(n1))&(n<=max(n1))==1))=x1;
y2 (find((n>=min(n2))&(n<=max(n2))==1))=x2; 
y= y1+y2;
end

n = [-3,-2,-1,0,1,2,3,4]
x = [-2,1,-1,0,1,4,3,7]
