function Zp=PlaneApprox(Z,X,Y)

A=[X(:),Y(:),ones(size(X(:)))];
c=A\Z(:);
Zp=reshape(A*c,size(Z,1),size(Z,2));
