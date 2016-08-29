points=500;
fs=12;
lw=1.5;

x=linspace(0.01,pi-0.01,points);
y=sin(x);
y3=MySin(x,3);
y6=MySin(x,6);
y9=MySin(x,9);
y12=MySin(x,12);

e3=abs((y3-y)./y);
e6=abs((y6-y)./y);
e9=abs((y9-y)./y);
e12=abs((y12-y)./y);

figure(1),clf
axes('FontSize',fs)

e12(1:100)
semilogy(x,e3,'b',x,e6,'r',x,e9,'m',x,e12,'y','LineWidth',lw)

axis([0,pi,1e-20,1e+1]);
legend('n=3','n=6','n=9','n=12')
xlabel('x-values')
ylabel('relative-errors')
title('MySin compares to sin')

