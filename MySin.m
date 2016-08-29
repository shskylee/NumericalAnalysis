function y=MySin(x,n)
%  y=sin(x) approximated by Taylor expansion
%       y : output array
%       x : input array
%       n : the order of Taylor expansion

term=x; % the first order term;
y=x;
x2=x.*x;
for k=1:n-1
    k2=2*k;
    term=-term.*(x2/(k2*(k2+1))); % compute k-th order term with (k-1)-th order term
    y=y+term; % add k-th order term to result y
end
