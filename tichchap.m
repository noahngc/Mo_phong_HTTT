function [t,y]=tichchap(N)
N=10;
Ns=100;
h=(N-0)/(Ns);
t=0:h:N;
y=zeros(length(t));
for i=1:length(t)
    tichphan=0;
    for j=1:length(t)
        tichphan=tichphan+cos(t(i)-(t(j)+h/2))*sin(t(j)+h/2);
    end
    y(i)=tichphan*h;
end
plot(t,y);
end