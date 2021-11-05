clear all
close all
clc

n=0:1:40; fc=1; Ts=0.1; t=0:Ts:4;

x=cos(2*pi*(fc*Ts)*n);
figure()
stem(n,x)

x2=cos(2*pi*(fc*Ts+1)*n);
figure()
stem(n,x2)