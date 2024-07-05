a=1; b=2; c=3;
A=[a -b -c; c 2*b -a;a c -3*c];
C=A';
D=inv(A);
H=[10 ; 5; 2];
X=A\H;