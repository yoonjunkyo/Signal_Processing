n=0:1:10;
omega_0 = 2*pi*0.1;
x_2pi = cos(omega_0 * n);
x_4pi = cos((omega_0 * 2*pi)*n);

figure()
plot(n,x_2pi,'linewidth',4);
hold on;
plot(n,x_4pi,'r','linewidth',2)
