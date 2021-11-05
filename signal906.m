clear all
close all
clc

n=0:100;
x=cos(pi*n/2);

k=-100:100;
w=(pi/100)*k;

##DTFT of x
X=x*(exp(-j*pi/100)).^(n'*k);

y=x.*exp(j*pi*n/4);

##DTFT of y
Y=y*(exp(-j*pi/100)).^(n'*k);

figure()
plot(w/pi,abs(X));
figure()
plot(w/pi,abs(Y))