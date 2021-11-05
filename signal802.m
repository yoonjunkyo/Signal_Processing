clear all #workspace 정리
close all #현제 창 닫기
clc # help help같은것 모두 없애줌
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
##AA = A_m .* A_m2 #행렬 원소 간 곱
##
##A_m2
##A_m2 > 3 #matrix에서 3보다 큰 값만 찾음 -> 0또는 1로 산출
##A_m2(A_m2>3) #3보다 큰 값을 뽑아냄
##A_m2 = A_m2.*(A_m2>3)  #원소의 곱으로 행렬은 재정립
##

%    plot
figure() # 새로운 그림창을 만듬
time_domain=1:9 # 1,2,3,....,9 까지 간격이 1인 data -> row vector
A_m2 = magic(3); #3*3 matrix 행, 열 ,대각 더한 값이 모두 같은 행렬
A_m2 
data = A_m2(:) #column형태의 data형성
plot(time_domain,data) #x,y축 정보

time_domain(1)#index가 1부터 시작
time_domain(2)
time_domain(3)
time_domain(4)

N=1000;
B= 1:N;
sum = 0;
tic  #tic toc 프로그램 실행 시간 측정
for i=1:N #1부터 N까지
  sum=sum+B(i);
end
toc

disp(sum) #for문 사용x 위와 같은 연산을 수행 vector의 곱으로
A = ones(1,N); # [1,1,1,1,...,1,1,1]
B = (1:N)'; #row vetor를 transpose하여(') column vector로 만듦 

tic
C = A*B
toc
  