function [y,X,h,x]= tongchapmt(x,h)
lx=length(x);
lh=length(h);
n=lx+lh-1;
h1=[h zeros(n-lh)];
h1=h1';
X=zeros(n,n);
for i=1:lx
    X(i,1)=x(i);
end
for i=2:n
    for j=i:i+lx
        if j>n
            break;
        end
        X(j,i)=X(j-1,i-1);
    end
end
y=X*h1;
end