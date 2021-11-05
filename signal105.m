clear all
close all
clc

#예제5.6

##x = [1,1,1,1];
x = [1,1,1,1,zeros(1,124)];
##N = 4;
N=128;

n = 0:(N-1);
X = dft(x, N);
magX = abs(X);
phaX = angle(X)*180/pi;

##DTFT결과

omega = 0:0.001:2*pi;
magX_DTFT = abs(sin(2*omega)./sin(omega/2));
for i = 1:length(omega)
  if(omega(i)<pi/2)
    phaX_DTFT(i) = -1.5*omega(i)*180/pi;
  elseif ((omega(i)>=pi/2)&&(omega(i)<pi))
    phaX_DTFT(i) = -1.5*omega(i)*180/pi + pi*180/pi;
  elseif ((omega(i)>=pi)&&(omega(i)<3*pi/2))
    phaX_DTFT(i) = -1.5*omega(i)*180/pi + 2*pi*180/pi;
  elseif ((omega(i)>=3*pi/2)&&(omega(i)<2*pi))
    phaX_DTFT(i) = -1.5*omega(i)*180/pi + 3*pi*180/pi;
  end
end

figure()
stem(n,magX);
hold on;
plot(omega/(2*pi/N),magX_DTFT);
axis([0,N,0,4])

figure()
stem(n,phaX);
hold on;
plot(omega/(2*pi/N),phaX_DTFT);
axis([0,N,-200,200])
