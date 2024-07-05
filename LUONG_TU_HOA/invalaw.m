function x= invalaw( y,A )
amax=max(abs(y));
y=y/amax;
x=sign(y).*(abs(y)<1/(1+log(A))).*(abs(y)*(1+log(A))/A)+sign(y).*(abs(y)>=(1/(1+log(A)))).*exp(abs(y)*(1+log(A))-1)/A;
x=x*amax;

end

