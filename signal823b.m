clear all
close all
clc

n=0:1:40; 
fc=1; 
Ts=0.1; 
t=0:Ts:4;

x=cos(2*pi*(fc*Ts)*n);
x2=cos(2*pi*(fc*Ts+1)*n);
analog_t=0:0.001:4;  #�������� �ð�
analog_x = cos(2*pi*analog_t);
analog_x2 = cos(2*pi*11*analog_t);

figure()
plot(analog_t,analog_x)
hold on;
stem(t,x)

figure()
plot(analog_t,analog_x2)
hold on;
stem(t,x2)

#�������� ���ļ��� �޶����� �� �Լ��� ���� ����� ���� -> '���ļ�'�� �ֱ⼺ 