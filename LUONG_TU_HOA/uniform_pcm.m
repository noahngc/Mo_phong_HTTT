function [code,xq ] = uniform_pcm( x,M )
Nb=log2(M);
amax=max(abs(x));
delta=2*amax/(M-1);
Mq=-amax:delta:amax;
Ml=0:(M-1);
xq = zeros(size(x));
xcode = xq;
for k=1:M
    ind = find(x > Mq(k)-delta/2 & x <= Mq(k)+delta/2);
    xq(ind) = Mq(k);
    xcode(ind) = Ml(k);
end
code = de2bi(xcode,Nb,'left-msb');

end

