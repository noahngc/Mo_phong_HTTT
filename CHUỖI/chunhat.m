function [t,y]=chunhat(b,T)
Nb=b+2;
Ns=250;
ts=T/(Ns-1);
Tw=Nb*T;
t=0:ts:Tw;
y=zeros(length(t));
for i=1:length(t)
   if mod(t(i),T)<=T/2
       y(i)=1;
   end
end
end