(in-package :direct)

#|
cd ~/maxima/src/binary-sbcl
/usr/local/bin/sbcl --core maxima.core --dynamic-space-size 512000

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

IMPLIC:resultant(XA-x,YA-y,t);

INTER0:subst([x=XB,y=YB],''IMPLIC);

INTER1:ratsimp(INTER0,s)$

INTER2:denom(INTER1)*INTER1$

INTER3:collectterms(INTER2,[t])$

coeffs(polynomial, vars, degrees) :=
 block([coef:polynomial],
       for i from 1 thru length(degrees)
        do block([degree:degrees[i]],
	         coef:ratcoef(coef, vars[i], degree)),
coef);

ratsimp(coeffs(INTER3,[t],[0]));

to_lisp();
(setq *print-level* nil *print-length* nil)
(pprint $%)
(to-maxima)

ratsimp(coeffs(INTER3,[t],[1]));
ratsimp(coeffs(INTER3,[t],[2]));
ratsimp(coeffs(INTER3,[t],[3]));
ratsimp(coeffs(INTER3,[t],[4]));
ratsimp(coeffs(INTER3,[t],[5]));
ratsimp(coeffs(INTER3,[t],[6]));
ratsimp(coeffs(INTER3,[t],[7]));
ratsimp(coeffs(INTER3,[t],[8]));
ratsimp(coeffs(INTER3,[t],[9]));

|#

(defun rational-cubic-bezier/cubic-bezier-c0
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (+
   (*
    (+
     (* (expt WA0 3) (expt WA3 3)
	(expt WB0 3) (expt XA3 3))
     (* -3 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XA3 2) XB0)
     (* 3 (expt WA0 3) (expt WA3 3)
	(expt WB0 3) XA3 (expt XB0 2))
     (* -1 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XB0 3)))
    (expt YA0 3))
   (*
    (+
     (* -9 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3) XA2
	(expt XA3 2))
     (*
      (+
       (* 18 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA2 XA3)
       (* 9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XA3 2)))
      XB0)
     (*
      (+
       (* -9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA2)
       (* -18 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA3))
      (expt XB0 2))
     (* 9 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3)))
    (expt YA0 2) YA1)
   (*
    (+
     (* 27 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3) XA1
	(expt XA3 2))
     (*
      (+
       (* -54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA1 XA3)
       (* -27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3)
	  (expt XA3 2)))
      XB0)
     (*
      (+
       (* 27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA1)
       (* 54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA3))
      (expt XB0 2))
     (* -27 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3)))
    YA0 (expt YA1 2))
   (*
    (+
     (* -27 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3) XA0
	(expt XA3 2))
     (*
      (+
       (* 54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA0 XA3)
       (* 27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3)
	  (expt XA3 2)))
      XB0)
     (*
      (+
       (* -27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA0)
       (* -54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA3))
      (expt XB0 2))
     (* 27 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3)))
    (expt YA1 3))
   (*
    (+
     (*
      (+
       (* 27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 2) XA3)
       (* -18 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA1
	  (expt XA3 2))
       (*
	(+
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA1)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2))
          XA3)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1)
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA2)
	 (*
          (+
           (* 27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3)))
      (expt YA0 2))
     (*
      (+
       (* -81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA1
	  XA2 XA3)
       (* 27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA0
	  (expt XA3 2))
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1
            XA2)
	 (*
          (+
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA2))
          XA3)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA2)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3)))
      YA0 YA1)
     (*
      (+
       (* 81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA0
	  XA2 XA3)
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA2)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA2))
          XA3))
	XB0)
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA2)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA3))
	(expt XB0 2))
       (* -81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XB0 3)))
      (expt YA1 2)))
    YA2)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0
            XA2))
	XA3)
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0
            XA2)
	 (*
          (+
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2))
          XA3))
	XB0)
       (*
	(+
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0)
	 (* 162 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA2)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -54 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB0 3) (expt XB0 3)))
      YA0)
     (*
      (+
       (* -81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA0
	  XA1 XA3)
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA1)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA3))
	XB0)
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA3))
	(expt XB0 2))
       (* 81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XB0 3)))
      YA1))
    (expt YA2 2))
   (*
    (+
     (* 27 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XA0 2) XA3)
     (*
      (+
       (* -27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA0 2))
       (* -54 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3) XA0
	  XA3))
      XB0)
     (*
      (+
       (* 54 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3) XA0)
       (* 27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3) XA3))
      (expt XB0 2))
     (* -27 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XB0 3)))
    (expt YA2 3))
   (*
    (+
     (*
      (+
       (* -27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 3))
       (* 27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA1 XA2
	  XA3)
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3) XA0
	  (expt XA3 2))
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1 XA2)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 3) XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA1)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA2))
          XA3)
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* 27 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* 3 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XB0 3)))
      (expt YA0 2))
     (*
      (+
       (* 81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA1
	  (expt XA2 2))
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA2))
	XA3)
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3) XA1)
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA2))
          XA3))
	XB0)
       (*
	(+
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) XA1)
	 (*
          (+
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+ (* -54 WA0 (expt WA1 3))
             (* -9 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* 54 WA0 (expt WA1 3))
             (* 9 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB0 3) (expt XB0 3)))
      YA0 YA1)
     (*
      (+
       (* -81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA0
	  (expt XA2 2))
       (* 54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA0 XA1
	  XA3)
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* 162 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA2)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3) XA0)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3) XA1))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) XA0)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (* -162 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA2)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3)))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2) XA2)
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0
            (expt XA2 2))
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1
            XA3)
	 (*
          (+
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              (expt XA1 2))
           (*
            (+
             (* -108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3)
		XA0)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA1))
            XA2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              (expt XA2 2))
           (*
            (+
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3) XA0)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3) XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA2)
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -54 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XB0 3)))
	YA0)
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA1 XA2)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2) XA3)
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3) XA0
              XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA0)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA1))
            XA2)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA2)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XB0 3)))
	YA1))
      YA2)
     (*
      (+
       (* -27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA0 2) XA2)
       (*
	(+
	 (* 27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA0 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0
            XA2))
	XB0)
       (*
	(+
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0)
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA2))
	(expt XB0 2))
       (* 27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XB0 3)))
      (expt YA2 2)))
    YA3)
   (*
    (+
     (*
      (+
       (* 27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3)
	  (expt XA1 3))
       (* -27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA0 XA1
	  XA2)
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3)
	  (expt XA0 2) XA3)
       (*
	(+
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA0 2))
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA1))
          XA2)
	 (* -6 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA0)
	 (*
          (+ (* 81 WA0 (expt WA1 3))
             (* -27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA1)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2)
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+ (* -27 WA0 (expt WA1 3))
             (* 27 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* -3 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XB0 3)))
      YA0)
     (*
      (+
       (* -27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA0
	  (expt XA1 2))
       (* 18 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XA0 2) XA2)
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* 27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (* -36 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA2))
	XB0)
       (*
	(+
	 (*
          (+ (* -27 WA0 (expt WA1 3))
             (* 36 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA0)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2))
	(expt XB0 2))
       (*
	(+ (* 27 WA0 (expt WA1 3))
	   (* -18 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3)))
      YA1)
     (*
      (+
       (* 9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XA0 2) XA1)
       (*
	(+
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1))
	XB0)
       (*
	(+
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1))
	(expt XB0 2))
       (* -9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XB0 3)))
      YA2))
    (expt YA3 2))
   (*
    (+
     (* -1 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XA0 3))
     (* 3 (expt WA0 3) (expt WA3 3)
	(expt WB0 3) (expt XA0 2) XB0)
     (* -3 (expt WA0 3)
	(expt WA3 3) (expt WB0 3) XA0
	(expt XB0 2))
     (* (expt WA0 3) (expt WA3 3)
	(expt WB0 3) (expt XB0 3)))
    (expt YA3 3))
   (*
    (+
     (*
      (+
       (* 27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 3))
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1 XA2)
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1)
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2))
	(expt XA3 2))
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3)
	  (expt XA3 3))
       (*
	(+
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1 XA2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 3) XA0)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA1)
           (*
            (+
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0)
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* 27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* -27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -3 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA3))
	(expt XB0 2)))
      (expt YA0 2))
     (*
      (+
       (* -81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA1
	  (expt XA2 2))
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2))
	XA3)
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2))
	(expt XA3 2))
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (* 45 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -45 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+ (* 54 WA0 (expt WA1 3))
             (* 9 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3)
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -54 WA0 (expt WA1 3))
               (* -9 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2)))
      YA0 YA1)
     (*
      (+
       (* 81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA0
	  (expt XA2 2))
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA2))
	XA3)
       (*
	(+
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0)
	 (* -27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1))
	(expt XA3 2))
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA2)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3) XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA2))
          XA3)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA2)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2)))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2) XA2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0
            (expt XA2 2))
	 (*
          (+
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              (expt XA1 2))
           (*
            (+
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3)
		XA0)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA1))
            XA2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA1))
          (expt XA3 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              (expt XA1 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3) XA1
              XA2)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3) XA0)
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3) XA1)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA2))
            XA3)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -36 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA2)
           (*
            (+
             (*
              (+
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 54 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA3))
          (expt XB0 2)))
	YA0)
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA1 XA2)
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA0 2))
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3) XA0
              XA1)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA0)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA1))
            XA2))
          XA3)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0
            (expt XA3 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3) XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3) XA0
              XA2)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA1)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA2))
            XA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA3))
          (expt XB0 2)))
	YA1))
      YA2)
     (*
      (+
       (* 27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA0 2) XA2)
       (*
	(+
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA0 2))
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0
            XA2))
	XA3)
       (*
	(+
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA0 2))
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA1)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (* -108 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0
            XA2)
	 (*
          (+
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -54 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) XA0)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA2)
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA3))
	(expt XB0 2)))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 3))
	 (*
          (+
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          (expt XA2 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 3))
	 (*
          (+
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 3)
              (expt XA0 2))
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA1)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3)
              (expt XA1 2))
           (*
            (+
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3) XA0)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3) XA1))
            XA2))
          XA3)
	 (* 6 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0
            (expt XA3 2))
	 (*
          (+
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 3)
              (expt XA0 2))
           (* -45 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) (expt XA1 2))
           (*
            (+
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -63 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0 XA2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -108 WA0 (expt WA1 3))
               (* 63 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 3) XA1)
             (* 45 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3) XA2))
            XA3)
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 3)
              (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -54 WA0 (expt WA1 3))
               (* -9 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (*
              (+
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 54 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2)
           (*
            (+
             (*
              (+ (* 54 WA0 (expt WA1 3))
		 (* -54 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA3))
          (expt XB0 2)))
	YA0)
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0
            (expt XA1 2))
	 (*
          (+
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3) XA0
              XA1))
          XA2)
	 (*
          (+
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          (expt XA2 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA0 2))
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3) XA0
              XA1)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3)
              (expt XA1 2))
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA2))
          XA3)
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA0 2))
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3) XA0
              XA1)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3)
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3) XA0)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA1))
            XA2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 108 WA0 (expt WA1 3))
               (* -63 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 3) XA0)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3) XA2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -54 WA0 (expt WA1 3))
               (* -9 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2)
           (*
            (+ (* -54 WA0 (expt WA1 3))
               (* 36 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2)))
	YA1)
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2) XA1)
	 (*
          (+
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3) XA0
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              (expt XA1 2)))
          XA2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0
            (expt XA2 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3)
              (expt XA0 2))
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0
              XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) (expt XA0 2))
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 45 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0 XA1)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              (expt XA1 2))
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA0)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3)
		XA1))
            XA2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              (expt XA2 2))
           (*
            (+
             (* -45 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3) XA0)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3) XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 54 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2)))
	YA2))
      YA3)
     (*
      (+
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3)
	  (expt XA0 3))
       (* -9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XA0 2) XA1)
       (* 27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA0
	  (expt XA1 2))
       (* -27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3)
	  (expt XA1 3))
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1))
	XA2)
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3)
	  (expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+ (* -54 WA0 (expt WA1 3))
             (* -9 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA1))
          XA2)
	 (* 6 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 27 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 3 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA0)
	 (*
          (+ (* -27 WA0 (expt WA1 3))
             (* 18 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA1)
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2)
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA3))
	(expt XB0 2)))
      (expt YA3 2)))
    YB0)
   (*
    (+
     (*
      (+
       (* 27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3)
	  (expt XA1 3))
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA0)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1))
	(expt XA2 2))
       (* -54 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 3))
       (*
	(+
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA0 2))
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA0)
	 (*
          (+ (* 27 WA0 (expt WA1 3))
             (* -36 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA1)
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2))
	(expt XA3 2))
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3)
	  (expt XA3 3))
       (*
	(+
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA0 2))
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 36 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 54 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+ (* 54 WA0 (expt WA1 3))
		 (* 9 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (*
              (+
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -54 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -27 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -3 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA3 2)))
	XB0))
      YA0)
     (*
      (+
       (* -27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA0
	  (expt XA1 2))
       (*
	(+
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA1))
	XA2)
       (*
	(+
	 (* -162 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1))
	(expt XA2 2))
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+ (* -81 WA0 (expt WA1 3))
             (* 27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA0)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2))
	(expt XA3 2))
       (*
	(+
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+ (* 54 WA0 (expt WA1 3))
		 (* 9 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+ (* 27 WA0 (expt WA1 3))
             (* -18 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3)
          (expt XA3 2)))
	XB0))
      YA1)
     (*
      (+
       (* 9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XA0 2) XA1)
       (*
	(+
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA0 2))
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA0
            XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2)))
	XA2)
       (* 54 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3) XA0
	  (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (* 162 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* 27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA0)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -54 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2))
          XA3)
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA3 2)))
	XB0))
      YA2)
     (*
      (+
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3)
	  (expt XA0 3))
       (* 18 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XA0 2) XA1)
       (* -54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3) XA0
	  (expt XA1 2))
       (* 54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3)
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* -27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 54 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) XA0)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1))
	(expt XA2 2))
       (* -27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+ (* 54 WA0 (expt WA1 3))
             (* 9 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA0)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA1))
          XA2))
	XA3)
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3) XA0
	  (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 3 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 54 WA0 (expt WA1 3))
               (* 9 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -54 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (* 27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -54 WA0 (expt WA1 3))
               (* 54 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+ (* 54 WA0 (expt WA1 3))
               (* -36 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3) XA1)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA2))
          XA3)
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA3 2)))
	XB0))
      YA3))
    (expt YB0 2))
   (*
    (+
     (* (expt WA0 3) (expt WA3 3)
	(expt WB0 3) (expt XA0 3))
     (* -9 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3)
	(expt XA0 2) XA1)
     (* 27 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3) XA0
	(expt XA1 2))
     (* -27 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XA1 3))
     (*
      (+
       (*
	(+
	 (* 27 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XA0 2))
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) XA0 XA1)
       (* 81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XA1 2)))
      XA2)
     (*
      (+
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* -54 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB0 3) XA0)
       (* -81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA1))
      (expt XA2 2))
     (* 27 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XA2 3))
     (*
      (+
       (*
	(+
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* -3 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XA0 2))
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* -54 WA0 (expt WA1 3))
             (* -9 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB0 3) XA0 XA1)
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB0 3) (expt XA1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 54 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA1))
	XA2)
       (* -27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 2)))
      XA3)
     (*
      (+
       (*
	(+
	 (*
          (+ (* 27 WA0 (expt WA1 3))
             (* -27 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* 3 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) XA0)
       (*
	(+ (* -27 WA0 (expt WA1 3))
	   (* 18 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB0 3) XA1)
       (* 9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA2))
      (expt XA3 2))
     (* -1 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XA3 3)))
    (expt YB0 3))))

