function [y,x]=viphaneuler(a,b)
h=a*0.01;
en=max(a,b);
x=0:h:en;
y=zeros(length(x));
y(1)=1;

for i=2:length(x)
    y(i)=y(i-1)+h*(a*x(i-1)^2-b*y(i-1));
end
plot(x,y)
y1(1)

end