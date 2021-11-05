clear all
close all
clc

function [x,n] = impseq(n0 , n1, n2)
  n = [n1:n2];
  x = [(n-n0) == 0];
end

n = [-3,-2,-1,0,1,2,3,4]
x = [-2,1,-1,0,1,4,3,7]

figure()
stem(n,x) #줄기형태로 DATA 그래프 생성
#실제로는 연속적인 데이터형태 일것이다. 따라서 간격을 조절하여 sampling을 조절가능하다.
[x,n] = impseq(1,-3,3)