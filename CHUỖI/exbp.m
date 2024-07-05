function [t,y]=exbp(b,T)
Nb=b+2;
Ns=250;
ts=T/(Ns-1);
Tw=Nb*T;
t=0:ts:Tw;
y=zeros(length(t));
for i=1:length(t)
    y(i)=exp(mod(t(i),T)^2);
end
end