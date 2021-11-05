clear all
close all
clc

L = 5;
N = 60;
k = [-N/2:N/2];
xn = [ones(1,L),zeros(1,N-L)];
Xk = dfs(xn,N);
magXk = abs([Xk(N/2+1:N) Xk(1:N/2+1)]);
figure()
stem(k,magXk);
axis([-N/2,N/2,-0.5,5.5]);