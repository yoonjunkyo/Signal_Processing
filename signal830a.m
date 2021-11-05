clear all
close all
clc

n=-1:3
x=1:5
k=0:500; % M=500ÀÎ °æ¿ì
w=(pi/500)*k;

X= x*(exp(-j*pi/500)).^(n'*k);
magX =abs(X); angX =angle(X);
realX = real(X); imagX=imag(X);

subplot(2,2,1); plot(k/500,magX); grid
xlabel('frequency in pi unit'); title('Magnitude Part')

subplot(2,2,3); plot(k/500,angX/pi); grid
xlabel('frequency in pi unit'); title('Angle Part')

subplot(2,2,2); plot(k/500,realX); grid
xlabel('frequency in pi unit'); title('Real Part')

subplot(2,2,4); plot(k/500,imagX); grid
xlabel('frequency in pi unit'); title('Imaginary Part')
