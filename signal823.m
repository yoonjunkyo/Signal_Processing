clear all
close all
clc

n = 0:1:40;
fc1 = 1,fc2 = 2,Ts=0.1;
t = 0:Ts:4;
x = cos(2*pi*fc1*Ts*n);
figure()
stem(n,x)
x2 =cos(2*pi*fc2*Ts*n);
figure()
stem(n,x2)