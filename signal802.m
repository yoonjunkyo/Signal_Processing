clear all #workspace ����
close all #���� â �ݱ�
clc # help help������ ��� ������
##
##A= 1;
##A= 1  #scalar
##
##A_c=[1;2;3] #column vector
##
##A_r=[1,2,3] #row vector
##
##A_m=[1,2,3;4,5,6;7,8,9] #matrix
##
##A_m2 = A_c * A_r
##
##AA = A_m .* A_m2 #��� ���� �� ��
##
##A_m2
##A_m2 > 3 #matrix���� 3���� ū ���� ã�� -> 0�Ǵ� 1�� ����
##A_m2(A_m2>3) #3���� ū ���� �̾Ƴ�
##A_m2 = A_m2.*(A_m2>3)  #������ ������ ����� ������
##

%    plot
figure() # ���ο� �׸�â�� ����
time_domain=1:9 # 1,2,3,....,9 ���� ������ 1�� data -> row vector
A_m2 = magic(3); #3*3 matrix ��, �� ,�밢 ���� ���� ��� ���� ���
A_m2 
data = A_m2(:) #column������ data����
plot(time_domain,data) #x,y�� ����

time_domain(1)#index�� 1���� ����
time_domain(2)
time_domain(3)
time_domain(4)

N=1000;
B= 1:N;
sum = 0;
tic  #tic toc ���α׷� ���� �ð� ����
for i=1:N #1���� N����
  sum=sum+B(i);
end
toc

disp(sum) #for�� ���x ���� ���� ������ ���� vector�� ������
A = ones(1,N); # [1,1,1,1,...,1,1,1]
B = (1:N)'; #row vetor�� transpose�Ͽ�(') column vector�� ���� 

tic
C = A*B
toc
  