a=[1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0];
Tb=1;
timewindow=Tb*length(a);
Ns=500;
ts=timewindow/(Ns-1);
t=0:ts:timewindow;
y=zeros(1,length(t));
for i=1:length(t)
    indx=fix(t(i)/Tb)+1;
    if indx>length(a)
        indx=length(a);
    end
    y(i)=a(indx);
end
plot(t,y,'Linewidth',1.25);
xlabel('time(ms)');
ylabel('bien do');
title('NRZ');
