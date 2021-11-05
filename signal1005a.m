clear all
close all
clc

n = [0:1:99];
x = cos(0.48*pi*n)+cos(0.52*pi*n);

##n1 = [0:1:9];
##y1 = x(1:1:10);
##
##figure()
##stem(n1,y1);
##
##Y1 = dft(y1,10);
##
##magY1 = abs(Y1(1:1:10));
##
##k1 = 0:1:9;
##w1 = 2*pi/10*k1;
##
##figure()
##stem(w1/pi,magY1);

n2 = [0:1:99];
y2 = [x(1:1:10),zeros(1,90)];

figure()
stem(n2,y2);

Y2 = dft(y2,100);

magY2 = abs(Y2(1:1:100));

k2 = 0:1:99;
w2 = 2*pi/100*k2;

figure()
plot(w2/pi,magY2);

X = dft(x,100);

magX = abs(X(1:1:100));

k=0:1:99;
w=2*pi/100*k;

figure()
plot(w/pi,magX);