function [y,x]=viphaneulerbd(a,b)
h=0.01*a;
ma=max(a,b);
x=0:h:ma;
y=zeros(length(x));
y(1)=1;
ydot=@(x,y) a*x^2-b*y;
for i=2:length(x)
    y1=y(i-1)+h*(a*x(i-1)^2-b*y(i-1));
    diff=1;
    while abs(diff)>0.01
        y2=y(i-1)+h*(ydot(x(i-1),y(i-1))+ydot(x(i),y1))/2;
        diff=y1-y2;
        y1=y2;
    end
    y(i)=y1;    
end
plot(x,y);
end