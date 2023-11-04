(in-package :direct)

#|
c:\Users\awolven\maxima-5.47.0\src\binary-sbcl>c:/sbcl/bin/sbcl --core maxima.core --dynamic-space-size 128000

(cl-user::run)

PA:[[xa0,ya0],[xa1,ya1],[xa2,ya2],[xa3,ya3]];
WA:[wa0,wa1,wa2,wa3];
PB:[[xb0,yb0],[xb1,yb1],[xb2,yb2],[xb3,yb3]];
WB:[wb0,wb1,wb2,wb3];
Bin(n):=binomial(n,i)*(t^i)*(1-t)^(n-i);
CA:sum(WA[i+1]*PA[i+1]*Bin(3),i,0,3)/sum(WA[i+1]*Bin(3),i,0,3);
CB:sum(WB[i+1]*PB[i+1]*Bin(3),i,0,3)/sum(WB[i+1]*Bin(3),i,0,3);
XA:CA[1];
YA:CA[2];
XB:CB[1];
YB:CB[2];

IMPLIC0:resultant(XA-x,YA-y,t);

IMPLIC1:ratexpand(IMPLIC0)$

monomials(p,vars) :=
    block([inflag:true],
       p: apply('facsum,cons('?zwzwz * p, vars)),
       if mapatom(p) or op(p)#"+" then [p / '?zwzwz]
else args( p ) / '?zwzwz );

IMPLIC2:monomials(IMPLIC1,[x,y])$

IMPLIC:IMPLIC2[1]+IMPLIC2[2]+IMPLIC2[3]+IMPLIC2[4]+IMPLIC2[5]+IMPLIC2[6]+IMPLIC2[7]+IMPLIC2[8]+IMPLIC2[9]+IMPLIC2[10]$

INTER0:subst([x=XB,y=YB],''IMPLIC)$

INTER1:ratexpand(INTER0)$

INTER2:ratsimp(INTER1)$

INTER3:denom(INTER2)*INTER2 $

INTER:monomials(INTER3,[t])$

|#
