#신호처리

#예제 2.1 
##a. x(n) = 2d(n+2)-d(n-4), -5<=n<=5
##n = [-5:5];
##x = 2*impseq(-2,-5,5)-impseq(4,-5,5);
##stem(n,x)

##b. n[u(n)-u(n-10)] + 10exp(-0.3(n-10))[u(n-10)-u(n-20)]
n = [0:20];
x1= n.*(stepseq(0,0,20)-stepseq(10,0,20));
x2= 10*exp(-0.3*(n-10)).*(stepseq(0,0,20)-stepseq(10,0,20));
x=x1+x2;
stem(n,x)