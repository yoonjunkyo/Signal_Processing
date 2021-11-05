clear all
close all
clc

load welcome
##
##figure()
##plot(x)
##hold on;

#help sound로 함수 변수 확인

#sound(x,11025)

###filter 2 실습 n=5일때부터 계산

for i = 1:length(x)
  if(i<5)
    y(i)=x(i)
  else
    y(i)=2.7*y(i-1)-3.3*y(i-2)+2.0*y(i-3)-0.57*y(i-4)+0.35*x(i)-1.3*x(i-1)+2.0*x(i-2)-1.3*x(i-3)+0.35*x(i-4);
  endif
end
figure()
plot(x,'b')
hold on;
plot(y,'r')

sound(y,11025)