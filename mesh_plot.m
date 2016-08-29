% Plot Eq.1 using mesh
n=500; % number of data points
fs=12;


% surface defined in Eq.1
x=linspace(-2*pi,2*pi,n);
y=linspace(0,4*pi,n);
[X,Y]=meshgrid(x,y);
Z=sin(X)+cos(Y)+0.5*X;

%approximate the given surface with a plane
Zp=PlaneApprox(Z,X,Y);

figure

% plot the give surface
subplot(1,3,1)
mesh(X,Y,Z)
title('Given surface')

% plot the approximated plane
subplot(1,3,2)
mesh(X,Y,Zp)

title('Plane approximation')

% combine two plot together
subplot(1,3,3)
mesh(X,Y,Z)
hold on
mesh(X,Y,Zp)
title('Suface and Plane approximation')
