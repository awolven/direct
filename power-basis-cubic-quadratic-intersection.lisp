(in-package :direct)

#|
;; using power basis instead of bezier, because bezier blows up combinatorally
cd ~/maxima/src/binary-sbcl
/usr/local/bin/sbcl --core maxima.core --dynamic-space-size 64000

(cl-user::run)

XA:Ax1*t^3+Bx1*t^2+Cx1*t+Dx1;
YA:Ay1*t^3+By1*t^2+Cy1*t+Dy1;
WA:Aw1*t^3+Bw1*t^2+Cw1*t+Dw1;
XB:Ax2*s^2+Bx2*s+Cx2;
YB:Ay2*s^2+By2*s+Cy2;
WB:Aw2*s^2+Bw2*s+Cw2;

IMPLIC:resultant(XA/WA-x,YA/WA-y,t);

INTER0:subst([x=XB/WB,y=YB/WB],''IMPLIC);

INTER1:ratsimp(INTER0,s)$

INTER2:denom(INTER1)*INTER1$

INTER3:collectterms(INTER2,[s])$

coeffs(polynomial, vars, degrees) :=
 block([coef:polynomial],
       for i from 1 thru length(degrees)
        do block([degree:degrees[i]],
	         coef:ratcoef(coef, vars[i], degree)),
coef);

ratsimp(coeffs(INTER3,[s],[0]));

to_lisp();
(setq *print-level* nil *print-length* nil)
(pprint $%)

ratsimp(coeffs(INTER3,[s],[1]));
ratsimp(coeffs(INTER3,[s],[2]));
ratsimp(coeffs(INTER3,[s],[3]));
ratsimp(coeffs(INTER3,[s],[4]));
ratsimp(coeffs(INTER3,[s],[5]));
ratsimp(coeffs(INTER3,[s],[6]));

|#



(defun intersection-rational-power-basis-cubic/quadratic-c0
    (Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1 Ax2 Bx2 Cx2 Ay2 By2 Cy2 Aw2 Bw2 Cw2)
  (declare (ignore Ax2 Bx2 Ay2 By2 Aw2 Bw2))
  (+
   (*
    (+
     (*
      (+
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bx1 By1)
	     (* Ax1 (expt By1 2)))
          (expt Cw2 2) Cx1)
	 (* (expt Ay1 2)
	    (expt Cw2 2) (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+ (* Ay1 Bx1 By1)
	     (* -1 Ax1 (expt By1 2)))
          Cw1 Cw2)
	 (*
          (+ (* Ay1 Bw1 By1)
	     (* -1 Aw1 (expt By1 2))
	     (* -2 (expt Ay1 2) Cw1))
          Cw2 Cx1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bw1 By1)
	     (* Aw1 (expt By1 2)))
          Cw1)
	 (* (expt Ay1 2)
	    (expt Cw1 2)))
	(expt Cx2 3)))
      Cy1)
     (*
      (+
       (*
	(+
	 (*
          (+ (* Ay1 (expt Bx1 2))
	     (* -1 Ax1 Bx1 By1))
          (expt Cw2 2))
	 (* -2 Ax1 Ay1 (expt Cw2 2) Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* -2 Ay1 Bw1 Bx1)
	     (*
	      (+ (* Ax1 Bw1)
		 (* Aw1 Bx1))
	      By1)
	     (* 2 Ax1 Ay1 Cw1))
          Cw2)
	 (* 2 Aw1 Ay1 Cw2 Cx1))
	(expt Cx2 2))
       (*
	(+ (* Ay1 (expt Bw1 2))
	   (* -1 Aw1 Bw1 By1)
	   (* -2 Aw1 Ay1 Cw1))
	(expt Cx2 3)))
      (expt Cy1 2))
     (*
      (+
       (* (expt Ax1 2)
	  (expt Cw2 2) Cx2)
       (* -2 Aw1 Ax1 Cw2 (expt Cx2 2))
       (* (expt Aw1 2)
	  (expt Cx2 3)))
      (expt Cy1 3))
     (*
      (+
       (*
	(+ (* Ay1 Bx1 By1)
	   (* -1 Ax1 (expt By1 2)))
	(expt Cw2 2) (expt Cx1 2))
       (* -1 (expt Ay1 2)
	  (expt Cw2 2) (expt Cx1 3))
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bx1 By1)
	     (* Ax1 (expt By1 2)))
          Cw1 Cw2 Cx1)
	 (*
          (+ (* -1 Ay1 Bw1 By1)
	     (* Aw1 (expt By1 2))
	     (* 2 (expt Ay1 2) Cw1))
          Cw2 (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+ (* Ay1 Bw1 By1)
	     (* -1 Aw1 (expt By1 2)))
          Cw1)
	 (* -1 (expt Ay1 2)
	    (expt Cw1 2)))
	Cx1 (expt Cx2 2))
       (*
	(+
	 (*
          (+ (* -1 Ay1 (expt Bx1 2))
	     (* Ax1 Bx1 By1))
          (expt Cw2 2) Cx1)
	 (* 2 Ax1 Ay1 (expt Cw2 2)
	    (expt Cx1 2))
	 (*
          (+
           (*
            (+
             (* -1 Ay1 (expt Bx1 2))
             (* Ax1 Bx1 By1))
            Cw1 Cw2)
           (*
            (+ (* 3 Ay1 Bw1 Bx1)
	       (* -3 Ax1 Bw1 By1))
            Cw2 Cx1)
           (* -4 Aw1 Ay1 Cw2
	      (expt Cx1 2)))
          Cx2)
	 (*
          (+
           (*
            (+ (* Ay1 Bw1 Bx1)
	       (*
		(+ (* Ax1 Bw1)
		   (* -2 Aw1 Bx1))
		By1))
            Cw1)
           (* -2 Ax1 Ay1 (expt Cw1 2))
           (*
            (+
             (* -2 Ay1 (expt Bw1 2))
             (* 2 Aw1 Bw1 By1)
             (* 4 Aw1 Ay1 Cw1))
            Cx1))
          (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (* -1 (expt Ax1 2)
	    (expt Cw2 2) Cx1)
	 (*
          (+
           (*
            (+ (* Ax1 Bw1 Bx1)
	       (* -1 Aw1 (expt Bx1 2))
	       (* -2 (expt Ax1 2) Cw1))
            Cw2)
           (* 4 Aw1 Ax1 Cw2 Cx1))
          Cx2)
	 (*
          (+ (* -1 Ax1 (expt Bw1 2))
	     (* Aw1 Bw1 Bx1)
	     (* 2 Aw1 Ax1 Cw1)
	     (* -3 (expt Aw1 2) Cx1))
          (expt Cx2 2)))
	(expt Cy1 2)))
      Cy2)
     (*
      (+
       (*
	(+ (* Ay1 (expt Bx1 2))
	   (* -1 Ax1 Bx1 By1))
	Cw1 Cw2 Cx1)
       (*
	(+ (* -1 Ay1 Bw1 Bx1)
	   (*
	    (+ (* 2 Ax1 Bw1)
	       (* -1 Aw1 Bx1))
	    By1)
	   (* -2 Ax1 Ay1 Cw1))
	Cw2 (expt Cx1 2))
       (* 2 Aw1 Ay1 Cw2 (expt Cx1 3))
       (*
	(+
	 (*
          (+
           (*
            (+ (* -1 Ay1 Bw1 Bx1)
	       (*
		(+ (* -1 Ax1 Bw1)
		   (* 2 Aw1 Bx1))
		By1))
            Cw1)
           (* 2 Ax1 Ay1 (expt Cw1 2)))
          Cx1)
	 (*
          (+ (* Ay1 (expt Bw1 2))
	     (* -1 Aw1 Bw1 By1)
	     (* -2 Aw1 Ay1 Cw1))
          (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+ (* -1 Ax1 Bw1 Bx1)
	     (* Aw1 (expt Bx1 2))
	     (* 2 (expt Ax1 2) Cw1))
          Cw2 Cx1)
	 (* -2 Aw1 Ax1 Cw2 (expt Cx1 2))
	 (*
          (+
           (*
            (+ (* -1 Ax1 Bw1 Bx1)
	       (* Aw1 (expt Bx1 2)))
            Cw1)
           (* (expt Ax1 2)
	      (expt Cw1 2))
           (*
            (+
             (* 2 Ax1 (expt Bw1 2))
             (* -2 Aw1 Bw1 Bx1)
             (* -4 Aw1 Ax1 Cw1))
            Cx1)
           (* 3 (expt Aw1 2)
	      (expt Cx1 2)))
          Cx2))
	Cy1))
      (expt Cy2 2))
     (*
      (+
       (*
	(+
	 (*
          (+ (* Ax1 Bw1 Bx1)
	     (* -1 Aw1 (expt Bx1 2)))
          Cw1)
	 (* -1 (expt Ax1 2)
	    (expt Cw1 2)))
	Cx1)
       (*
	(+ (* -1 Ax1 (expt Bw1 2))
	   (* Aw1 Bw1 Bx1)
	   (* 2 Aw1 Ax1 Cw1))
	(expt Cx1 2))
       (* -1 (expt Aw1 2)
	  (expt Cx1 3)))
      (expt Cy2 3)))
    Dw1)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -1 Ay1 Bx1 (expt By1 2))
	 (* Ax1 (expt By1 3)))
	Cw2)
       (* (expt Ay1 2) By1 Cw2 Cx1))
      (expt Cx2 2))
     (*
      (+ (* Ay1 Bw1 (expt By1 2))
	 (* -1 Aw1 (expt By1 3))
	 (* -1 (expt Ay1 2) By1 Cw1))
      (expt Cx2 3))
     (*
      (+
       (*
	(+ (* 2 (expt Ay1 2) Bx1)
	   (* -3 Ax1 Ay1 By1))
	Cw2 (expt Cx2 2))
       (*
	(+ (* -2 (expt Ay1 2) Bw1)
	   (* 3 Aw1 Ay1 By1))
	(expt Cx2 3)))
      Cy1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 2 Ay1 (expt Bx1 2) By1)
           (* -2 Ax1 Bx1 (expt By1 2)))
          Cw2)
	 (*
          (+ (* -3 (expt Ay1 2) Bx1)
	     (* Ax1 Ay1 By1))
          Cw2 Cx1))
	Cx2)
       (*
	(+ (* -2 Ay1 Bw1 Bx1 By1)
	   (*
	    (+ (* -1 Ax1 Bw1)
	       (* 3 Aw1 Bx1))
	    (expt By1 2))
	   (*
	    (+ (* (expt Ay1 2) Bx1)
	       (* 2 Ax1 Ay1 By1))
	    Cw1)
	   (*
	    (+ (* 2 (expt Ay1 2) Bw1)
	       (* -3 Aw1 Ay1 By1))
	    Cx1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+ (* -1 Ax1 Ay1 Bx1)
	     (* 3 (expt Ax1 2) By1))
          Cw2 Cx2)
	 (*
          (+ (* 4 Ax1 Ay1 Bw1)
	     (* -3 Aw1 Ay1 Bx1)
	     (* -3 Aw1 Ax1 By1))
          (expt Cx2 2)))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+ (* -1 Ay1 (expt Bx1 3))
	   (* Ax1 (expt Bx1 2) By1))
	Cw2)
       (*
	(+ (* 3 Ax1 Ay1 Bx1)
	   (* -2 (expt Ax1 2) By1))
	Cw2 Cx1)
       (*
	(+
	 (* Ay1 Bw1 (expt Bx1 2))
	 (*
          (+ (* 2 Ax1 Bw1 Bx1)
	     (* -3 Aw1 (expt Bx1 2)))
          By1)
	 (*
          (+ (* -2 Ax1 Ay1 Bx1)
	     (* -1 (expt Ax1 2) By1))
          Cw1)
	 (*
          (+ (* -4 Ax1 Ay1 Bw1)
	     (* 3 Aw1 Ay1 Bx1)
	     (* 3 Aw1 Ax1 By1))
          Cx1))
	Cx2)
       (*
	(+
	 (* -1 (expt Ax1 2) Bx1 Cw2)
	 (*
          (+ (* -2 (expt Ax1 2) Bw1)
	     (* 3 Aw1 Ax1 Bx1))
          Cx2))
	Cy1))
      (expt Cy2 2))
     (*
      (+
       (* -1 Ax1 Bw1 (expt Bx1 2))
       (* Aw1 (expt Bx1 3))
       (* (expt Ax1 2) Bx1 Cw1)
       (*
	(+ (* 2 (expt Ax1 2) Bw1)
	   (* -3 Aw1 Ax1 Bx1))
	Cx1))
      (expt Cy2 3)))
    (expt Dw1 2))
   (*
    (+
     (* (expt Ay1 3)
	(expt Cx2 3))
     (* -3 Ax1 (expt Ay1 2)
	(expt Cx2 2) Cy2)
     (* 3 (expt Ax1 2) Ay1 Cx2
	(expt Cy2 2))
     (* -1 (expt Ax1 3)
	(expt Cy2 3)))
    (expt Dw1 3))
   (*
    (+
     (*
      (+
       (*
	(+ (* Ay1 Bx1 By1)
	   (* -1 Ax1 (expt By1 2)))
	(expt Cw2 3) Cx1)
       (* -1 (expt Ay1 2)
	  (expt Cw2 3) (expt Cx1 2))
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bx1 By1)
	     (* Ax1 (expt By1 2)))
          Cw1 (expt Cw2 2))
	 (*
          (+ (* -1 Ay1 Bw1 By1)
	     (* Aw1 (expt By1 2))
	     (* 2 (expt Ay1 2) Cw1))
          (expt Cw2 2) Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* Ay1 Bw1 By1)
	     (* -1 Aw1 (expt By1 2)))
          Cw1)
	 (* -1 (expt Ay1 2)
	    (expt Cw1 2)))
	Cw2 (expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+ (* -1 Ay1 (expt Bx1 2))
	   (* Ax1 Bx1 By1))
	(expt Cw2 3))
       (* 2 Ax1 Ay1 (expt Cw2 3) Cx1)
       (*
	(+
	 (*
          (+ (* 2 Ay1 Bw1 Bx1)
	     (*
	      (+ (* -1 Ax1 Bw1)
		 (* -1 Aw1 Bx1))
	      By1)
	     (* -2 Ax1 Ay1 Cw1))
          (expt Cw2 2))
	 (* -2 Aw1 Ay1 (expt Cw2 2) Cx1))
	Cx2)
       (*
	(+ (* -1 Ay1 (expt Bw1 2))
	   (* Aw1 Bw1 By1)
	   (* 2 Aw1 Ay1 Cw1))
	Cw2 (expt Cx2 2)))
      (expt Cy1 2))
     (*
      (+
       (* -1 (expt Ax1 2)
	  (expt Cw2 3))
       (* 2 Aw1 Ax1 (expt Cw2 2) Cx2)
       (* -1 (expt Aw1 2) Cw2
	  (expt Cx2 2)))
      (expt Cy1 3))
     (*
      (+
       (*
	(+ (* -1 Ay1 Bx1 By1)
	   (* Ax1 (expt By1 2)))
	Cw1 (expt Cw2 2) Cx1)
       (* (expt Ay1 2) Cw1
	  (expt Cw2 2) (expt Cx1 2))
       (*
	(+
	 (*
          (+ (* Ay1 Bx1 By1)
	     (* -1 Ax1 (expt By1 2)))
          (expt Cw1 2) Cw2)
	 (*
          (+
           (*
            (+ (* Ay1 Bw1 By1)
	       (* -1 Aw1 (expt By1 2)))
            Cw1)
           (* -2 (expt Ay1 2)
	      (expt Cw1 2)))
          Cw2 Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bw1 By1)
	     (* Aw1 (expt By1 2)))
          (expt Cw1 2))
	 (* (expt Ay1 2)
	    (expt Cw1 3)))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+ (* 2 Ay1 (expt Bx1 2))
	     (* -2 Ax1 Bx1 By1))
          Cw1 (expt Cw2 2))
	 (*
          (+ (* -1 Ay1 Bw1 Bx1)
	     (*
	      (+ (* 2 Ax1 Bw1)
		 (* -1 Aw1 Bx1))
	      By1)
	     (* -4 Ax1 Ay1 Cw1))
          (expt Cw2 2) Cx1)
	 (* 2 Aw1 Ay1 (expt Cw2 2)
	    (expt Cx1 2))
	 (*
          (+
           (*
            (+
             (*
              (+ (* -3 Ay1 Bw1 Bx1)
		 (* 3 Aw1 Bx1 By1))
              Cw1)
             (* 4 Ax1 Ay1 (expt Cw1 2)))
            Cw2)
           (*
            (+ (* Ay1 (expt Bw1 2))
	       (* -1 Aw1 Bw1 By1))
            Cw2 Cx1))
          Cx2)
	 (*
          (+
           (*
            (+ (* Ay1 (expt Bw1 2))
	       (* -1 Aw1 Bw1 By1))
            Cw1)
           (* -2 Aw1 Ay1 (expt Cw1 2)))
          (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (*
          (+ (* -1 Ax1 Bw1 Bx1)
	     (* Aw1 (expt Bx1 2))
	     (* 3 (expt Ax1 2) Cw1))
          (expt Cw2 2))
	 (* -2 Aw1 Ax1 (expt Cw2 2) Cx1)
	 (*
          (+
           (*
            (+ (* Ax1 (expt Bw1 2))
	       (* -1 Aw1 Bw1 Bx1)
	       (* -4 Aw1 Ax1 Cw1))
            Cw2)
           (* 2 (expt Aw1 2) Cw2 Cx1))
          Cx2)
	 (* (expt Aw1 2) Cw1
	    (expt Cx2 2)))
	(expt Cy1 2)))
      Cy2)
     (*
      (+
       (*
	(+ (* -1 Ay1 (expt Bx1 2))
	   (* Ax1 Bx1 By1))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+ (* Ay1 Bw1 Bx1)
	     (*
	      (+ (* -2 Ax1 Bw1)
		 (* Aw1 Bx1))
	      By1))
          Cw1)
	 (* 2 Ax1 Ay1 (expt Cw1 2)))
	Cw2 Cx1)
       (* -2 Aw1 Ay1 Cw1 Cw2
	  (expt Cx1 2))
       (*
	(+
	 (*
          (+ (* Ay1 Bw1 Bx1)
	     (*
	      (+ (* Ax1 Bw1)
		 (* -2 Aw1 Bx1))
	      By1))
          (expt Cw1 2))
	 (* -2 Ax1 Ay1 (expt Cw1 3))
	 (*
          (+
           (*
            (+
             (* -1 Ay1 (expt Bw1 2))
             (* Aw1 Bw1 By1))
            Cw1)
           (* 2 Aw1 Ay1 (expt Cw1 2)))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2 Ax1 Bw1 Bx1)
	       (* -2 Aw1 (expt Bx1 2)))
            Cw1)
           (* -3 (expt Ax1 2)
	      (expt Cw1 2)))
          Cw2)
	 (*
          (+ (* -1 Ax1 (expt Bw1 2))
	     (* Aw1 Bw1 Bx1)
	     (* 4 Aw1 Ax1 Cw1))
          Cw2 Cx1)
	 (* -1 (expt Aw1 2) Cw2
	    (expt Cx1 2))
	 (*
          (+
           (*
            (+
             (* -1 Ax1 (expt Bw1 2))
             (* Aw1 Bw1 Bx1))
            Cw1)
           (* 2 Aw1 Ax1 (expt Cw1 2))
           (* -2 (expt Aw1 2) Cw1 Cx1))
          Cx2))
	Cy1))
      (expt Cy2 2))
     (*
      (+
       (*
	(+ (* -1 Ax1 Bw1 Bx1)
	   (* Aw1 (expt Bx1 2)))
	(expt Cw1 2))
       (* (expt Ax1 2)
	  (expt Cw1 3))
       (*
	(+
	 (*
          (+ (* Ax1 (expt Bw1 2))
	     (* -1 Aw1 Bw1 Bx1))
          Cw1)
	 (* -2 Aw1 Ax1 (expt Cw1 2)))
	Cx1)
       (* (expt Aw1 2) Cw1
	  (expt Cx1 2)))
      (expt Cy2 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 2 Ay1 Bx1 (expt By1 2))
           (* -2 Ax1 (expt By1 3)))
          (expt Cw2 2))
	 (* -2 (expt Ay1 2) By1
	    (expt Cw2 2) Cx1))
	Cx2)
       (*
	(+
	 (* -2 Ay1 Bw1 (expt By1 2))
	 (* 2 Aw1 (expt By1 3))
	 (* 2 (expt Ay1 2) By1 Cw1))
	Cw2 (expt Cx2 2))
       (*
	(+
	 (*
          (+ (* -4 (expt Ay1 2) Bx1)
	     (* 6 Ax1 Ay1 By1))
          (expt Cw2 2) Cx2)
	 (*
          (+ (* 4 (expt Ay1 2) Bw1)
	     (* -6 Aw1 Ay1 By1))
          Cw2 (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (*
          (+
           (* -2 Ay1 (expt Bx1 2) By1)
           (* 2 Ax1 Bx1 (expt By1 2)))
          (expt Cw2 2))
	 (*
          (+ (* 3 (expt Ay1 2) Bx1)
	     (* -1 Ax1 Ay1 By1))
          (expt Cw2 2) Cx1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 4 Ax1 Bw1)
		 (* -4 Aw1 Bx1))
              (expt By1 2))
             (*
              (+
               (* (expt Ay1 2) Bx1)
               (* -5 Ax1 Ay1 By1))
              Cw1))
            Cw2)
           (*
            (+
             (* -1 (expt Ay1 2) Bw1)
             (* 5 Aw1 Ay1 By1))
            Cw2 Cx1))
          Cx2)
	 (*
          (+
           (* 2 Ay1 (expt Bw1 2) By1)
           (* -2 Aw1 Bw1 (expt By1 2))
           (*
            (+
             (* -3 (expt Ay1 2) Bw1)
             (* Aw1 Ay1 By1))
            Cw1))
          (expt Cx2 2))
	 (*
          (+
           (*
            (+ (* Ax1 Ay1 Bx1)
	       (* -3 (expt Ax1 2) By1))
            (expt Cw2 2))
           (*
            (+ (* -7 Ax1 Ay1 Bw1)
	       (* 7 Aw1 Ay1 Bx1))
            Cw2 Cx2)
           (*
            (+ (* -1 Aw1 Ay1 Bw1)
	       (* 3 (expt Aw1 2) By1))
            (expt Cx2 2)))
          Cy1))
	Cy2)
       (*
	(+
	 (*
          (+
           (* 2 Ay1 Bw1 (expt Bx1 2))
           (*
            (+ (* -4 Ax1 Bw1 Bx1)
	       (* 2 Aw1 (expt Bx1 2)))
            By1)
           (*
            (+ (* -1 Ax1 Ay1 Bx1)
	       (* 3 (expt Ax1 2) By1))
            Cw1))
          Cw2)
	 (*
          (+ (* Ax1 Ay1 Bw1)
	     (* -6 Aw1 Ay1 Bx1)
	     (* Aw1 Ax1 By1))
          Cw2 Cx1)
	 (*
          (+
           (* -2 Ay1 (expt Bw1 2) Bx1)
           (*
            (+
             (* -2 Ax1 (expt Bw1 2))
             (* 4 Aw1 Bw1 Bx1))
            By1)
           (*
            (+ (* 6 Ax1 Ay1 Bw1)
	       (* -1 Aw1 Ay1 Bx1)
	       (* -1 Aw1 Ax1 By1))
            Cw1)
           (*
            (+ (* Aw1 Ay1 Bw1)
	       (* -3 (expt Aw1 2) By1))
            Cx1))
          Cx2)
	 (*
          (+
           (*
            (+
             (* 3 (expt Ax1 2) Bw1)
             (* -1 Aw1 Ax1 Bx1))
            Cw2)
           (*
            (+ (* Aw1 Ax1 Bw1)
	       (* -3 (expt Aw1 2) Bx1))
            Cx2))
          Cy1))
	(expt Cy2 2))
       (*
	(+
	 (* 2 Ax1 (expt Bw1 2) Bx1)
	 (* -2 Aw1 Bw1 (expt Bx1 2))
	 (*
          (+ (* -3 (expt Ax1 2) Bw1)
	     (* Aw1 Ax1 Bx1))
          Cw1)
	 (*
          (+ (* -1 Aw1 Ax1 Bw1)
	     (* 3 (expt Aw1 2) Bx1))
          Cx1))
	(expt Cy2 3)))
      Dw1)
     (*
      (+
       (* -3 (expt Ay1 3) Cw2
	  (expt Cx2 2))
       (*
	(+
	 (* 6 Ax1 (expt Ay1 2) Cw2 Cx2)
	 (* 3 Aw1 (expt Ay1 2)
	    (expt Cx2 2)))
	Cy2)
       (*
	(+
	 (* -3 (expt Ax1 2) Ay1 Cw2)
	 (* -6 Aw1 Ax1 Ay1 Cx2))
	(expt Cy2 2))
       (* 3 Aw1 (expt Ax1 2)
	  (expt Cy2 3)))
      (expt Dw1 2)))
    Dx1)
   (*
    (+
     (*
      (+
       (* -1 Ay1 Bx1 (expt By1 2))
       (* Ax1 (expt By1 3)))
      (expt Cw2 3))
     (* (expt Ay1 2) By1
	(expt Cw2 3) Cx1)
     (*
      (+ (* Ay1 Bw1 (expt By1 2))
	 (* -1 Aw1 (expt By1 3))
	 (* -1 (expt Ay1 2) By1 Cw1))
      (expt Cw2 2) Cx2)
     (*
      (+
       (*
	(+ (* 2 (expt Ay1 2) Bx1)
	   (* -3 Ax1 Ay1 By1))
	(expt Cw2 3))
       (*
	(+ (* -2 (expt Ay1 2) Bw1)
	   (* 3 Aw1 Ay1 By1))
	(expt Cw2 2) Cx2))
      Cy1)
     (*
      (+
       (*
	(+ (* 2 Ay1 Bw1 Bx1 By1)
	   (*
	    (+ (* -3 Ax1 Bw1)
	       (* Aw1 Bx1))
	    (expt By1 2))
	   (*
	    (+ (* -2 (expt Ay1 2) Bx1)
	       (* 3 Ax1 Ay1 By1))
	    Cw1))
	(expt Cw2 2))
       (*
	(+ (* -1 (expt Ay1 2) Bw1)
	   (* -2 Aw1 Ay1 By1))
	(expt Cw2 2) Cx1)
       (*
	(+
	 (* -2 Ay1 (expt Bw1 2) By1)
	 (* 2 Aw1 Bw1 (expt By1 2))
	 (*
          (+ (* 3 (expt Ay1 2) Bw1)
	     (* -1 Aw1 Ay1 By1))
          Cw1))
	Cw2 Cx2)
       (*
	(+
	 (*
          (+ (* 3 Ax1 Ay1 Bw1)
	     (* -4 Aw1 Ay1 Bx1)
	     (* 3 Aw1 Ax1 By1))
          (expt Cw2 2))
	 (*
          (+ (* Aw1 Ay1 Bw1)
	     (* -3 (expt Aw1 2) By1))
          Cw2 Cx2))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+
	 (* -1 Ay1 (expt Bw1 2) Bx1)
	 (*
          (+ (* 3 Ax1 (expt Bw1 2))
	     (* -2 Aw1 Bw1 Bx1))
          By1)
	 (*
          (+ (* -3 Ax1 Ay1 Bw1)
	     (* 4 Aw1 Ay1 Bx1)
	     (* -3 Aw1 Ax1 By1))
          Cw1))
	Cw2)
       (*
	(+ (* 2 Aw1 Ay1 Bw1)
	   (* (expt Aw1 2) By1))
	Cw2 Cx1)
       (*
	(+ (* Ay1 (expt Bw1 3))
	   (* -1 Aw1 (expt Bw1 2) By1)
	   (*
	    (+ (* -3 Aw1 Ay1 Bw1)
	       (* 2 (expt Aw1 2) By1))
	    Cw1))
	Cx2)
       (*
	(+
	 (*
          (+ (* -3 Aw1 Ax1 Bw1)
	     (* 2 (expt Aw1 2) Bx1))
          Cw2)
	 (* (expt Aw1 2) Bw1 Cx2))
	Cy1))
      (expt Cy2 2))
     (*
      (+ (* -1 Ax1 (expt Bw1 3))
	 (* Aw1 (expt Bw1 2) Bx1)
	 (*
	  (+ (* 3 Aw1 Ax1 Bw1)
	     (* -2 (expt Aw1 2) Bx1))
	  Cw1)
	 (* -1 (expt Aw1 2) Bw1 Cx1))
      (expt Cy2 3))
     (*
      (+
       (* 3 (expt Ay1 3)
	  (expt Cw2 2) Cx2)
       (*
	(+
	 (* -3 Ax1 (expt Ay1 2)
	    (expt Cw2 2))
	 (* -6 Aw1 (expt Ay1 2) Cw2 Cx2))
	Cy2)
       (*
	(+ (* 6 Aw1 Ax1 Ay1 Cw2)
	   (* 3 (expt Aw1 2) Ay1 Cx2))
	(expt Cy2 2))
       (* -3 (expt Aw1 2) Ax1
	  (expt Cy2 3)))
      Dw1))
    (expt Dx1 2))
   (*
    (+
     (* -1 (expt Ay1 3)
	(expt Cw2 3))
     (* 3 Aw1 (expt Ay1 2)
	(expt Cw2 2) Cy2)
     (* -3 (expt Aw1 2) Ay1 Cw2
	(expt Cy2 2))
     (* (expt Aw1 3)
	(expt Cy2 3)))
    (expt Dx1 3))
   (*
    (+
     (*
      (+ (* -1 Ay1 Bx1 By1)
	 (* Ax1 (expt By1 2)))
      (expt Cw2 3) (expt Cx1 2))
     (* (expt Ay1 2)
	(expt Cw2 3) (expt Cx1 3))
     (*
      (+
       (*
	(+ (* 2 Ay1 Bx1 By1)
	   (* -2 Ax1 (expt By1 2)))
	Cw1 (expt Cw2 2) Cx1)
       (*
	(+ (* Ay1 Bw1 By1)
	   (* -1 Aw1 (expt By1 2))
	   (* -3 (expt Ay1 2) Cw1))
	(expt Cw2 2) (expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+ (* -1 Ay1 Bx1 By1)
	   (* Ax1 (expt By1 2)))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+ (* -2 Ay1 Bw1 By1)
	     (* 2 Aw1 (expt By1 2)))
          Cw1)
	 (* 3 (expt Ay1 2)
	    (expt Cw1 2)))
	Cw2 Cx1))
      (expt Cx2 2))
     (*
      (+
       (*
	(+ (* Ay1 Bw1 By1)
	   (* -1 Aw1 (expt By1 2)))
	(expt Cw1 2))
       (* -1 (expt Ay1 2)
	  (expt Cw1 3)))
      (expt Cx2 3))
     (*
      (+
       (*
	(+ (* Ay1 (expt Bx1 2))
	   (* -1 Ax1 Bx1 By1))
	(expt Cw2 3) Cx1)
       (* -2 Ax1 Ay1 (expt Cw2 3)
	  (expt Cx1 2))
       (*
	(+
	 (*
          (+ (* -1 Ay1 (expt Bx1 2))
	     (* Ax1 Bx1 By1))
          Cw1 (expt Cw2 2))
	 (*
          (+ (* -2 Ay1 Bw1 Bx1)
	     (*
	      (+ (* Ax1 Bw1)
		 (* Aw1 Bx1))
	      By1)
	     (* 4 Ax1 Ay1 Cw1))
          (expt Cw2 2) Cx1)
	 (* 2 Aw1 Ay1 (expt Cw2 2)
	    (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2 Ay1 Bw1 Bx1)
	       (*
		(+ (* -1 Ax1 Bw1)
		   (* -1 Aw1 Bx1))
		By1))
            Cw1)
           (* -2 Ax1 Ay1 (expt Cw1 2)))
          Cw2)
	 (*
          (+ (* Ay1 (expt Bw1 2))
	     (* -1 Aw1 Bw1 By1)
	     (* -4 Aw1 Ay1 Cw1))
          Cw2 Cx1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+ (* -1 Ay1 (expt Bw1 2))
	     (* Aw1 Bw1 By1))
          Cw1)
	 (* 2 Aw1 Ay1 (expt Cw1 2)))
	(expt Cx2 3)))
      Cy1)
     (*
      (+
       (* (expt Ax1 2)
	  (expt Cw2 3) Cx1)
       (*
	(+
	 (* -1 (expt Ax1 2) Cw1
	    (expt Cw2 2))
	 (* -2 Aw1 Ax1 (expt Cw2 2) Cx1))
	Cx2)
       (*
	(+ (* 2 Aw1 Ax1 Cw1 Cw2)
	   (* (expt Aw1 2) Cw2 Cx1))
	(expt Cx2 2))
       (* -1 (expt Aw1 2) Cw1
	  (expt Cx2 3)))
      (expt Cy1 2))
     (*
      (+
       (*
	(+ (* -1 Ay1 (expt Bx1 2))
	   (* Ax1 Bx1 By1))
	Cw1 (expt Cw2 2) Cx1)
       (*
	(+ (* Ay1 Bw1 Bx1)
	   (*
	    (+ (* -2 Ax1 Bw1)
	       (* Aw1 Bx1))
	    By1)
	   (* 2 Ax1 Ay1 Cw1))
	(expt Cw2 2) (expt Cx1 2))
       (* -2 Aw1 Ay1 (expt Cw2 2)
	  (expt Cx1 3))
       (*
	(+
	 (*
          (+ (* Ay1 (expt Bx1 2))
	     (* -1 Ax1 Bx1 By1))
          (expt Cw1 2) Cw2)
	 (*
          (+
           (*
            (+ (* 3 Ax1 Bw1)
	       (* -3 Aw1 Bx1))
            By1 Cw1)
           (* -4 Ax1 Ay1 (expt Cw1 2)))
          Cw2 Cx1)
	 (*
          (+ (* -1 Ay1 (expt Bw1 2))
	     (* Aw1 Bw1 By1)
	     (* 4 Aw1 Ay1 Cw1))
          Cw2 (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bw1 Bx1)
	     (*
	      (+ (* -1 Ax1 Bw1)
		 (* 2 Aw1 Bx1))
	      By1))
          (expt Cw1 2))
	 (* 2 Ax1 Ay1 (expt Cw1 3))
	 (*
          (+
           (*
            (+ (* Ay1 (expt Bw1 2))
	       (* -1 Aw1 Bw1 By1))
            Cw1)
           (* -2 Aw1 Ay1 (expt Cw1 2)))
          Cx1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+ (* Ax1 Bw1 Bx1)
	     (* -1 Aw1 (expt Bx1 2))
	     (* -2 (expt Ax1 2) Cw1))
          (expt Cw2 2) Cx1)
	 (* 2 Aw1 Ax1 (expt Cw2 2)
	    (expt Cx1 2))
	 (*
          (+
           (*
            (+
             (*
              (+ (* -1 Ax1 Bw1 Bx1)
		 (* Aw1 (expt Bx1 2)))
              Cw1)
             (* 2 (expt Ax1 2)
		(expt Cw1 2)))
            Cw2)
           (*
            (+
             (* -1 Ax1 (expt Bw1 2))
             (* Aw1 Bw1 Bx1))
            Cw2 Cx1)
           (* -2 (expt Aw1 2) Cw2
	      (expt Cx1 2)))
          Cx2)
	 (*
          (+
           (*
            (+ (* Ax1 (expt Bw1 2))
	       (* -1 Aw1 Bw1 Bx1))
            Cw1)
           (* -2 Aw1 Ax1 (expt Cw1 2))
           (* 2 (expt Aw1 2) Cw1 Cx1))
          (expt Cx2 2)))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+
	 (*
          (+ (* -1 Ax1 Bw1 Bx1)
	     (* Aw1 (expt Bx1 2)))
          Cw1)
	 (* (expt Ax1 2)
	    (expt Cw1 2)))
	Cw2 Cx1)
       (*
	(+ (* Ax1 (expt Bw1 2))
	   (* -1 Aw1 Bw1 Bx1)
	   (* -2 Aw1 Ax1 Cw1))
	Cw2 (expt Cx1 2))
       (* (expt Aw1 2) Cw2
	  (expt Cx1 3))
       (*
	(+
	 (*
          (+ (* Ax1 Bw1 Bx1)
	     (* -1 Aw1 (expt Bx1 2)))
          (expt Cw1 2))
	 (* -1 (expt Ax1 2)
	    (expt Cw1 3))
	 (*
          (+
           (*
            (+
             (* -1 Ax1 (expt Bw1 2))
             (* Aw1 Bw1 Bx1))
            Cw1)
           (* 2 Aw1 Ax1 (expt Cw1 2)))
          Cx1)
	 (* -1 (expt Aw1 2) Cw1
	    (expt Cx1 2)))
	Cx2))
      (expt Cy2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -2 Ay1 (expt Bx1 2) By1)
           (* 2 Ax1 Bx1 (expt By1 2)))
          (expt Cw2 2))
	 (*
          (+ (* 3 (expt Ay1 2) Bx1)
	     (* -1 Ax1 Ay1 By1))
          (expt Cw2 2) Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* 4 Ay1 Bw1 Bx1 By1)
	     (*
	      (+ (* -2 Ax1 Bw1)
		 (* -2 Aw1 Bx1))
	      (expt By1 2))
	     (*
	      (+
	       (* -3 (expt Ay1 2) Bx1)
	       (* Ax1 Ay1 By1))
	      Cw1))
          Cw2)
	 (*
          (+ (* -3 (expt Ay1 2) Bw1)
	     (* Aw1 Ay1 By1))
          Cw2 Cx1))
	(expt Cx2 2))
       (*
	(+
	 (* -2 Ay1 (expt Bw1 2) By1)
	 (* 2 Aw1 Bw1 (expt By1 2))
	 (*
          (+ (* 3 (expt Ay1 2) Bw1)
	     (* -1 Aw1 Ay1 By1))
          Cw1))
	(expt Cx2 3))
       (*
	(+
	 (*
          (+ (* Ax1 Ay1 Bx1)
	     (* -3 (expt Ax1 2) By1))
          (expt Cw2 2) Cx2)
	 (*
          (+ (* -1 Ax1 Ay1 Bw1)
	     (* -1 Aw1 Ay1 Bx1)
	     (* 6 Aw1 Ax1 By1))
          Cw2 (expt Cx2 2))
	 (*
          (+ (* Aw1 Ay1 Bw1)
	     (* -3 (expt Aw1 2) By1))
          (expt Cx2 3)))
	Cy1)
       (*
	(+
	 (*
          (+ (* 2 Ay1 (expt Bx1 3))
	     (* -2 Ax1 (expt Bx1 2) By1))
          (expt Cw2 2))
	 (*
          (+ (* -6 Ax1 Ay1 Bx1)
	     (* 4 (expt Ax1 2) By1))
          (expt Cw2 2) Cx1)
	 (*
          (+
           (*
            (+
             (* -4 Ay1 Bw1 (expt Bx1 2))
             (* 4 Aw1 (expt Bx1 2) By1)
             (*
              (+ (* 5 Ax1 Ay1 Bx1)
		 (* -1 (expt Ax1 2) By1))
              Cw1))
            Cw2)
           (*
            (+ (* 7 Ax1 Ay1 Bw1)
	       (* -7 Aw1 Ax1 By1))
            Cw2 Cx1))
          Cx2)
	 (*
          (+
           (* 2 Ay1 (expt Bw1 2) Bx1)
           (*
            (+
             (* 2 Ax1 (expt Bw1 2))
             (* -4 Aw1 Bw1 Bx1))
            By1)
           (*
            (+ (* -6 Ax1 Ay1 Bw1)
	       (* Aw1 Ay1 Bx1)
	       (* Aw1 Ax1 By1))
            Cw1)
           (*
            (+ (* -1 Aw1 Ay1 Bw1)
	       (* 3 (expt Aw1 2) By1))
            Cx1))
          (expt Cx2 2))
	 (*
          (+
           (* 2 (expt Ax1 2) Bx1
	      (expt Cw2 2))
           (*
            (+ (* (expt Ax1 2) Bw1)
	       (* -5 Aw1 Ax1 Bx1))
            Cw2 Cx2)
           (*
            (+ (* -1 Aw1 Ax1 Bw1)
	       (* 3 (expt Aw1 2) Bx1))
            (expt Cx2 2)))
          Cy1))
	Cy2)
       (*
	(+
	 (*
          (+
           (* 2 Ax1 Bw1 (expt Bx1 2))
           (* -2 Aw1 (expt Bx1 3))
           (* -2 (expt Ax1 2) Bx1 Cw1))
          Cw2)
	 (*
          (+ (* -4 (expt Ax1 2) Bw1)
	     (* 6 Aw1 Ax1 Bx1))
          Cw2 Cx1)
	 (*
          (+
           (* -2 Ax1 (expt Bw1 2) Bx1)
           (* 2 Aw1 Bw1 (expt Bx1 2))
           (*
            (+
             (* 3 (expt Ax1 2) Bw1)
             (* -1 Aw1 Ax1 Bx1))
            Cw1)
           (*
            (+ (* Aw1 Ax1 Bw1)
	       (* -3 (expt Aw1 2) Bx1))
            Cx1))
          Cx2))
	(expt Cy2 2)))
      Dw1)
     (*
      (+
       (* 3 Ax1 (expt Ay1 2) Cw2
	  (expt Cx2 2))
       (* -3 Aw1 (expt Ay1 2)
	  (expt Cx2 3))
       (*
	(+
	 (* -6 (expt Ax1 2) Ay1 Cw2 Cx2)
	 (* 6 Aw1 Ax1 Ay1 (expt Cx2 2)))
	Cy2)
       (*
	(+ (* 3 (expt Ax1 3) Cw2)
	   (* -3 Aw1 (expt Ax1 2) Cx2))
	(expt Cy2 2)))
      (expt Dw1 2))
     (*
      (+
       (*
	(+
	 (* 2 Ay1 (expt Bx1 2) By1)
	 (* -2 Ax1 Bx1 (expt By1 2)))
	(expt Cw2 3))
       (*
	(+ (* -3 (expt Ay1 2) Bx1)
	   (* Ax1 Ay1 By1))
	(expt Cw2 3) Cx1)
       (*
	(+
	 (*
          (+ (* -4 Ay1 Bw1 Bx1 By1)
	     (*
	      (+ (* 2 Ax1 Bw1)
		 (* 2 Aw1 Bx1))
	      (expt By1 2))
	     (*
	      (+
	       (* 3 (expt Ay1 2) Bx1)
	       (* -1 Ax1 Ay1 By1))
	      Cw1))
          (expt Cw2 2))
	 (*
          (+ (* 3 (expt Ay1 2) Bw1)
	     (* -1 Aw1 Ay1 By1))
          (expt Cw2 2) Cx1))
	Cx2)
       (*
	(+
	 (* 2 Ay1 (expt Bw1 2) By1)
	 (* -2 Aw1 Bw1 (expt By1 2))
	 (*
          (+ (* -3 (expt Ay1 2) Bw1)
	     (* Aw1 Ay1 By1))
          Cw1))
	Cw2 (expt Cx2 2))
       (*
	(+
	 (*
          (+ (* -1 Ax1 Ay1 Bx1)
	     (* 3 (expt Ax1 2) By1))
          (expt Cw2 3))
	 (*
          (+ (* Ax1 Ay1 Bw1)
	     (* Aw1 Ay1 Bx1)
	     (* -6 Aw1 Ax1 By1))
          (expt Cw2 2) Cx2)
	 (*
          (+ (* -1 Aw1 Ay1 Bw1)
	     (* 3 (expt Aw1 2) By1))
          Cw2 (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (*
          (+
           (* -2 Ay1 Bw1 (expt Bx1 2))
           (*
            (+ (* 4 Ax1 Bw1 Bx1)
	       (* -2 Aw1 (expt Bx1 2)))
            By1)
           (*
            (+ (* Ax1 Ay1 Bx1)
	       (* -3 (expt Ax1 2) By1))
            Cw1))
          (expt Cw2 2))
	 (*
          (+ (* -1 Ax1 Ay1 Bw1)
	     (* 6 Aw1 Ay1 Bx1)
	     (* -1 Aw1 Ax1 By1))
          (expt Cw2 2) Cx1)
	 (*
          (+
           (*
            (+
             (* 4 Ay1 (expt Bw1 2) Bx1)
             (* -4 Ax1 (expt Bw1 2) By1)
             (*
              (+ (* -7 Aw1 Ay1 Bx1)
		 (* 7 Aw1 Ax1 By1))
              Cw1))
            Cw2)
           (*
            (+ (* -5 Aw1 Ay1 Bw1)
	       (* (expt Aw1 2) By1))
            Cw2 Cx1))
          Cx2)
	 (*
          (+ (* -2 Ay1 (expt Bw1 3))
	     (* 2 Aw1 (expt Bw1 2) By1)
	     (*
	      (+ (* 6 Aw1 Ay1 Bw1)
		 (* -4 (expt Aw1 2) By1))
	      Cw1))
          (expt Cx2 2))
	 (*
          (+
           (*
            (+
             (* -3 (expt Ax1 2) Bw1)
             (* Aw1 Ax1 Bx1))
            (expt Cw2 2))
           (*
            (+ (* 5 Aw1 Ax1 Bw1)
	       (* -1 (expt Aw1 2) Bx1))
            Cw2 Cx2)
           (* -2 (expt Aw1 2) Bw1
	      (expt Cx2 2)))
          Cy1))
	Cy2)
       (*
	(+
	 (*
          (+
           (* -2 Ax1 (expt Bw1 2) Bx1)
           (* 2 Aw1 Bw1 (expt Bx1 2))
           (*
            (+
             (* 3 (expt Ax1 2) Bw1)
             (* -1 Aw1 Ax1 Bx1))
            Cw1))
          Cw2)
	 (*
          (+ (* Aw1 Ax1 Bw1)
	     (* -3 (expt Aw1 2) Bx1))
          Cw2 Cx1)
	 (*
          (+ (* 2 Ax1 (expt Bw1 3))
	     (* -2 Aw1 (expt Bw1 2) Bx1)
	     (*
	      (+ (* -6 Aw1 Ax1 Bw1)
		 (* 4 (expt Aw1 2) Bx1))
	      Cw1)
	     (* 2 (expt Aw1 2) Bw1 Cx1))
          Cx2))
	(expt Cy2 2))
       (*
	(+
	 (* -6 Ax1 (expt Ay1 2)
	    (expt Cw2 2) Cx2)
	 (* 6 Aw1 (expt Ay1 2) Cw2
	    (expt Cx2 2))
	 (*
          (+
           (* 6 (expt Ax1 2) Ay1
	      (expt Cw2 2))
           (* -6 (expt Aw1 2) Ay1
	      (expt Cx2 2)))
          Cy2)
	 (*
          (+
           (* -6 Aw1 (expt Ax1 2) Cw2)
           (* 6 (expt Aw1 2) Ax1 Cx2))
          (expt Cy2 2)))
	Dw1))
      Dx1)
     (*
      (+
       (* 3 Ax1 (expt Ay1 2)
	  (expt Cw2 3))
       (* -3 Aw1 (expt Ay1 2)
	  (expt Cw2 2) Cx2)
       (*
	(+
	 (* -6 Aw1 Ax1 Ay1 (expt Cw2 2))
	 (* 6 (expt Aw1 2) Ay1 Cw2 Cx2))
	Cy2)
       (*
	(+
	 (* 3 (expt Aw1 2) Ax1 Cw2)
	 (* -3 (expt Aw1 3) Cx2))
	(expt Cy2 2)))
      (expt Dx1 2)))
    Dy1)
   (*
    (+
     (*
      (+ (* -1 Ay1 (expt Bx1 3))
	 (* Ax1 (expt Bx1 2) By1))
      (expt Cw2 3))
     (*
      (+ (* 3 Ax1 Ay1 Bx1)
	 (* -2 (expt Ax1 2) By1))
      (expt Cw2 3) Cx1)
     (*
      (+
       (*
	(+
	 (* 3 Ay1 Bw1 (expt Bx1 2))
	 (*
          (+ (* -2 Ax1 Bw1 Bx1)
	     (* -1 Aw1 (expt Bx1 2)))
          By1)
	 (*
          (+ (* -3 Ax1 Ay1 Bx1)
	     (* 2 (expt Ax1 2) By1))
          Cw1))
	(expt Cw2 2))
       (*
	(+ (* -3 Ax1 Ay1 Bw1)
	   (* -3 Aw1 Ay1 Bx1)
	   (* 4 Aw1 Ax1 By1))
	(expt Cw2 2) Cx1))
      Cx2)
     (*
      (+
       (*
	(+
	 (* -3 Ay1 (expt Bw1 2) Bx1)
	 (*
          (+ (* Ax1 (expt Bw1 2))
	     (* 2 Aw1 Bw1 Bx1))
          By1)
	 (*
          (+ (* 3 Ax1 Ay1 Bw1)
	     (* 3 Aw1 Ay1 Bx1)
	     (* -4 Aw1 Ax1 By1))
          Cw1))
	Cw2)
       (*
	(+ (* 3 Aw1 Ay1 Bw1)
	   (* -2 (expt Aw1 2) By1))
	Cw2 Cx1))
      (expt Cx2 2))
     (*
      (+ (* Ay1 (expt Bw1 3))
	 (* -1 Aw1 (expt Bw1 2) By1)
	 (*
	  (+ (* -3 Aw1 Ay1 Bw1)
	     (* 2 (expt Aw1 2) By1))
	  Cw1))
      (expt Cx2 3))
     (*
      (+
       (* -1 (expt Ax1 2) Bx1
	  (expt Cw2 3))
       (*
	(+ (* (expt Ax1 2) Bw1)
	   (* 2 Aw1 Ax1 Bx1))
	(expt Cw2 2) Cx2)
       (*
	(+ (* -2 Aw1 Ax1 Bw1)
	   (* -1 (expt Aw1 2) Bx1))
	Cw2 (expt Cx2 2))
       (* (expt Aw1 2) Bw1
	  (expt Cx2 3)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -1 Ax1 Bw1 (expt Bx1 2))
	 (* Aw1 (expt Bx1 3))
	 (* (expt Ax1 2) Bx1 Cw1))
	(expt Cw2 2))
       (*
	(+ (* 2 (expt Ax1 2) Bw1)
	   (* -3 Aw1 Ax1 Bx1))
	(expt Cw2 2) Cx1)
       (*
	(+
	 (*
          (+
           (* 2 Ax1 (expt Bw1 2) Bx1)
           (* -2 Aw1 Bw1 (expt Bx1 2))
           (*
            (+
             (* -3 (expt Ax1 2) Bw1)
             (* Aw1 Ax1 Bx1))
            Cw1))
          Cw2)
	 (*
          (+ (* -1 Aw1 Ax1 Bw1)
	     (* 3 (expt Aw1 2) Bx1))
          Cw2 Cx1))
	Cx2)
       (*
	(+ (* -1 Ax1 (expt Bw1 3))
	   (* Aw1 (expt Bw1 2) Bx1)
	   (*
	    (+ (* 3 Aw1 Ax1 Bw1)
	       (* -2 (expt Aw1 2) Bx1))
	    Cw1)
	   (* -1 (expt Aw1 2) Bw1 Cx1))
	(expt Cx2 2)))
      Cy2)
     (*
      (+
       (* 3 (expt Ax1 2) Ay1
	  (expt Cw2 2) Cx2)
       (* -6 Aw1 Ax1 Ay1 Cw2
	  (expt Cx2 2))
       (* 3 (expt Aw1 2) Ay1
	  (expt Cx2 3))
       (*
	(+
	 (* -3 (expt Ax1 3)
	    (expt Cw2 2))
	 (* 6 Aw1 (expt Ax1 2) Cw2 Cx2)
	 (* -3 (expt Aw1 2) Ax1
	    (expt Cx2 2)))
	Cy2))
      Dw1)
     (*
      (+
       (* -3 (expt Ax1 2) Ay1
	  (expt Cw2 3))
       (* 6 Aw1 Ax1 Ay1 (expt Cw2 2)
	  Cx2)
       (* -3 (expt Aw1 2) Ay1 Cw2
	  (expt Cx2 2))
       (*
	(+
	 (* 3 Aw1 (expt Ax1 2)
	    (expt Cw2 2))
	 (* -6 (expt Aw1 2) Ax1 Cw2 Cx2)
	 (* 3 (expt Aw1 3)
	    (expt Cx2 2)))
	Cy2))
      Dx1))
    (expt Dy1 2))
   (*
    (+
     (* (expt Ax1 3)
	(expt Cw2 3))
     (* -3 Aw1 (expt Ax1 2)
	(expt Cw2 2) Cx2)
     (* 3 (expt Aw1 2) Ax1 Cw2
	(expt Cx2 2))
     (* -1 (expt Aw1 3)
	(expt Cx2 3)))
    (expt Dy1 3))))

(defun intersection-rational-power-basis-cubic/quadratic-c1
    (Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1 Ax2 Bx2 Cx2 Ay2 By2 Cy2 Aw2 Bw2 Cw2)
  (declare (ignore Ax2 Ay2 Aw2))
  (+
   (*
    (+
     (*
      (+ (* Ay1 Bx1 By1)
	 (* -1 Ax1 (expt By1 2)))
      By2 (expt Cw2 2) (expt Cx1 2))
     (* -1 (expt Ay1 2) By2
	(expt Cw2 2) (expt Cx1 3))
     (*
      (+
       (*
	(+ (* -1 Ay1 Bx1 By1)
	   (* Ax1 (expt By1 2)))
	By2 Cw1 Cw2 Cx1)
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bw1 By1)
             (* Aw1 (expt By1 2)))
          By2)
	 (* 2 (expt Ay1 2) By2 Cw1))
	Cw2 (expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+ (* Ay1 Bw1 By1)
	   (* -1 Aw1 (expt By1 2)))
	By2 Cw1)
       (* -1 (expt Ay1 2) By2
	  (expt Cw1 2)))
      Cx1 (expt Cx2 2))
     (*
      (+
       (*
	(+ (* -1 Ay1 Bx1 Bx2 By1)
	   (* Ax1 Bx2 (expt By1 2))
	   (*
            (+ (* -1 Ay1 (expt Bx1 2))
               (* Ax1 Bx1 By1))
            By2))
	(expt Cw2 2) Cx1)
       (*
	(+ (* (expt Ay1 2) Bx2)
	   (* 2 Ax1 Ay1 By2))
	(expt Cw2 2) (expt Cx1 2))
       (*
	(+
	 (*
          (+ (* 2 Ay1 Bx1 Bx2 By1)
             (* -2 Ax1 Bx2 (expt By1 2))
             (*
              (+
               (* -1 Ay1 (expt Bx1 2))
               (* Ax1 Bx1 By1))
              By2))
          Cw1 Cw2)
	 (*
          (+
           (*
            (+ (* -2 Ay1 Bw2 Bx1)
               (* 2 Ay1 Bw1 Bx2))
            By1)
           (*
            (+ (* 2 Ax1 Bw2)
               (* -2 Aw1 Bx2))
            (expt By1 2))
           (*
            (+ (* 3 Ay1 Bw1 Bx1)
               (* -3 Ax1 Bw1 By1))
            By2)
           (* -4 (expt Ay1 2) Bx2 Cw1))
          Cw2 Cx1)
	 (*
          (+ (* 2 (expt Ay1 2) Bw2)
             (* -4 Aw1 Ay1 By2))
          Cw2 (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* Ay1 Bw2 Bx1)
               (* -3 Ay1 Bw1 Bx2))
            By1)
           (*
            (+ (* -1 Ax1 Bw2)
               (* 3 Aw1 Bx2))
            (expt By1 2))
           (*
            (+ (* Ay1 Bw1 Bx1)
               (*
		(+ (* Ax1 Bw1)
		   (* -2 Aw1 Bx1))
		By1))
            By2))
          Cw1)
	 (*
          (+ (* 3 (expt Ay1 2) Bx2)
             (* -2 Ax1 Ay1 By2))
          (expt Cw1 2))
	 (*
          (+ (* Ay1 Bw1 Bw2 By1)
             (* -1 Aw1 Bw2 (expt By1 2))
             (*
              (+
               (* -2 Ay1 (expt Bw1 2))
               (* 2 Aw1 Bw1 By1))
              By2)
             (*
              (+
               (* -2 (expt Ay1 2) Bw2)
               (* 4 Aw1 Ay1 By2))
              Cw1))
          Cx1))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* Ay1 (expt Bx1 2) Bx2)
	 (* -1 Ax1 Bx1 Bx2 By1))
	(expt Cw2 2))
       (*
	(+ (* -2 Ax1 Ay1 Bx2)
	   (* -1 (expt Ax1 2) By2))
	(expt Cw2 2) Cx1)
       (*
	(+
	 (*
          (+
           (* 2 Ay1 Bw2 (expt Bx1 2))
           (* -4 Ay1 Bw1 Bx1 Bx2)
           (*
            (+ (* -2 Ax1 Bw2 Bx1)
               (*
		(+ (* 2 Ax1 Bw1)
		   (* 2 Aw1 Bx1))
		Bx2))
            By1)
           (*
            (+ (* Ax1 Bw1 Bx1)
               (* -1 Aw1 (expt Bx1 2)))
            By2)
           (*
            (+ (* 4 Ax1 Ay1 Bx2)
               (* -2 (expt Ax1 2) By2))
            Cw1))
          Cw2)
	 (*
          (+ (* -4 Ax1 Ay1 Bw2)
             (* 4 Aw1 Ay1 Bx2)
             (* 4 Aw1 Ax1 By2))
          Cw2 Cx1))
	Cx2)
       (*
	(+ (* -2 Ay1 Bw1 Bw2 Bx1)
	   (* 3 Ay1 (expt Bw1 2) Bx2)
	   (*
            (+ (* Ax1 Bw1 Bw2)
               (* Aw1 Bw2 Bx1)
               (* -3 Aw1 Bw1 Bx2))
            By1)
	   (*
            (+ (* -1 Ax1 (expt Bw1 2))
               (* Aw1 Bw1 Bx1))
            By2)
	   (*
            (+ (* 2 Ax1 Ay1 Bw2)
               (* -6 Aw1 Ay1 Bx2)
               (* 2 Aw1 Ax1 By2))
            Cw1)
	   (*
            (+ (* 2 Aw1 Ay1 Bw2)
               (* -3 (expt Aw1 2) By2))
            Cx1))
	(expt Cx2 2)))
      (expt Cy1 2))
     (*
      (+
       (* (expt Ax1 2) Bx2
	  (expt Cw2 2))
       (*
	(+ (* 2 (expt Ax1 2) Bw2)
	   (* -4 Aw1 Ax1 Bx2))
	Cw2 Cx2)
       (*
	(+ (* -2 Aw1 Ax1 Bw2)
	   (* 3 (expt Aw1 2) Bx2))
	(expt Cx2 2)))
      (expt Cy1 3))
     (*
      (+
       (*
	(+ (* -1 Ay1 Bx1 Bx2 By1)
	   (* Ax1 Bx2 (expt By1 2))
	   (*
            (+ (* 2 Ay1 (expt Bx1 2))
               (* -2 Ax1 Bx1 By1))
            By2))
	Cw1 Cw2 Cx1)
       (*
	(+
	 (*
          (+ (* 2 Ay1 Bw2 Bx1)
             (* -1 Ay1 Bw1 Bx2))
          By1)
	 (*
          (+ (* -2 Ax1 Bw2)
             (* Aw1 Bx2))
          (expt By1 2))
	 (*
          (+ (* -2 Ay1 Bw1 Bx1)
             (*
              (+ (* 4 Ax1 Bw1)
		 (* -2 Aw1 Bx1))
              By1))
          By2)
	 (*
          (+ (* 2 (expt Ay1 2) Bx2)
             (* -4 Ax1 Ay1 By2))
          Cw1))
	Cw2 (expt Cx1 2))
       (*
	(+ (* -2 (expt Ay1 2) Bw2)
	   (* 4 Aw1 Ay1 By2))
	Cw2 (expt Cx1 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (*
              (+ (* -1 Ay1 Bw2 Bx1)
		 (* 2 Ay1 Bw1 Bx2))
              By1)
             (*
              (+ (* Ax1 Bw2)
		 (* -2 Aw1 Bx2))
              (expt By1 2))
             (*
              (+ (* -2 Ay1 Bw1 Bx1)
		 (*
		  (+ (* -2 Ax1 Bw1)
		     (* 4 Aw1 Bx1))
		  By1))
              By2))
            Cw1)
           (*
            (+
             (* -2 (expt Ay1 2) Bx2)
             (* 4 Ax1 Ay1 By2))
            (expt Cw1 2)))
          Cx1)
	 (*
          (+ (* -1 Ay1 Bw1 Bw2 By1)
             (* Aw1 Bw2 (expt By1 2))
             (*
              (+
               (* 2 Ay1 (expt Bw1 2))
               (* -2 Aw1 Bw1 By1))
              By2)
             (*
              (+
               (* 2 (expt Ay1 2) Bw2)
               (* -4 Aw1 Ay1 By2))
              Cw1))
          (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (* -1 Ay1 (expt Bx1 2) Bx2)
           (* Ax1 Bx1 Bx2 By1))
          Cw1 Cw2)
	 (*
          (+
           (* -2 Ay1 Bw2 (expt Bx1 2))
           (* 3 Ay1 Bw1 Bx1 Bx2)
           (*
            (+ (* 2 Ax1 Bw2 Bx1)
               (* -3 Ax1 Bw1 Bx2))
            By1)
           (*
            (+ (* -2 Ax1 Bw1 Bx1)
               (* 2 Aw1 (expt Bx1 2)))
            By2)
           (* 4 (expt Ax1 2) By2 Cw1))
          Cw2 Cx1)
	 (*
          (+ (* 4 Ax1 Ay1 Bw2)
             (* -4 Aw1 Ay1 Bx2)
             (* -4 Aw1 Ax1 By2))
          Cw2 (expt Cx1 2))
	 (*
          (+
           (*
            (+
             (* -1 Ay1 Bw2 (expt Bx1 2))
             (* 2 Ay1 Bw1 Bx1 Bx2)
             (*
              (+ (* Ax1 Bw2 Bx1)
		 (*
		  (+ (* 2 Ax1 Bw1)
		     (* -4 Aw1 Bx1))
		  Bx2))
              By1)
             (*
              (+ (* -2 Ax1 Bw1 Bx1)
		 (* 2 Aw1 (expt Bx1 2)))
              By2))
            Cw1)
           (*
            (+ (* -4 Ax1 Ay1 Bx2)
               (* 2 (expt Ax1 2) By2))
            (expt Cw1 2))
           (*
            (+ (* 3 Ay1 Bw1 Bw2 Bx1)
               (* -4 Ay1 (expt Bw1 2) Bx2)
               (*
		(+ (* -3 Ax1 Bw1 Bw2)
		   (* 4 Aw1 Bw1 Bx2))
		By1)
               (*
		(+
		 (* 4 Ax1 (expt Bw1 2))
		 (* -4 Aw1 Bw1 Bx1))
		By2)
               (*
		(+ (* 8 Aw1 Ay1 Bx2)
		   (* -8 Aw1 Ax1 By2))
		Cw1))
            Cx1)
           (*
            (+ (* -4 Aw1 Ay1 Bw2)
               (* 6 (expt Aw1 2) By2))
            (expt Cx1 2)))
          Cx2))
	Cy1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* Ax1 Bw1 Bx1)
               (* -1 Aw1 (expt Bx1 2)))
            Bx2)
           (* -2 (expt Ax1 2) Bx2 Cw1))
          Cw2)
	 (*
          (+ (* -2 (expt Ax1 2) Bw2)
             (* 4 Aw1 Ax1 Bx2))
          Cw2 Cx1)
	 (*
          (+ (* Ax1 Bw1 Bw2 Bx1)
             (* -1 Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* -2 Ax1 (expt Bw1 2))
               (* 2 Aw1 Bw1 Bx1))
              Bx2)
             (*
              (+
               (* -2 (expt Ax1 2) Bw2)
               (* 4 Aw1 Ax1 Bx2))
              Cw1)
             (*
              (+ (* 4 Aw1 Ax1 Bw2)
		 (* -6 (expt Aw1 2) Bx2))
              Cx1))
          Cx2))
	(expt Cy1 2)))
      Cy2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* Ay1 Bw2 (expt Bx1 2))
           (* -1 Ay1 Bw1 Bx1 Bx2)
           (*
            (+ (* -1 Ax1 Bw2 Bx1)
               (*
		(+ (* -1 Ax1 Bw1)
		   (* 2 Aw1 Bx1))
		Bx2))
            By1)
           (*
            (+ (* 3 Ax1 Bw1 Bx1)
               (* -3 Aw1 (expt Bx1 2)))
            By2))
          Cw1)
	 (*
          (+ (* 2 Ax1 Ay1 Bx2)
             (* -3 (expt Ax1 2) By2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+ (* -1 Ay1 Bw1 Bw2 Bx1)
	   (* Ay1 (expt Bw1 2) Bx2)
	   (*
            (+ (* 2 Ax1 Bw1 Bw2)
               (* -1 Aw1 Bw2 Bx1)
               (* -1 Aw1 Bw1 Bx2))
            By1)
	   (*
            (+ (* -3 Ax1 (expt Bw1 2))
               (* 3 Aw1 Bw1 Bx1))
            By2)
	   (*
            (+ (* -2 Ax1 Ay1 Bw2)
               (* -2 Aw1 Ay1 Bx2)
               (* 6 Aw1 Ax1 By2))
            Cw1))
	(expt Cx1 2))
       (*
	(+ (* 2 Aw1 Ay1 Bw2)
	   (* -3 (expt Aw1 2) By2))
	(expt Cx1 3))
       (*
	(+
	 (*
          (+ (* -1 Ax1 Bw1 Bx1)
             (* Aw1 (expt Bx1 2)))
          Bx2 Cw1)
	 (* (expt Ax1 2) Bx2
            (expt Cw1 2))
	 (*
          (+ (* -1 Ax1 Bw1 Bw2 Bx1)
             (* Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* 2 Ax1 (expt Bw1 2))
               (* -2 Aw1 Bw1 Bx1))
              Bx2)
             (*
              (+
               (* 2 (expt Ax1 2) Bw2)
               (* -4 Aw1 Ax1 Bx2))
              Cw1))
          Cx1)
	 (*
          (+ (* -2 Aw1 Ax1 Bw2)
             (* 3 (expt Aw1 2) Bx2))
          (expt Cx1 2)))
	Cy1))
      (expt Cy2 2)))
    Dw1)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -2 Ay1 Bx1 Bx2 (expt By1 2))
	 (* 2 Ax1 Bx2 (expt By1 3))
	 (*
          (+
           (* 2 Ay1 (expt Bx1 2) By1)
           (* -2 Ax1 Bx1 (expt By1 2)))
          By2))
	Cw2)
       (*
	(+
	 (* 2 (expt Ay1 2) Bx2 By1)
	 (*
          (+ (* -3 (expt Ay1 2) Bx1)
             (* Ax1 Ay1 By1))
          By2))
	Cw2 Cx1))
      Cx2)
     (*
      (+
       (*
	(+ (* -1 Ay1 Bw2 Bx1)
	   (* 3 Ay1 Bw1 Bx2))
	(expt By1 2))
       (*
	(+ (* Ax1 Bw2)
	   (* -3 Aw1 Bx2))
	(expt By1 3))
       (*
	(+ (* -2 Ay1 Bw1 Bx1 By1)
	   (*
            (+ (* -1 Ax1 Bw1)
               (* 3 Aw1 Bx1))
            (expt By1 2)))
	By2)
       (*
	(+
	 (* -3 (expt Ay1 2) Bx2 By1)
	 (*
          (+ (* (expt Ay1 2) Bx1)
             (* 2 Ax1 Ay1 By1))
          By2))
	Cw1)
       (*
	(+
	 (* (expt Ay1 2) Bw2 By1)
	 (*
          (+ (* 2 (expt Ay1 2) Bw1)
             (* -3 Aw1 Ay1 By1))
          By2))
	Cx1))
      (expt Cx2 2))
     (*
      (+
       (*
	(+
	 (* 4 (expt Ay1 2) Bx1 Bx2)
	 (* -6 Ax1 Ay1 Bx2 By1)
	 (*
          (+ (* -1 Ax1 Ay1 Bx1)
             (* 3 (expt Ax1 2) By1))
          By2))
	Cw2 Cx2)
       (*
	(+
	 (* 2 (expt Ay1 2) Bw2 Bx1)
	 (* -6 (expt Ay1 2) Bw1 Bx2)
	 (*
          (+ (* -3 Ax1 Ay1 Bw2)
             (* 9 Aw1 Ay1 Bx2))
          By1)
	 (*
          (+ (* 4 Ax1 Ay1 Bw1)
             (* -3 Aw1 Ay1 Bx1)
             (* -3 Aw1 Ax1 By1))
          By2))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* 2 Ay1 (expt Bx1 2) Bx2 By1)
	 (* -2 Ax1 Bx1 Bx2 (expt By1 2))
	 (*
          (+ (* -2 Ay1 (expt Bx1 3))
             (* 2 Ax1 (expt Bx1 2) By1))
          By2))
	Cw2)
       (*
	(+
	 (* -3 (expt Ay1 2) Bx1 Bx2)
	 (* Ax1 Ay1 Bx2 By1)
	 (*
          (+ (* 6 Ax1 Ay1 Bx1)
             (* -4 (expt Ax1 2) By1))
          By2))
	Cw2 Cx1)
       (*
	(+
	 (*
          (+
           (* 2 Ay1 Bw2 (expt Bx1 2))
           (* -4 Ay1 Bw1 Bx1 Bx2))
          By1)
	 (*
          (+ (* -2 Ax1 Bw2 Bx1)
             (*
              (+ (* -2 Ax1 Bw1)
		 (* 6 Aw1 Bx1))
              Bx2))
          (expt By1 2))
	 (*
          (+
           (* 2 Ay1 Bw1 (expt Bx1 2))
           (*
            (+ (* 4 Ax1 Bw1 Bx1)
               (* -6 Aw1 (expt Bx1 2)))
            By1))
          By2)
	 (*
          (+
           (* 2 (expt Ay1 2) Bx1 Bx2)
           (* 4 Ax1 Ay1 Bx2 By1)
           (*
            (+ (* -4 Ax1 Ay1 Bx1)
               (* -2 (expt Ax1 2) By1))
            By2))
          Cw1)
	 (*
          (+
           (* -3 (expt Ay1 2) Bw2 Bx1)
           (* 4 (expt Ay1 2) Bw1 Bx2)
           (*
            (+ (* Ax1 Ay1 Bw2)
               (* -6 Aw1 Ay1 Bx2))
            By1)
           (*
            (+ (* -8 Ax1 Ay1 Bw1)
               (* 6 Aw1 Ay1 Bx1)
               (* 6 Aw1 Ax1 By1))
            By2))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* -1 Ax1 Ay1 Bx1 Bx2)
             (* 3 (expt Ax1 2) Bx2 By1)
             (* -2 (expt Ax1 2) Bx1 By2))
          Cw2)
	 (*
          (+ (* -1 Ax1 Ay1 Bw2 Bx1)
             (*
              (+ (* 8 Ax1 Ay1 Bw1)
		 (* -6 Aw1 Ay1 Bx1))
              Bx2)
             (*
              (+
               (* 3 (expt Ax1 2) Bw2)
               (* -6 Aw1 Ax1 Bx2))
              By1)
             (*
              (+
               (* -4 (expt Ax1 2) Bw1)
               (* 6 Aw1 Ax1 Bx1))
              By2))
          Cx2))
	Cy1))
      Cy2)
     (*
      (+
       (* -1 Ay1 Bw2 (expt Bx1 3))
       (* Ay1 Bw1 (expt Bx1 2) Bx2)
       (*
	(+
	 (* Ax1 Bw2 (expt Bx1 2))
	 (*
          (+ (* 2 Ax1 Bw1 Bx1)
             (* -3 Aw1 (expt Bx1 2)))
          Bx2))
	By1)
       (*
	(+
	 (* -3 Ax1 Bw1 (expt Bx1 2))
	 (* 3 Aw1 (expt Bx1 3)))
	By2)
       (*
	(+ (* -2 Ax1 Ay1 Bx1 Bx2)
	   (* -1 (expt Ax1 2) Bx2 By1)
	   (* 3 (expt Ax1 2) Bx1 By2))
	Cw1)
       (*
	(+ (* 3 Ax1 Ay1 Bw2 Bx1)
	   (*
            (+ (* -4 Ax1 Ay1 Bw1)
               (* 3 Aw1 Ay1 Bx1))
            Bx2)
	   (*
            (+ (* -2 (expt Ax1 2) Bw2)
               (* 3 Aw1 Ax1 Bx2))
            By1)
	   (*
            (+ (* 6 (expt Ax1 2) Bw1)
               (* -9 Aw1 Ax1 Bx1))
            By2))
	Cx1)
       (*
	(+
	 (* -1 (expt Ax1 2) Bw2 Bx1)
	 (*
          (+ (* -2 (expt Ax1 2) Bw1)
             (* 3 Aw1 Ax1 Bx1))
          Bx2))
	Cy1))
      (expt Cy2 2)))
    (expt Dw1 2))
   (*
    (+
     (*
      (+ (* 3 (expt Ay1 3) Bx2)
	 (* -3 Ax1 (expt Ay1 2) By2))
      (expt Cx2 2))
     (*
      (+
       (* -6 Ax1 (expt Ay1 2) Bx2)
       (* 6 (expt Ax1 2) Ay1 By2))
      Cx2 Cy2)
     (*
      (+
       (* 3 (expt Ax1 2) Ay1 Bx2)
       (* -3 (expt Ax1 3) By2))
      (expt Cy2 2)))
    (expt Dw1 3))
   (*
    (+
     (*
      (+ (* -1 Ay1 Bx1 By1)
	 (* Ax1 (expt By1 2)))
      By2 Cw1 (expt Cw2 2) Cx1)
     (* (expt Ay1 2) By2 Cw1
	(expt Cw2 2) (expt Cx1 2))
     (*
      (+
       (*
	(+ (* Ay1 Bx1 By1)
	   (* -1 Ax1 (expt By1 2)))
	By2 (expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+ (* Ay1 Bw1 By1)
             (* -1 Aw1 (expt By1 2)))
          By2 Cw1)
	 (* -2 (expt Ay1 2) By2
            (expt Cw1 2)))
	Cw2 Cx1))
      Cx2)
     (*
      (+
       (*
	(+ (* -1 Ay1 Bw1 By1)
	   (* Aw1 (expt By1 2)))
	By2 (expt Cw1 2))
       (* (expt Ay1 2) By2
	  (expt Cw1 3)))
      (expt Cx2 2))
     (*
      (+
       (*
	(+ (* -1 Ay1 Bx1 Bx2 By1)
	   (* Ax1 Bx2 (expt By1 2))
	   (*
            (+ (* 2 Ay1 (expt Bx1 2))
               (* -2 Ax1 Bx1 By1))
            By2))
	Cw1 (expt Cw2 2))
       (*
	(+
	 (*
          (+ (* 3 Ay1 Bw2 Bx1)
             (* -1 Ay1 Bw1 Bx2))
          By1)
	 (*
          (+ (* -3 Ax1 Bw2)
             (* Aw1 Bx2))
          (expt By1 2))
	 (*
          (+ (* -1 Ay1 Bw1 Bx1)
             (*
              (+ (* 2 Ax1 Bw1)
		 (* -1 Aw1 Bx1))
              By1))
          By2)
	 (*
          (+ (* 2 (expt Ay1 2) Bx2)
             (* -4 Ax1 Ay1 By2))
          Cw1))
	(expt Cw2 2) Cx1)
       (*
	(+ (* -3 (expt Ay1 2) Bw2)
	   (* 2 Aw1 Ay1 By2))
	(expt Cw2 2) (expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (*
              (+ (* -2 Ay1 Bw2 Bx1)
		 (* 2 Ay1 Bw1 Bx2))
              By1)
             (*
              (+ (* 2 Ax1 Bw2)
		 (* -2 Aw1 Bx2))
              (expt By1 2))
             (*
              (+ (* -3 Ay1 Bw1 Bx1)
		 (* 3 Aw1 Bx1 By1))
              By2))
            Cw1)
           (*
            (+
             (* -2 (expt Ay1 2) Bx2)
             (* 4 Ax1 Ay1 By2))
            (expt Cw1 2)))
          Cw2)
	 (*
          (+ (* -2 Ay1 Bw1 Bw2 By1)
             (* 2 Aw1 Bw2 (expt By1 2))
             (*
              (+ (* Ay1 (expt Bw1 2))
		 (* -1 Aw1 Bw1 By1))
              By2)
             (* 4 (expt Ay1 2) Bw2 Cw1))
          Cw2 Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* Ay1 Bw1 Bw2 By1)
             (* -1 Aw1 Bw2 (expt By1 2))
             (*
              (+ (* Ay1 (expt Bw1 2))
		 (* -1 Aw1 Bw1 By1))
              By2))
          Cw1)
	 (*
          (+ (* -1 (expt Ay1 2) Bw2)
             (* -2 Aw1 Ay1 By2))
          (expt Cw1 2)))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -3 Ay1 Bw2 (expt Bx1 2))
	 (* 2 Ay1 Bw1 Bx1 Bx2)
	 (*
          (+ (* 3 Ax1 Bw2 Bx1)
             (*
              (+ (* -1 Ax1 Bw1)
		 (* -1 Aw1 Bx1))
              Bx2))
          By1)
	 (*
          (+ (* -1 Ax1 Bw1 Bx1)
             (* Aw1 (expt Bx1 2)))
          By2)
	 (*
          (+ (* -2 Ax1 Ay1 Bx2)
             (* 3 (expt Ax1 2) By2))
          Cw1))
	(expt Cw2 2))
       (*
	(+ (* 6 Ax1 Ay1 Bw2)
	   (* -2 Aw1 Ay1 Bx2)
	   (* -2 Aw1 Ax1 By2))
	(expt Cw2 2) Cx1)
       (*
	(+
	 (*
          (+ (* 4 Ay1 Bw1 Bw2 Bx1)
             (* -2 Ay1 (expt Bw1 2) Bx2)
             (*
              (+ (* -2 Ax1 Bw1 Bw2)
		 (* -2 Aw1 Bw2 Bx1)
		 (* 2 Aw1 Bw1 Bx2))
              By1)
             (*
              (+ (* Ax1 (expt Bw1 2))
		 (* -1 Aw1 Bw1 Bx1))
              By2)
             (*
              (+ (* -4 Ax1 Ay1 Bw2)
		 (* 4 Aw1 Ay1 Bx2)
		 (* -4 Aw1 Ax1 By2))
              Cw1))
          Cw2)
	 (*
          (+ (* -4 Aw1 Ay1 Bw2)
             (* 2 (expt Aw1 2) By2))
          Cw2 Cx1))
	Cx2)
       (*
	(+
	 (* -1 Ay1 (expt Bw1 2) Bw2)
	 (* Aw1 Bw1 Bw2 By1)
	 (*
          (+ (* 2 Aw1 Ay1 Bw2)
             (* (expt Aw1 2) By2))
          Cw1))
	(expt Cx2 2)))
      (expt Cy1 2))
     (*
      (+
       (*
	(+ (* -3 (expt Ax1 2) Bw2)
	   (* 2 Aw1 Ax1 Bx2))
	(expt Cw2 2))
       (*
	(+ (* 4 Aw1 Ax1 Bw2)
	   (* -2 (expt Aw1 2) Bx2))
	Cw2 Cx2)
       (* -1 (expt Aw1 2) Bw2
	  (expt Cx2 2)))
      (expt Cy1 3))
     (*
      (+
       (*
	(+ (* Ay1 Bx1 Bx2 By1)
	   (* -1 Ax1 Bx2 (expt By1 2))
	   (*
            (+ (* -2 Ay1 (expt Bx1 2))
               (* 2 Ax1 Bx1 By1))
            By2))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -2 Ay1 Bw2 Bx1)
               (* Ay1 Bw1 Bx2))
            By1)
           (*
            (+ (* 2 Ax1 Bw2)
               (* -1 Aw1 Bx2))
            (expt By1 2))
           (*
            (+ (* 2 Ay1 Bw1 Bx1)
               (*
		(+ (* -4 Ax1 Bw1)
		   (* 2 Aw1 Bx1))
		By1))
            By2))
          Cw1)
	 (*
          (+ (* -2 (expt Ay1 2) Bx2)
             (* 4 Ax1 Ay1 By2))
          (expt Cw1 2)))
	Cw2 Cx1)
       (*
	(+ (* 2 (expt Ay1 2) Bw2)
	   (* -4 Aw1 Ay1 By2))
	Cw1 Cw2 (expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* Ay1 Bw2 Bx1)
               (* -2 Ay1 Bw1 Bx2))
            By1)
           (*
            (+ (* -1 Ax1 Bw2)
               (* 2 Aw1 Bx2))
            (expt By1 2))
           (*
            (+ (* 2 Ay1 Bw1 Bx1)
               (*
		(+ (* 2 Ax1 Bw1)
		   (* -4 Aw1 Bx1))
		By1))
            By2))
          (expt Cw1 2))
	 (*
          (+ (* 2 (expt Ay1 2) Bx2)
             (* -4 Ax1 Ay1 By2))
          (expt Cw1 3))
	 (*
          (+
           (*
            (+ (* Ay1 Bw1 Bw2 By1)
               (* -1 Aw1 Bw2 (expt By1 2))
               (*
		(+
		 (* -2 Ay1 (expt Bw1 2))
		 (* 2 Aw1 Bw1 By1))
		By2))
            Cw1)
           (*
            (+
             (* -2 (expt Ay1 2) Bw2)
             (* 4 Aw1 Ay1 By2))
            (expt Cw1 2)))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 4 Ay1 Bw2 (expt Bx1 2))
             (* -3 Ay1 Bw1 Bx1 Bx2)
             (*
              (+ (* -4 Ax1 Bw2 Bx1)
		 (* 3 Aw1 Bx1 Bx2))
              By1)
             (*
              (+ (* 4 Ax1 Bw1 Bx1)
		 (* -4 Aw1 (expt Bx1 2)))
              By2))
            Cw1)
           (*
            (+ (* 4 Ax1 Ay1 Bx2)
               (* -6 (expt Ax1 2) By2))
            (expt Cw1 2)))
          Cw2)
	 (*
          (+ (* -2 Ay1 Bw1 Bw2 Bx1)
             (* Ay1 (expt Bw1 2) Bx2)
             (*
              (+ (* 4 Ax1 Bw1 Bw2)
		 (* -2 Aw1 Bw2 Bx1)
		 (* -1 Aw1 Bw1 Bx2))
              By1)
             (*
              (+
               (* -2 Ax1 (expt Bw1 2))
               (* 2 Aw1 Bw1 Bx1))
              By2)
             (*
              (+ (* -8 Ax1 Ay1 Bw2)
		 (* 8 Aw1 Ax1 By2))
              Cw1))
          Cw2 Cx1)
	 (*
          (+ (* 4 Aw1 Ay1 Bw2)
             (* -2 (expt Aw1 2) By2))
          Cw2 (expt Cx1 2))
	 (*
          (+
           (*
            (+ (* -3 Ay1 Bw1 Bw2 Bx1)
               (* 2 Ay1 (expt Bw1 2) Bx2)
               (*
		(+ (* 3 Aw1 Bw2 Bx1)
		   (* -2 Aw1 Bw1 Bx2))
		By1)
               (*
		(+
		 (* -2 Ax1 (expt Bw1 2))
		 (* 2 Aw1 Bw1 Bx1))
		By2))
            Cw1)
           (*
            (+ (* 4 Ax1 Ay1 Bw2)
               (* -4 Aw1 Ay1 Bx2)
               (* 4 Aw1 Ax1 By2))
            (expt Cw1 2))
           (*
            (+
             (* Ay1 (expt Bw1 2) Bw2)
             (* -1 Aw1 Bw1 Bw2 By1)
             (* -4 (expt Aw1 2) By2 Cw1))
            Cx1))
          Cx2))
	Cy1)
       (*
	(+
	 (*
          (+ (* -2 Ax1 Bw1 Bw2 Bx1)
             (* 2 Aw1 Bw2 (expt Bx1 2))
             (*
              (+ (* Ax1 (expt Bw1 2))
		 (* -1 Aw1 Bw1 Bx1))
              Bx2)
             (*
              (+
               (* 6 (expt Ax1 2) Bw2)
               (* -4 Aw1 Ax1 Bx2))
              Cw1))
          Cw2)
	 (*
          (+ (* -4 Aw1 Ax1 Bw2)
             (* 2 (expt Aw1 2) Bx2))
          Cw2 Cx1)
	 (*
          (+
           (* Ax1 (expt Bw1 2) Bw2)
           (* -1 Aw1 Bw1 Bw2 Bx1)
           (*
            (+ (* -4 Aw1 Ax1 Bw2)
               (* 2 (expt Aw1 2) Bx2))
            Cw1)
           (* 2 (expt Aw1 2) Bw2 Cx1))
          Cx2))
	(expt Cy1 2)))
      Cy2)
     (*
      (+
       (*
	(+
	 (* -1 Ay1 Bw2 (expt Bx1 2))
	 (* Ay1 Bw1 Bx1 Bx2)
	 (*
          (+ (* Ax1 Bw2 Bx1)
             (*
              (+ (* Ax1 Bw1)
		 (* -2 Aw1 Bx1))
              Bx2))
          By1)
	 (*
          (+ (* -3 Ax1 Bw1 Bx1)
             (* 3 Aw1 (expt Bx1 2)))
          By2))
	(expt Cw1 2))
       (*
	(+ (* -2 Ax1 Ay1 Bx2)
	   (* 3 (expt Ax1 2) By2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+ (* Ay1 Bw1 Bw2 Bx1)
             (* -1 Ay1 (expt Bw1 2) Bx2)
             (*
              (+ (* -2 Ax1 Bw1 Bw2)
		 (* Aw1 Bw2 Bx1)
		 (* Aw1 Bw1 Bx2))
              By1)
             (*
              (+
               (* 3 Ax1 (expt Bw1 2))
               (* -3 Aw1 Bw1 Bx1))
              By2))
          Cw1)
	 (*
          (+ (* 2 Ax1 Ay1 Bw2)
             (* 2 Aw1 Ay1 Bx2)
             (* -6 Aw1 Ax1 By2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+ (* -2 Aw1 Ay1 Bw2)
	   (* 3 (expt Aw1 2) By2))
	Cw1 (expt Cx1 2))
       (*
	(+
	 (*
          (+ (* 2 Ax1 Bw1 Bw2 Bx1)
             (* -2 Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* -1 Ax1 (expt Bw1 2))
               (* Aw1 Bw1 Bx1))
              Bx2))
          Cw1)
	 (*
          (+ (* -3 (expt Ax1 2) Bw2)
             (* 2 Aw1 Ax1 Bx2))
          (expt Cw1 2))
	 (*
          (+
           (* -1 Ax1 (expt Bw1 2) Bw2)
           (* Aw1 Bw1 Bw2 Bx1)
           (*
            (+ (* 4 Aw1 Ax1 Bw2)
               (* -2 (expt Aw1 2) Bx2))
            Cw1))
          Cx1)
	 (* -1 (expt Aw1 2) Bw2
            (expt Cx1 2)))
	Cy1))
      (expt Cy2 2))
     (*
      (+
       (*
	(+
	 (* 2 Ay1 Bx1 Bx2 (expt By1 2))
	 (* -2 Ax1 Bx2 (expt By1 3))
	 (*
          (+
           (* -2 Ay1 (expt Bx1 2) By1)
           (* 2 Ax1 Bx1 (expt By1 2)))
          By2))
	(expt Cw2 2))
       (*
	(+
	 (* -2 (expt Ay1 2) Bx2 By1)
	 (*
          (+ (* 3 (expt Ay1 2) Bx1)
             (* -1 Ax1 Ay1 By1))
          By2))
	(expt Cw2 2) Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 4 Ay1 Bw2 Bx1)
               (* -4 Ay1 Bw1 Bx2))
            (expt By1 2))
           (*
            (+ (* -4 Ax1 Bw2)
               (* 4 Aw1 Bx2))
            (expt By1 3))
           (*
            (+ (* 4 Ax1 Bw1)
               (* -4 Aw1 Bx1))
            (expt By1 2) By2)
           (*
            (+
             (* 4 (expt Ay1 2) Bx2 By1)
             (*
              (+
               (* (expt Ay1 2) Bx1)
               (* -5 Ax1 Ay1 By1))
              By2))
            Cw1))
          Cw2)
	 (*
          (+
           (* -4 (expt Ay1 2) Bw2 By1)
           (*
            (+
             (* -1 (expt Ay1 2) Bw1)
             (* 5 Aw1 Ay1 By1))
            By2))
          Cw2 Cx1))
	Cx2)
       (*
	(+
	 (* -2 Ay1 Bw1 Bw2 (expt By1 2))
	 (* 2 Aw1 Bw2 (expt By1 3))
	 (*
          (+
           (* 2 Ay1 (expt Bw1 2) By1)
           (* -2 Aw1 Bw1 (expt By1 2)))
          By2)
	 (*
          (+
           (* 2 (expt Ay1 2) Bw2 By1)
           (*
            (+
             (* -3 (expt Ay1 2) Bw1)
             (* Aw1 Ay1 By1))
            By2))
          Cw1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+
           (* -4 (expt Ay1 2) Bx1 Bx2)
           (* 6 Ax1 Ay1 Bx2 By1)
           (*
            (+ (* Ax1 Ay1 Bx1)
               (* -3 (expt Ax1 2) By1))
            By2))
          (expt Cw2 2))
	 (*
          (+
           (* -8 (expt Ay1 2) Bw2 Bx1)
           (* 8 (expt Ay1 2) Bw1 Bx2)
           (*
            (+ (* 12 Ax1 Ay1 Bw2)
               (* -12 Aw1 Ay1 Bx2))
            By1)
           (*
            (+ (* -7 Ax1 Ay1 Bw1)
               (* 7 Aw1 Ay1 Bx1))
            By2))
          Cw2 Cx2)
	 (*
          (+
           (* 4 (expt Ay1 2) Bw1 Bw2)
           (* -6 Aw1 Ay1 Bw2 By1)
           (*
            (+ (* -1 Aw1 Ay1 Bw1)
               (* 3 (expt Aw1 2) By1))
            By2))
          (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (*
          (+
           (* -4 Ay1 Bw2 (expt Bx1 2)
              By1)
           (*
            (+ (* 4 Ax1 Bw2 Bx1)
               (*
		(+ (* 4 Ax1 Bw1)
		   (* -4 Aw1 Bx1))
		Bx2))
            (expt By1 2))
           (*
            (+
             (* 4 Ay1 Bw1 (expt Bx1 2))
             (*
              (+ (* -8 Ax1 Bw1 Bx1)
		 (* 4 Aw1 (expt Bx1 2)))
              By1))
            By2)
           (*
            (+
             (* (expt Ay1 2) Bx1 Bx2)
             (* -5 Ax1 Ay1 Bx2 By1)
             (*
              (+ (* -2 Ax1 Ay1 Bx1)
		 (* 6 (expt Ax1 2) By1))
              By2))
            Cw1))
          Cw2)
	 (*
          (+
           (* 6 (expt Ay1 2) Bw2 Bx1)
           (* -1 (expt Ay1 2) Bw1 Bx2)
           (*
            (+ (* -2 Ax1 Ay1 Bw2)
               (* 5 Aw1 Ay1 Bx2))
            By1)
           (*
            (+ (* 2 Ax1 Ay1 Bw1)
               (* -12 Aw1 Ay1 Bx1)
               (* 2 Aw1 Ax1 By1))
            By2))
          Cw2 Cx1)
	 (*
          (+
           (* 4 Ay1 (expt Bw1 2) Bx2 By1)
           (*
            (+ (* 4 Ax1 Bw1 Bw2)
               (* -4 Aw1 Bw2 Bx1)
               (* -4 Aw1 Bw1 Bx2))
            (expt By1 2))
           (*
            (+
             (* -4 Ay1 (expt Bw1 2) Bx1)
             (*
              (+
               (* -4 Ax1 (expt Bw1 2))
               (* 8 Aw1 Bw1 Bx1))
              By1))
            By2)
           (*
            (+
             (* (expt Ay1 2) Bw2 Bx1)
             (* -6 (expt Ay1 2) Bw1 Bx2)
             (*
              (+ (* -5 Ax1 Ay1 Bw2)
		 (* 2 Aw1 Ay1 Bx2))
              By1)
             (*
              (+ (* 12 Ax1 Ay1 Bw1)
		 (* -2 Aw1 Ay1 Bx1)
		 (* -2 Aw1 Ax1 By1))
              By2))
            Cw1)
           (*
            (+
             (* -1 (expt Ay1 2) Bw1 Bw2)
             (* 5 Aw1 Ay1 Bw2 By1)
             (*
              (+ (* 2 Aw1 Ay1 Bw1)
		 (* -6 (expt Aw1 2) By1))
              By2))
            Cx1))
          Cx2)
	 (*
          (+
           (*
            (+ (* 2 Ax1 Ay1 Bw2 Bx1)
               (*
		(+ (* -7 Ax1 Ay1 Bw1)
		   (* 7 Aw1 Ay1 Bx1))
		Bx2)
               (* -6 (expt Ax1 2) Bw2 By1)
               (*
		(+
		 (* 6 (expt Ax1 2) Bw1)
		 (* -2 Aw1 Ax1 Bx1))
		By2))
            Cw2)
           (*
            (+ (* -7 Ax1 Ay1 Bw1 Bw2)
               (* 7 Aw1 Ay1 Bw2 Bx1)
               (* -2 Aw1 Ay1 Bw1 Bx2)
               (* 6 (expt Aw1 2) Bx2 By1)
               (*
		(+ (* 2 Aw1 Ax1 Bw1)
		   (* -6 (expt Aw1 2) Bx1))
		By2))
            Cx2))
          Cy1))
	Cy2)
       (*
	(+
	 (* 2 Ay1 Bw1 Bw2 (expt Bx1 2))
	 (* -2 Ay1 (expt Bw1 2) Bx1 Bx2)
	 (*
          (+ (* -4 Ax1 Bw1 Bw2 Bx1)
             (* 2 Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* -2 Ax1 (expt Bw1 2))
               (* 4 Aw1 Bw1 Bx1))
              Bx2))
          By1)
	 (*
          (+
           (* 6 Ax1 (expt Bw1 2) Bx1)
           (* -6 Aw1 Bw1 (expt Bx1 2)))
          By2)
	 (*
          (+ (* -1 Ax1 Ay1 Bw2 Bx1)
             (*
              (+ (* 6 Ax1 Ay1 Bw1)
		 (* -1 Aw1 Ay1 Bx1))
              Bx2)
             (*
              (+
               (* 3 (expt Ax1 2) Bw2)
               (* -1 Aw1 Ax1 Bx2))
              By1)
             (*
              (+
               (* -9 (expt Ax1 2) Bw1)
               (* 3 Aw1 Ax1 Bx1))
              By2))
          Cw1)
	 (*
          (+ (* Ax1 Ay1 Bw1 Bw2)
             (* -6 Aw1 Ay1 Bw2 Bx1)
             (* Aw1 Ay1 Bw1 Bx2)
             (*
              (+ (* Aw1 Ax1 Bw2)
		 (* -3 (expt Aw1 2) Bx2))
              By1)
             (*
              (+ (* -3 Aw1 Ax1 Bw1)
		 (* 9 (expt Aw1 2) Bx1))
              By2))
          Cx1)
	 (*
          (+
           (* 3 (expt Ax1 2) Bw1 Bw2)
           (* -1 Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* Aw1 Ax1 Bw1)
               (* -3 (expt Aw1 2) Bx1))
            Bx2))
          Cy1))
	(expt Cy2 2)))
      Dw1)
     (*
      (+
       (*
	(+ (* -6 (expt Ay1 3) Bx2)
	   (* 6 Ax1 (expt Ay1 2) By2))
	Cw2 Cx2)
       (*
	(+ (* -3 (expt Ay1 3) Bw2)
	   (* 3 Aw1 (expt Ay1 2) By2))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+
           (* 6 Ax1 (expt Ay1 2) Bx2)
           (* -6 (expt Ax1 2) Ay1 By2))
          Cw2)
	 (*
          (+
           (* 6 Ax1 (expt Ay1 2) Bw2)
           (* 6 Aw1 (expt Ay1 2) Bx2)
           (* -12 Aw1 Ax1 Ay1 By2))
          Cx2))
	Cy2)
       (*
	(+
	 (* -3 (expt Ax1 2) Ay1 Bw2)
	 (* -6 Aw1 Ax1 Ay1 Bx2)
	 (* 9 Aw1 (expt Ax1 2) By2))
	(expt Cy2 2)))
      (expt Dw1 2)))
    Dx1)
   (*
    (+
     (*
      (+
       (*
	(+ (* -3 Ay1 Bw2 Bx1)
	   (* Ay1 Bw1 Bx2))
	(expt By1 2))
       (*
	(+ (* 3 Ax1 Bw2)
	   (* -1 Aw1 Bx2))
	(expt By1 3))
       (*
	(+ (* 2 Ay1 Bw1 Bx1 By1)
	   (*
            (+ (* -3 Ax1 Bw1)
               (* Aw1 Bx1))
            (expt By1 2)))
	By2)
       (*
	(+
	 (* -1 (expt Ay1 2) Bx2 By1)
	 (*
          (+ (* -2 (expt Ay1 2) Bx1)
             (* 3 Ax1 Ay1 By1))
          By2))
	Cw1))
      (expt Cw2 2))
     (*
      (+
       (* 3 (expt Ay1 2) Bw2 By1)
       (*
	(+ (* -1 (expt Ay1 2) Bw1)
	   (* -2 Aw1 Ay1 By1))
	By2))
      (expt Cw2 2) Cx1)
     (*
      (+
       (* 2 Ay1 Bw1 Bw2 (expt By1 2))
       (* -2 Aw1 Bw2 (expt By1 3))
       (*
	(+
	 (* -2 Ay1 (expt Bw1 2) By1)
	 (* 2 Aw1 Bw1 (expt By1 2)))
	By2)
       (*
	(+
	 (* -2 (expt Ay1 2) Bw2 By1)
	 (*
          (+ (* 3 (expt Ay1 2) Bw1)
             (* -1 Aw1 Ay1 By1))
          By2))
	Cw1))
      Cw2 Cx2)
     (*
      (+
       (*
	(+
	 (* 6 (expt Ay1 2) Bw2 Bx1)
	 (* -2 (expt Ay1 2) Bw1 Bx2)
	 (*
          (+ (* -9 Ax1 Ay1 Bw2)
             (* 3 Aw1 Ay1 Bx2))
          By1)
	 (*
          (+ (* 3 Ax1 Ay1 Bw1)
             (* -4 Aw1 Ay1 Bx1)
             (* 3 Aw1 Ax1 By1))
          By2))
	(expt Cw2 2))
       (*
	(+
	 (* -4 (expt Ay1 2) Bw1 Bw2)
	 (* 6 Aw1 Ay1 Bw2 By1)
	 (*
          (+ (* Aw1 Ay1 Bw1)
             (* -3 (expt Aw1 2) By1))
          By2))
	Cw2 Cx2))
      Cy1)
     (*
      (+
       (*
	(+
	 (*
          (+ (* 4 Ay1 Bw1 Bw2 Bx1)
             (* -2 Ay1 (expt Bw1 2) Bx2))
          By1)
	 (*
          (+ (* -6 Ax1 Bw1 Bw2)
             (* 2 Aw1 Bw2 Bx1)
             (* 2 Aw1 Bw1 Bx2))
          (expt By1 2))
	 (*
          (+
           (* -2 Ay1 (expt Bw1 2) Bx1)
           (*
            (+
             (* 6 Ax1 (expt Bw1 2))
             (* -4 Aw1 Bw1 Bx1))
            By1))
          By2)
	 (*
          (+
           (* -4 (expt Ay1 2) Bw2 Bx1)
           (* 3 (expt Ay1 2) Bw1 Bx2)
           (*
            (+ (* 6 Ax1 Ay1 Bw2)
               (* -1 Aw1 Ay1 Bx2))
            By1)
           (*
            (+ (* -6 Ax1 Ay1 Bw1)
               (* 8 Aw1 Ay1 Bx1)
               (* -6 Aw1 Ax1 By1))
            By2))
          Cw1))
	Cw2)
       (*
	(+
	 (* -2 (expt Ay1 2) Bw1 Bw2)
	 (* -4 Aw1 Ay1 Bw2 By1)
	 (*
          (+ (* 4 Aw1 Ay1 Bw1)
             (* 2 (expt Aw1 2) By1))
          By2))
	Cw2 Cx1)
       (*
	(+
	 (* -2 Ay1 (expt Bw1 2) Bw2 By1)
	 (* 2 Aw1 Bw1 Bw2 (expt By1 2))
	 (*
          (+ (* 2 Ay1 (expt Bw1 3))
             (* -2 Aw1 (expt Bw1 2) By1))
          By2)
	 (*
          (+
           (* 3 (expt Ay1 2) Bw1 Bw2)
           (* -1 Aw1 Ay1 Bw2 By1)
           (*
            (+ (* -6 Aw1 Ay1 Bw1)
               (* 4 (expt Aw1 2) By1))
            By2))
          Cw1))
	Cx2)
       (*
	(+
	 (*
          (+ (* 6 Ax1 Ay1 Bw1 Bw2)
             (* -8 Aw1 Ay1 Bw2 Bx1)
             (* Aw1 Ay1 Bw1 Bx2)
             (*
              (+ (* 6 Aw1 Ax1 Bw2)
		 (* -3 (expt Aw1 2) Bx2))
              By1)
             (*
              (+ (* -6 Aw1 Ax1 Bw1)
		 (* 4 (expt Aw1 2) Bx1))
              By2))
          Cw2)
	 (*
          (+ (* Aw1 Ay1 Bw1 Bw2)
             (* -3 (expt Aw1 2) Bw2 By1)
             (* 2 (expt Aw1 2) Bw1 By2))
          Cx2))
	Cy1))
      Cy2)
     (*
      (+
       (* -1 Ay1 (expt Bw1 2) Bw2 Bx1)
       (* Ay1 (expt Bw1 3) Bx2)
       (*
	(+
	 (* 3 Ax1 (expt Bw1 2) Bw2)
	 (* -2 Aw1 Bw1 Bw2 Bx1)
	 (* -1 Aw1 (expt Bw1 2) Bx2))
	By1)
       (*
	(+ (* -3 Ax1 (expt Bw1 3))
	   (* 3 Aw1 (expt Bw1 2) Bx1))
	By2)
       (*
	(+ (* -3 Ax1 Ay1 Bw1 Bw2)
	   (* 4 Aw1 Ay1 Bw2 Bx1)
	   (* -3 Aw1 Ay1 Bw1 Bx2)
	   (*
            (+ (* -3 Aw1 Ax1 Bw2)
               (* 2 (expt Aw1 2) Bx2))
            By1)
	   (*
            (+ (* 9 Aw1 Ax1 Bw1)
               (* -6 (expt Aw1 2) Bx1))
            By2))
	Cw1)
       (*
	(+ (* 2 Aw1 Ay1 Bw1 Bw2)
	   (* (expt Aw1 2) Bw2 By1)
	   (* -3 (expt Aw1 2) Bw1 By2))
	Cx1)
       (*
	(+ (* -3 Aw1 Ax1 Bw1 Bw2)
	   (* 2 (expt Aw1 2) Bw2 Bx1)
	   (* (expt Aw1 2) Bw1 Bx2))
	Cy1))
      (expt Cy2 2))
     (*
      (+
       (*
	(+ (* 3 (expt Ay1 3) Bx2)
	   (* -3 Ax1 (expt Ay1 2) By2))
	(expt Cw2 2))
       (*
	(+ (* 6 (expt Ay1 3) Bw2)
	   (* -6 Aw1 (expt Ay1 2) By2))
	Cw2 Cx2)
       (*
	(+
	 (*
          (+
           (* -6 Ax1 (expt Ay1 2) Bw2)
           (* -6 Aw1 (expt Ay1 2) Bx2)
           (* 12 Aw1 Ax1 Ay1 By2))
          Cw2)
	 (*
          (+
           (* -6 Aw1 (expt Ay1 2) Bw2)
           (* 6 (expt Aw1 2) Ay1 By2))
          Cx2))
	Cy2)
       (*
	(+ (* 6 Aw1 Ax1 Ay1 Bw2)
	   (* 3 (expt Aw1 2) Ay1 Bx2)
	   (* -9 (expt Aw1 2) Ax1 By2))
	(expt Cy2 2)))
      Dw1))
    (expt Dx1 2))
   (*
    (+
     (*
      (+ (* -3 (expt Ay1 3) Bw2)
	 (* 3 Aw1 (expt Ay1 2) By2))
      (expt Cw2 2))
     (*
      (+
       (* 6 Aw1 (expt Ay1 2) Bw2)
       (* -6 (expt Aw1 2) Ay1 By2))
      Cw2 Cy2)
     (*
      (+
       (* -3 (expt Aw1 2) Ay1 Bw2)
       (* 3 (expt Aw1 3) By2))
      (expt Cy2 2)))
    (expt Dx1 3))
   (*
    (+
     (*
      (+ (* 2 Ay1 Bx1 Bx2 By1)
	 (* -2 Ax1 Bx2 (expt By1 2))
	 (*
	  (+ (* -1 Ay1 (expt Bx1 2))
	     (* Ax1 Bx1 By1))
	  By2))
      Cw1 (expt Cw2 2) Cx1)
     (*
      (+
       (*
	(+ (* -3 Ay1 Bw2 Bx1)
	   (* Ay1 Bw1 Bx2))
	By1)
       (*
	(+ (* 3 Ax1 Bw2)
	   (* -1 Aw1 Bx2))
	(expt By1 2))
       (*
	(+ (* Ay1 Bw1 Bx1)
	   (*
            (+ (* -2 Ax1 Bw1)
               (* Aw1 Bx1))
            By1))
	By2)
       (*
	(+ (* -3 (expt Ay1 2) Bx2)
	   (* 2 Ax1 Ay1 By2))
	Cw1))
      (expt Cw2 2) (expt Cx1 2))
     (*
      (+ (* 3 (expt Ay1 2) Bw2)
	 (* -2 Aw1 Ay1 By2))
      (expt Cw2 2) (expt Cx1 3))
     (*
      (+
       (*
	(+ (* -2 Ay1 Bx1 Bx2 By1)
	   (* 2 Ax1 Bx2 (expt By1 2))
	   (*
            (+ (* Ay1 (expt Bx1 2))
               (* -1 Ax1 Bx1 By1))
            By2))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 4 Ay1 Bw2 Bx1)
               (* -4 Ay1 Bw1 Bx2))
            By1)
           (*
            (+ (* -4 Ax1 Bw2)
               (* 4 Aw1 Bx2))
            (expt By1 2))
           (*
            (+ (* 3 Ax1 Bw1)
               (* -3 Aw1 Bx1))
            By1 By2))
          Cw1)
	 (*
          (+ (* 6 (expt Ay1 2) Bx2)
             (* -4 Ax1 Ay1 By2))
          (expt Cw1 2)))
	Cw2 Cx1)
       (*
	(+ (* 2 Ay1 Bw1 Bw2 By1)
	   (* -2 Aw1 Bw2 (expt By1 2))
	   (*
            (+ (* -1 Ay1 (expt Bw1 2))
               (* Aw1 Bw1 By1))
            By2)
	   (*
            (+ (* -6 (expt Ay1 2) Bw2)
               (* 4 Aw1 Ay1 By2))
            Cw1))
	Cw2 (expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bw2 Bx1)
             (* 3 Ay1 Bw1 Bx2))
          By1)
	 (*
          (+ (* Ax1 Bw2)
             (* -3 Aw1 Bx2))
          (expt By1 2))
	 (*
          (+ (* -1 Ay1 Bw1 Bx1)
             (*
              (+ (* -1 Ax1 Bw1)
		 (* 2 Aw1 Bx1))
              By1))
          By2))
	(expt Cw1 2))
       (*
	(+ (* -3 (expt Ay1 2) Bx2)
	   (* 2 Ax1 Ay1 By2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+ (* -2 Ay1 Bw1 Bw2 By1)
             (* 2 Aw1 Bw2 (expt By1 2))
             (*
              (+ (* Ay1 (expt Bw1 2))
		 (* -1 Aw1 Bw1 By1))
              By2))
          Cw1)
	 (*
          (+ (* 3 (expt Ay1 2) Bw2)
             (* -2 Aw1 Ay1 By2))
          (expt Cw1 2)))
	Cx1))
      (expt Cx2 2))
     (*
      (+
       (*
	(+
	 (* -1 Ay1 (expt Bx1 2) Bx2)
	 (* Ax1 Bx1 Bx2 By1))
	Cw1 (expt Cw2 2))
       (*
	(+
	 (* 3 Ay1 Bw2 (expt Bx1 2))
	 (* -2 Ay1 Bw1 Bx1 Bx2)
	 (*
          (+ (* -3 Ax1 Bw2 Bx1)
             (*
              (+ (* Ax1 Bw1)
		 (* Aw1 Bx1))
              Bx2))
          By1)
	 (*
          (+ (* Ax1 Bw1 Bx1)
             (* -1 Aw1 (expt Bx1 2)))
          By2)
	 (*
          (+ (* 4 Ax1 Ay1 Bx2)
             (* -2 (expt Ax1 2) By2))
          Cw1))
	(expt Cw2 2) Cx1)
       (*
	(+ (* -6 Ax1 Ay1 Bw2)
	   (* 2 Aw1 Ay1 Bx2)
	   (* 2 Aw1 Ax1 By2))
	(expt Cw2 2) (expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2 Ay1 Bw2 (expt Bx1 2))
             (* 4 Ay1 Bw1 Bx1 Bx2)
             (*
              (+ (* 2 Ax1 Bw2 Bx1)
		 (*
		  (+ (* -2 Ax1 Bw1)
		     (* -2 Aw1 Bx1))
		  Bx2))
              By1)
             (*
              (+ (* -1 Ax1 Bw1 Bx1)
		 (* Aw1 (expt Bx1 2)))
              By2))
            Cw1)
           (*
            (+ (* -4 Ax1 Ay1 Bx2)
               (* 2 (expt Ax1 2) By2))
            (expt Cw1 2)))
          Cw2)
	 (*
          (+ (* -4 Ay1 Bw1 Bw2 Bx1)
             (* 2 Ay1 (expt Bw1 2) Bx2)
             (*
              (+ (* 2 Ax1 Bw1 Bw2)
		 (* 2 Aw1 Bw2 Bx1)
		 (* -2 Aw1 Bw1 Bx2))
              By1)
             (*
              (+
               (* -1 Ax1 (expt Bw1 2))
               (* Aw1 Bw1 Bx1))
              By2)
             (*
              (+ (* 8 Ax1 Ay1 Bw2)
		 (* -8 Aw1 Ay1 Bx2))
              Cw1))
          Cw2 Cx1)
	 (*
          (+ (* 4 Aw1 Ay1 Bw2)
             (* -2 (expt Aw1 2) By2))
          Cw2 (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+ (* 2 Ay1 Bw1 Bw2 Bx1)
             (* -3 Ay1 (expt Bw1 2) Bx2)
             (*
              (+ (* -1 Ax1 Bw1 Bw2)
		 (* -1 Aw1 Bw2 Bx1)
		 (* 3 Aw1 Bw1 Bx2))
              By1)
             (*
              (+ (* Ax1 (expt Bw1 2))
		 (* -1 Aw1 Bw1 Bx1))
              By2))
          Cw1)
	 (*
          (+ (* -2 Ax1 Ay1 Bw2)
             (* 6 Aw1 Ay1 Bx2)
             (* -2 Aw1 Ax1 By2))
          (expt Cw1 2))
	 (*
          (+
           (* Ay1 (expt Bw1 2) Bw2)
           (* -1 Aw1 Bw1 Bw2 By1)
           (*
            (+ (* -4 Aw1 Ay1 Bw2)
               (* 2 (expt Aw1 2) By2))
            Cw1))
          Cx1))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (* -1 (expt Ax1 2) Bx2 Cw1
	  (expt Cw2 2))
       (*
	(+ (* 3 (expt Ax1 2) Bw2)
	   (* -2 Aw1 Ax1 Bx2))
	(expt Cw2 2) Cx1)
       (*
	(+
	 (*
          (+ (* -2 (expt Ax1 2) Bw2)
             (* 4 Aw1 Ax1 Bx2))
          Cw1 Cw2)
	 (*
          (+ (* -4 Aw1 Ax1 Bw2)
             (* 2 (expt Aw1 2) Bx2))
          Cw2 Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* 2 Aw1 Ax1 Bw2)
             (* -3 (expt Aw1 2) Bx2))
          Cw1)
	 (* (expt Aw1 2) Bw2 Cx1))
	(expt Cx2 2)))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (* Ay1 (expt Bx1 2) Bx2)
	 (* -1 Ax1 Bx1 Bx2 By1))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+
           (* -2 Ay1 Bw2 (expt Bx1 2))
           (*
            (+ (* 2 Ax1 Bw2 Bx1)
               (*
		(+ (* 3 Ax1 Bw1)
		   (* -3 Aw1 Bx1))
		Bx2))
            By1)
           (*
            (+ (* -2 Ax1 Bw1 Bx1)
               (* 2 Aw1 (expt Bx1 2)))
            By2))
          Cw1)
	 (*
          (+ (* -4 Ax1 Ay1 Bx2)
             (* 2 (expt Ax1 2) By2))
          (expt Cw1 2)))
	Cw2 Cx1)
       (*
	(+ (* 2 Ay1 Bw1 Bw2 Bx1)
	   (* -1 Ay1 (expt Bw1 2) Bx2)
	   (*
            (+ (* -4 Ax1 Bw1 Bw2)
               (* 2 Aw1 Bw2 Bx1)
               (* Aw1 Bw1 Bx2))
            By1)
	   (*
            (+ (* 2 Ax1 (expt Bw1 2))
               (* -2 Aw1 Bw1 Bx1))
            By2)
	   (*
            (+ (* 4 Ax1 Ay1 Bw2)
               (* 4 Aw1 Ay1 Bx2)
               (* -4 Aw1 Ax1 By2))
            Cw1))
	Cw2 (expt Cx1 2))
       (*
	(+ (* -4 Aw1 Ay1 Bw2)
	   (* 2 (expt Aw1 2) By2))
	Cw2 (expt Cx1 3))
       (*
	(+
	 (*
          (+
           (* Ay1 Bw2 (expt Bx1 2))
           (* -2 Ay1 Bw1 Bx1 Bx2)
           (*
            (+ (* -1 Ax1 Bw2 Bx1)
               (*
		(+ (* -2 Ax1 Bw1)
		   (* 4 Aw1 Bx1))
		Bx2))
            By1)
           (*
            (+ (* 2 Ax1 Bw1 Bx1)
               (* -2 Aw1 (expt Bx1 2)))
            By2))
          (expt Cw1 2))
	 (*
          (+ (* 4 Ax1 Ay1 Bx2)
             (* -2 (expt Ax1 2) By2))
          (expt Cw1 3))
	 (*
          (+
           (*
            (+
             (* 2 Ay1 (expt Bw1 2) Bx2)
             (*
              (+ (* 3 Ax1 Bw1 Bw2)
		 (* -3 Aw1 Bw2 Bx1)
		 (* -2 Aw1 Bw1 Bx2))
              By1)
             (*
              (+
               (* -2 Ax1 (expt Bw1 2))
               (* 2 Aw1 Bw1 Bx1))
              By2))
            Cw1)
           (*
            (+ (* -4 Ax1 Ay1 Bw2)
               (* -4 Aw1 Ay1 Bx2)
               (* 4 Aw1 Ax1 By2))
            (expt Cw1 2)))
          Cx1)
	 (*
          (+
           (* -1 Ay1 (expt Bw1 2) Bw2)
           (* Aw1 Bw1 Bw2 By1)
           (*
            (+ (* 4 Aw1 Ay1 Bw2)
               (* -2 (expt Aw1 2) By2))
            Cw1))
          (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -1 Ax1 Bw1 Bx1)
               (* Aw1 (expt Bx1 2)))
            Bx2 Cw1)
           (* 2 (expt Ax1 2) Bx2
              (expt Cw1 2)))
          Cw2)
	 (*
          (+ (* 2 Ax1 Bw1 Bw2 Bx1)
             (* -2 Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* -1 Ax1 (expt Bw1 2))
               (* Aw1 Bw1 Bx1))
              Bx2)
             (* -4 (expt Ax1 2) Bw2 Cw1))
          Cw2 Cx1)
	 (*
          (+ (* 4 Aw1 Ax1 Bw2)
             (* -2 (expt Aw1 2) Bx2))
          Cw2 (expt Cx1 2))
	 (*
          (+
           (*
            (+ (* -1 Ax1 Bw1 Bw2 Bx1)
               (* Aw1 Bw2 (expt Bx1 2))
               (*
		(+
		 (* 2 Ax1 (expt Bw1 2))
		 (* -2 Aw1 Bw1 Bx1))
		Bx2))
            Cw1)
           (*
            (+
             (* 2 (expt Ax1 2) Bw2)
             (* -4 Aw1 Ax1 Bx2))
            (expt Cw1 2))
           (*
            (+
             (* -1 Ax1 (expt Bw1 2) Bw2)
             (* Aw1 Bw1 Bw2 Bx1)
             (* 4 (expt Aw1 2) Bx2 Cw1))
            Cx1)
           (* -2 (expt Aw1 2) Bw2
              (expt Cx1 2)))
          Cx2))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+ (* Ax1 Bw1 Bx1)
	   (* -1 Aw1 (expt Bx1 2)))
	Bx2 (expt Cw1 2))
       (* -1 (expt Ax1 2) Bx2
	  (expt Cw1 3))
       (*
	(+
	 (*
          (+ (* -1 Ax1 Bw1 Bw2 Bx1)
             (* Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* -1 Ax1 (expt Bw1 2))
               (* Aw1 Bw1 Bx1))
              Bx2))
          Cw1)
	 (*
          (+ (* (expt Ax1 2) Bw2)
             (* 2 Aw1 Ax1 Bx2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (* Ax1 (expt Bw1 2) Bw2)
	 (* -1 Aw1 Bw1 Bw2 Bx1)
	 (*
          (+ (* -2 Aw1 Ax1 Bw2)
             (* -1 (expt Aw1 2) Bx2))
          Cw1))
	(expt Cx1 2))
       (* (expt Aw1 2) Bw2
	  (expt Cx1 3)))
      (expt Cy2 2))
     (*
      (+
       (*
	(+
	 (* -2 Ay1 (expt Bx1 2) Bx2 By1)
	 (* 2 Ax1 Bx1 Bx2 (expt By1 2))
	 (*
          (+ (* 2 Ay1 (expt Bx1 3))
             (* -2 Ax1 (expt Bx1 2) By1))
          By2))
	(expt Cw2 2))
       (*
	(+
	 (* 3 (expt Ay1 2) Bx1 Bx2)
	 (* -1 Ax1 Ay1 Bx2 By1)
	 (*
          (+ (* -6 Ax1 Ay1 Bx1)
             (* 4 (expt Ax1 2) By1))
          By2))
	(expt Cw2 2) Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -4 Ay1 Bw2 (expt Bx1 2))
             (* 8 Ay1 Bw1 Bx1 Bx2))
            By1)
           (*
            (+ (* 4 Ax1 Bw2 Bx1)
               (*
		(+ (* -4 Ax1 Bw1)
		   (* -4 Aw1 Bx1))
		Bx2))
            (expt By1 2))
           (*
            (+
             (* -4 Ay1 Bw1 (expt Bx1 2))
             (* 4 Aw1 (expt Bx1 2) By1))
            By2)
           (*
            (+
             (* -6 (expt Ay1 2) Bx1 Bx2)
             (* 2 Ax1 Ay1 Bx2 By1)
             (*
              (+ (* 5 Ax1 Ay1 Bx1)
		 (* -1 (expt Ax1 2) By1))
              By2))
            Cw1))
          Cw2)
	 (*
          (+
           (* 6 (expt Ay1 2) Bw2 Bx1)
           (* -6 (expt Ay1 2) Bw1 Bx2)
           (*
            (+ (* -2 Ax1 Ay1 Bw2)
               (* 2 Aw1 Ay1 Bx2))
            By1)
           (*
            (+ (* 7 Ax1 Ay1 Bw1)
               (* -7 Aw1 Ax1 By1))
            By2))
          Cw2 Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* 4 Ay1 Bw1 Bw2 Bx1)
             (* -6 Ay1 (expt Bw1 2) Bx2))
          By1)
	 (*
          (+ (* -2 Ax1 Bw1 Bw2)
             (* -2 Aw1 Bw2 Bx1)
             (* 6 Aw1 Bw1 Bx2))
          (expt By1 2))
	 (*
          (+
           (* 2 Ay1 (expt Bw1 2) Bx1)
           (*
            (+
             (* 2 Ax1 (expt Bw1 2))
             (* -4 Aw1 Bw1 Bx1))
            By1))
          By2)
	 (*
          (+
           (* -3 (expt Ay1 2) Bw2 Bx1)
           (* 9 (expt Ay1 2) Bw1 Bx2)
           (*
            (+ (* Ax1 Ay1 Bw2)
               (* -3 Aw1 Ay1 Bx2))
            By1)
           (*
            (+ (* -6 Ax1 Ay1 Bw1)
               (* Aw1 Ay1 Bx1)
               (* Aw1 Ax1 By1))
            By2))
          Cw1)
	 (*
          (+
           (* -3 (expt Ay1 2) Bw1 Bw2)
           (* Aw1 Ay1 Bw2 By1)
           (*
            (+ (* -1 Aw1 Ay1 Bw1)
               (* 3 (expt Aw1 2) By1))
            By2))
          Cx1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+ (* Ax1 Ay1 Bx1 Bx2)
             (* -3 (expt Ax1 2) Bx2 By1)
             (* 2 (expt Ax1 2) Bx1 By2))
          (expt Cw2 2))
	 (*
          (+ (* 2 Ax1 Ay1 Bw2 Bx1)
             (*
              (+ (* -2 Ax1 Ay1 Bw1)
		 (* -2 Aw1 Ay1 Bx1))
              Bx2)
             (*
              (+
               (* -6 (expt Ax1 2) Bw2)
               (* 12 Aw1 Ax1 Bx2))
              By1)
             (*
              (+ (* (expt Ax1 2) Bw1)
		 (* -5 Aw1 Ax1 Bx1))
              By2))
          Cw2 Cx2)
	 (*
          (+ (* -1 Ax1 Ay1 Bw1 Bw2)
             (* -1 Aw1 Ay1 Bw2 Bx1)
             (* 3 Aw1 Ay1 Bw1 Bx2)
             (*
              (+ (* 6 Aw1 Ax1 Bw2)
		 (* -9 (expt Aw1 2) Bx2))
              By1)
             (*
              (+ (* -1 Aw1 Ax1 Bw1)
		 (* 3 (expt Aw1 2) Bx1))
              By2))
          (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (*
          (+
           (* 4 Ay1 Bw2 (expt Bx1 3))
           (* -4 Ay1 Bw1 (expt Bx1 2)
              Bx2)
           (*
            (+
             (* -4 Ax1 Bw2 (expt Bx1 2))
             (* 4 Aw1 (expt Bx1 2) Bx2))
            By1)
           (*
            (+
             (* 4 Ax1 Bw1 (expt Bx1 2))
             (* -4 Aw1 (expt Bx1 3)))
            By2)
           (*
            (+ (* 5 Ax1 Ay1 Bx1 Bx2)
               (* -1 (expt Ax1 2) Bx2 By1)
               (* -4 (expt Ax1 2) Bx1 By2))
            Cw1))
          Cw2)
	 (*
          (+ (* -12 Ax1 Ay1 Bw2 Bx1)
             (* 7 Ax1 Ay1 Bw1 Bx2)
             (*
              (+
               (* 8 (expt Ax1 2) Bw2)
               (* -7 Aw1 Ax1 Bx2))
              By1)
             (*
              (+
               (* -8 (expt Ax1 2) Bw1)
               (* 12 Aw1 Ax1 Bx1))
              By2))
          Cw2 Cx1)
	 (*
          (+
           (* -4 Ay1 Bw1 Bw2
              (expt Bx1 2))
           (* 4 Ay1 (expt Bw1 2) Bx1 Bx2)
           (*
            (+
             (* 4 Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* 4 Ax1 (expt Bw1 2))
               (* -8 Aw1 Bw1 Bx1))
              Bx2))
            By1)
           (*
            (+
             (* -4 Ax1 (expt Bw1 2) Bx1)
             (* 4 Aw1 Bw1 (expt Bx1 2)))
            By2)
           (*
            (+ (* 5 Ax1 Ay1 Bw2 Bx1)
               (*
		(+ (* -12 Ax1 Ay1 Bw1)
		   (* 2 Aw1 Ay1 Bx1))
		Bx2)
               (*
		(+
		 (* -1 (expt Ax1 2) Bw2)
		 (* 2 Aw1 Ax1 Bx2))
		By1)
               (*
		(+
		 (* 6 (expt Ax1 2) Bw1)
		 (* -2 Aw1 Ax1 Bx1))
		By2))
            Cw1)
           (*
            (+ (* 7 Ax1 Ay1 Bw1 Bw2)
               (* -2 Aw1 Ay1 Bw1 Bx2)
               (*
		(+ (* -7 Aw1 Ax1 Bw2)
		   (* 6 (expt Aw1 2) Bx2))
		By1)
               (*
		(+ (* 2 Aw1 Ax1 Bw1)
		   (* -6 (expt Aw1 2) Bx1))
		By2))
            Cx1))
          Cx2)
	 (*
          (+
           (*
            (+
             (* 4 (expt Ax1 2) Bw2 Bx1)
             (*
              (+
               (* (expt Ax1 2) Bw1)
               (* -5 Aw1 Ax1 Bx1))
              Bx2))
            Cw2)
           (*
            (+
             (* (expt Ax1 2) Bw1 Bw2)
             (* -5 Aw1 Ax1 Bw2 Bx1)
             (*
              (+ (* -2 Aw1 Ax1 Bw1)
		 (* 6 (expt Aw1 2) Bx1))
              Bx2))
            Cx2))
          Cy1))
	Cy2)
       (*
	(+
	 (* 2 Ax1 Bw1 Bw2 (expt Bx1 2))
	 (* -2 Aw1 Bw2 (expt Bx1 3))
	 (*
          (+
           (* -2 Ax1 (expt Bw1 2) Bx1)
           (* 2 Aw1 Bw1 (expt Bx1 2)))
          Bx2)
	 (*
          (+
           (* -2 (expt Ax1 2) Bw2 Bx1)
           (*
            (+
             (* 3 (expt Ax1 2) Bw1)
             (* -1 Aw1 Ax1 Bx1))
            Bx2))
          Cw1)
	 (*
          (+
           (* -4 (expt Ax1 2) Bw1 Bw2)
           (* 6 Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* Aw1 Ax1 Bw1)
               (* -3 (expt Aw1 2) Bx1))
            Bx2))
          Cx1))
	(expt Cy2 2)))
      Dw1)
     (*
      (+
       (*
	(+
	 (* 6 Ax1 (expt Ay1 2) Bx2)
	 (* -6 (expt Ax1 2) Ay1 By2))
	Cw2 Cx2)
       (*
	(+
	 (* 3 Ax1 (expt Ay1 2) Bw2)
	 (* -9 Aw1 (expt Ay1 2) Bx2)
	 (* 6 Aw1 Ax1 Ay1 By2))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+
           (* -6 (expt Ax1 2) Ay1 Bx2)
           (* 6 (expt Ax1 3) By2))
          Cw2)
	 (*
          (+
           (* -6 (expt Ax1 2) Ay1 Bw2)
           (* 12 Aw1 Ax1 Ay1 Bx2)
           (* -6 Aw1 (expt Ax1 2) By2))
          Cx2))
	Cy2)
       (*
	(+ (* 3 (expt Ax1 3) Bw2)
	   (* -3 Aw1 (expt Ax1 2) Bx2))
	(expt Cy2 2)))
      (expt Dw1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 6 Ay1 Bw2 (expt Bx1 2))
           (* -4 Ay1 Bw1 Bx1 Bx2))
          By1)
	 (*
          (+ (* -6 Ax1 Bw2 Bx1)
             (*
              (+ (* 2 Ax1 Bw1)
		 (* 2 Aw1 Bx1))
              Bx2))
          (expt By1 2))
	 (*
          (+
           (* -2 Ay1 Bw1 (expt Bx1 2))
           (*
            (+ (* 4 Ax1 Bw1 Bx1)
               (* -2 Aw1 (expt Bx1 2)))
            By1))
          By2)
	 (*
          (+
           (* 3 (expt Ay1 2) Bx1 Bx2)
           (* -1 Ax1 Ay1 Bx2 By1)
           (*
            (+ (* Ax1 Ay1 Bx1)
               (* -3 (expt Ax1 2) By1))
            By2))
          Cw1))
	(expt Cw2 2))
       (*
	(+
	 (* -9 (expt Ay1 2) Bw2 Bx1)
	 (* 3 (expt Ay1 2) Bw1 Bx2)
	 (*
          (+ (* 3 Ax1 Ay1 Bw2)
             (* -1 Aw1 Ay1 Bx2))
          By1)
	 (*
          (+ (* -1 Ax1 Ay1 Bw1)
             (* 6 Aw1 Ay1 Bx1)
             (* -1 Aw1 Ax1 By1))
          By2))
	(expt Cw2 2) Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -8 Ay1 Bw1 Bw2 Bx1)
               (* 4 Ay1 (expt Bw1 2) Bx2))
            By1)
           (*
            (+ (* 4 Ax1 Bw1 Bw2)
               (* 4 Aw1 Bw2 Bx1)
               (* -4 Aw1 Bw1 Bx2))
            (expt By1 2))
           (*
            (+
             (* 4 Ay1 (expt Bw1 2) Bx1)
             (* -4 Ax1 (expt Bw1 2) By1))
            By2)
           (*
            (+
             (* 6 (expt Ay1 2) Bw2 Bx1)
             (* -6 (expt Ay1 2) Bw1 Bx2)
             (*
              (+ (* -2 Ax1 Ay1 Bw2)
		 (* 2 Aw1 Ay1 Bx2))
              By1)
             (*
              (+ (* -7 Aw1 Ay1 Bx1)
		 (* 7 Aw1 Ax1 By1))
              By2))
            Cw1))
          Cw2)
	 (*
          (+
           (* 6 (expt Ay1 2) Bw1 Bw2)
           (* -2 Aw1 Ay1 Bw2 By1)
           (*
            (+ (* -5 Aw1 Ay1 Bw1)
               (* (expt Aw1 2) By1))
            By2))
          Cw2 Cx1))
	Cx2)
       (*
	(+
	 (* 2 Ay1 (expt Bw1 2) Bw2 By1)
	 (* -2 Aw1 Bw1 Bw2 (expt By1 2))
	 (*
          (+ (* -2 Ay1 (expt Bw1 3))
             (* 2 Aw1 (expt Bw1 2) By1))
          By2)
	 (*
          (+
           (* -3 (expt Ay1 2) Bw1 Bw2)
           (* Aw1 Ay1 Bw2 By1)
           (*
            (+ (* 6 Aw1 Ay1 Bw1)
               (* -4 (expt Aw1 2) By1))
            By2))
          Cw1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+ (* -3 Ax1 Ay1 Bw2 Bx1)
             (*
              (+ (* Ax1 Ay1 Bw1)
		 (* Aw1 Ay1 Bx1))
              Bx2)
             (*
              (+
               (* 9 (expt Ax1 2) Bw2)
               (* -6 Aw1 Ax1 Bx2))
              By1)
             (*
              (+
               (* -3 (expt Ax1 2) Bw1)
               (* Aw1 Ax1 Bx1))
              By2))
          (expt Cw2 2))
	 (*
          (+ (* 2 Ax1 Ay1 Bw1 Bw2)
             (* 2 Aw1 Ay1 Bw2 Bx1)
             (* -2 Aw1 Ay1 Bw1 Bx2)
             (*
              (+ (* -12 Aw1 Ax1 Bw2)
		 (* 6 (expt Aw1 2) Bx2))
              By1)
             (*
              (+ (* 5 Aw1 Ax1 Bw1)
		 (* -1 (expt Aw1 2) Bx1))
              By2))
          Cw2 Cx2)
	 (*
          (+ (* -1 Aw1 Ay1 Bw1 Bw2)
             (* 3 (expt Aw1 2) Bw2 By1)
             (* -2 (expt Aw1 2) Bw1 By2))
          (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (*
          (+
           (* -4 Ay1 Bw1 Bw2
              (expt Bx1 2))
           (* 4 Ay1 (expt Bw1 2) Bx1 Bx2)
           (*
            (+ (* 8 Ax1 Bw1 Bw2 Bx1)
               (* -4 Aw1 Bw2 (expt Bx1 2))
               (* -4 Ax1 (expt Bw1 2) Bx2))
            By1)
           (*
            (+
             (* -4 Ax1 (expt Bw1 2) Bx1)
             (* 4 Aw1 Bw1 (expt Bx1 2)))
            By2)
           (*
            (+ (* 2 Ax1 Ay1 Bw2 Bx1)
               (* -7 Aw1 Ay1 Bx1 Bx2)
               (*
		(+
		 (* -6 (expt Ax1 2) Bw2)
		 (* 7 Aw1 Ax1 Bx2))
		By1)
               (*
		(+
		 (* 6 (expt Ax1 2) Bw1)
		 (* -2 Aw1 Ax1 Bx1))
		By2))
            Cw1))
          Cw2)
	 (*
          (+ (* -2 Ax1 Ay1 Bw1 Bw2)
             (* 12 Aw1 Ay1 Bw2 Bx1)
             (* -5 Aw1 Ay1 Bw1 Bx2)
             (*
              (+ (* -2 Aw1 Ax1 Bw2)
		 (* (expt Aw1 2) Bx2))
              By1)
             (*
              (+ (* 2 Aw1 Ax1 Bw1)
		 (* -6 (expt Aw1 2) Bx1))
              By2))
          Cw2 Cx1)
	 (*
          (+
           (* 4 Ay1 (expt Bw1 2) Bw2 Bx1)
           (* -4 Ay1 (expt Bw1 3) Bx2)
           (*
            (+
             (* -4 Ax1 (expt Bw1 2) Bw2)
             (* 4 Aw1 (expt Bw1 2) Bx2))
            By1)
           (*
            (+
             (* 4 Ax1 (expt Bw1 3))
             (* -4 Aw1 (expt Bw1 2) Bx1))
            By2)
           (*
            (+ (* -7 Aw1 Ay1 Bw2 Bx1)
               (* 12 Aw1 Ay1 Bw1 Bx2)
               (*
		(+ (* 7 Aw1 Ax1 Bw2)
		   (* -8 (expt Aw1 2) Bx2))
		By1)
               (*
		(+ (* -12 Aw1 Ax1 Bw1)
		   (* 8 (expt Aw1 2) Bx1))
		By2))
            Cw1)
           (*
            (+ (* -5 Aw1 Ay1 Bw1 Bw2)
               (* (expt Aw1 2) Bw2 By1)
               (* 4 (expt Aw1 2) Bw1 By2))
            Cx1))
          Cx2)
	 (*
          (+
           (*
            (+
             (* -6 (expt Ax1 2) Bw1 Bw2)
             (* 2 Aw1 Ax1 Bw2 Bx1)
             (*
              (+ (* 5 Aw1 Ax1 Bw1)
		 (* -1 (expt Aw1 2) Bx1))
              Bx2))
            Cw2)
           (*
            (+ (* 5 Aw1 Ax1 Bw1 Bw2)
               (* -1 (expt Aw1 2) Bw2 Bx1)
               (* -4 (expt Aw1 2) Bw1 Bx2))
            Cx2))
          Cy1))
	Cy2)
       (*
	(+
	 (* -2 Ax1 (expt Bw1 2) Bw2 Bx1)
	 (* 2 Aw1 Bw1 Bw2 (expt Bx1 2))
	 (*
          (+ (* 2 Ax1 (expt Bw1 3))
             (* -2 Aw1 (expt Bw1 2) Bx1))
          Bx2)
	 (*
          (+
           (* 3 (expt Ax1 2) Bw1 Bw2)
           (* -1 Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* -6 Aw1 Ax1 Bw1)
               (* 4 (expt Aw1 2) Bx1))
            Bx2))
          Cw1)
	 (*
          (+ (* Aw1 Ax1 Bw1 Bw2)
             (* -3 (expt Aw1 2) Bw2 Bx1)
             (* 2 (expt Aw1 2) Bw1 Bx2))
          Cx1))
	(expt Cy2 2))
       (*
	(+
	 (*
          (+
           (* -6 Ax1 (expt Ay1 2) Bx2)
           (* 6 (expt Ax1 2) Ay1 By2))
          (expt Cw2 2))
	 (*
          (+
           (* -12 Ax1 (expt Ay1 2) Bw2)
           (* 12 Aw1 (expt Ay1 2) Bx2))
          Cw2 Cx2)
	 (*
          (+
           (* 6 Aw1 (expt Ay1 2) Bw2)
           (* -6 (expt Aw1 2) Ay1 By2))
          (expt Cx2 2))
	 (*
          (+
           (*
            (+
             (* 12 (expt Ax1 2) Ay1 Bw2)
             (* -12 Aw1 (expt Ax1 2) By2))
            Cw2)
           (*
            (+
             (* -12 (expt Aw1 2) Ay1 Bx2)
             (* 12 (expt Aw1 2) Ax1 By2))
            Cx2))
          Cy2)
	 (*
          (+
           (* -6 Aw1 (expt Ax1 2) Bw2)
           (* 6 (expt Aw1 2) Ax1 Bx2))
          (expt Cy2 2)))
	Dw1))
      Dx1)
     (*
      (+
       (*
	(+
	 (* 9 Ax1 (expt Ay1 2) Bw2)
	 (* -3 Aw1 (expt Ay1 2) Bx2)
	 (* -6 Aw1 Ax1 Ay1 By2))
	(expt Cw2 2))
       (*
	(+
	 (* -6 Aw1 (expt Ay1 2) Bw2)
	 (* 6 (expt Aw1 2) Ay1 By2))
	Cw2 Cx2)
       (*
	(+
	 (*
          (+ (* -12 Aw1 Ax1 Ay1 Bw2)
             (* 6 (expt Aw1 2) Ay1 Bx2)
             (* 6 (expt Aw1 2) Ax1 By2))
          Cw2)
	 (*
          (+
           (* 6 (expt Aw1 2) Ay1 Bw2)
           (* -6 (expt Aw1 3) By2))
          Cx2))
	Cy2)
       (*
	(+
	 (* 3 (expt Aw1 2) Ax1 Bw2)
	 (* -3 (expt Aw1 3) Bx2))
	(expt Cy2 2)))
      (expt Dx1 2)))
    Dy1)
   (*
    (+
     (*
      (+
       (* -3 Ay1 Bw2 (expt Bx1 3))
       (* 3 Ay1 Bw1 (expt Bx1 2) Bx2)
       (*
	(+
	 (* 3 Ax1 Bw2 (expt Bx1 2))
	 (*
          (+ (* -2 Ax1 Bw1 Bx1)
             (* -1 Aw1 (expt Bx1 2)))
          Bx2))
	By1)
       (*
	(+
	 (* -1 Ax1 Bw1 (expt Bx1 2))
	 (* Aw1 (expt Bx1 3)))
	By2)
       (*
	(+ (* -3 Ax1 Ay1 Bx1 Bx2)
	   (* 2 (expt Ax1 2) Bx2 By1)
	   (* (expt Ax1 2) Bx1 By2))
	Cw1))
      (expt Cw2 2))
     (*
      (+ (* 9 Ax1 Ay1 Bw2 Bx1)
	 (*
	  (+ (* -3 Ax1 Ay1 Bw1)
	     (* -3 Aw1 Ay1 Bx1))
	  Bx2)
	 (*
	  (+ (* -6 (expt Ax1 2) Bw2)
	     (* 4 Aw1 Ax1 Bx2))
	  By1)
	 (*
	  (+ (* 2 (expt Ax1 2) Bw1)
	     (* -3 Aw1 Ax1 Bx1))
	  By2))
      (expt Cw2 2) Cx1)
     (*
      (+
       (*
	(+
	 (* 6 Ay1 Bw1 Bw2 (expt Bx1 2))
	 (* -6 Ay1 (expt Bw1 2) Bx1 Bx2)
	 (*
          (+ (* -4 Ax1 Bw1 Bw2 Bx1)
             (* -2 Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* 2 Ax1 (expt Bw1 2))
               (* 4 Aw1 Bw1 Bx1))
              Bx2))
          By1)
	 (*
          (+
           (* 2 Ax1 (expt Bw1 2) Bx1)
           (* -2 Aw1 Bw1 (expt Bx1 2)))
          By2)
	 (*
          (+ (* -6 Ax1 Ay1 Bw2 Bx1)
             (*
              (+ (* 6 Ax1 Ay1 Bw1)
		 (* 6 Aw1 Ay1 Bx1))
              Bx2)
             (*
              (+
               (* 4 (expt Ax1 2) Bw2)
               (* -8 Aw1 Ax1 Bx2))
              By1)
             (*
              (+
               (* -3 (expt Ax1 2) Bw1)
               (* Aw1 Ax1 Bx1))
              By2))
          Cw1))
	Cw2)
       (*
	(+ (* -6 Ax1 Ay1 Bw1 Bw2)
	   (* -6 Aw1 Ay1 Bw2 Bx1)
	   (* 6 Aw1 Ay1 Bw1 Bx2)
	   (*
            (+ (* 8 Aw1 Ax1 Bw2)
               (* -4 (expt Aw1 2) Bx2))
            By1)
	   (*
            (+ (* -1 Aw1 Ax1 Bw1)
               (* 3 (expt Aw1 2) Bx1))
            By2))
	Cw2 Cx1))
      Cx2)
     (*
      (+
       (* -3 Ay1 (expt Bw1 2) Bw2 Bx1)
       (* 3 Ay1 (expt Bw1 3) Bx2)
       (*
	(+
	 (* Ax1 (expt Bw1 2) Bw2)
	 (* 2 Aw1 Bw1 Bw2 Bx1)
	 (* -3 Aw1 (expt Bw1 2) Bx2))
	By1)
       (*
	(+ (* -1 Ax1 (expt Bw1 3))
	   (* Aw1 (expt Bw1 2) Bx1))
	By2)
       (*
	(+ (* 3 Ax1 Ay1 Bw1 Bw2)
	   (* 3 Aw1 Ay1 Bw2 Bx1)
	   (* -9 Aw1 Ay1 Bw1 Bx2)
	   (*
            (+ (* -4 Aw1 Ax1 Bw2)
               (* 6 (expt Aw1 2) Bx2))
            By1)
	   (*
            (+ (* 3 Aw1 Ax1 Bw1)
               (* -2 (expt Aw1 2) Bx1))
            By2))
	Cw1)
       (*
	(+ (* 3 Aw1 Ay1 Bw1 Bw2)
	   (* -2 (expt Aw1 2) Bw2 By1)
	   (* -1 (expt Aw1 2) Bw1 By2))
	Cx1))
      (expt Cx2 2))
     (*
      (+
       (*
	(+
	 (* -3 (expt Ax1 2) Bw2 Bx1)
	 (*
          (+ (* (expt Ax1 2) Bw1)
             (* 2 Aw1 Ax1 Bx1))
          Bx2))
	(expt Cw2 2))
       (*
	(+
	 (* 2 (expt Ax1 2) Bw1 Bw2)
	 (* 4 Aw1 Ax1 Bw2 Bx1)
	 (*
          (+ (* -4 Aw1 Ax1 Bw1)
             (* -2 (expt Aw1 2) Bx1))
          Bx2))
	Cw2 Cx2)
       (*
	(+ (* -2 Aw1 Ax1 Bw1 Bw2)
	   (* -1 (expt Aw1 2) Bw2 Bx1)
	   (* 3 (expt Aw1 2) Bw1 Bx2))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -2 Ax1 Bw1 Bw2 (expt Bx1 2))
	 (* 2 Aw1 Bw2 (expt Bx1 3))
	 (*
          (+
           (* 2 Ax1 (expt Bw1 2) Bx1)
           (* -2 Aw1 Bw1 (expt Bx1 2)))
          Bx2)
	 (*
          (+
           (* 2 (expt Ax1 2) Bw2 Bx1)
           (*
            (+
             (* -3 (expt Ax1 2) Bw1)
             (* Aw1 Ax1 Bx1))
            Bx2))
          Cw1))
	Cw2)
       (*
	(+
	 (* 4 (expt Ax1 2) Bw1 Bw2)
	 (* -6 Aw1 Ax1 Bw2 Bx1)
	 (*
          (+ (* -1 Aw1 Ax1 Bw1)
             (* 3 (expt Aw1 2) Bx1))
          Bx2))
	Cw2 Cx1)
       (*
	(+
	 (* 2 Ax1 (expt Bw1 2) Bw2 Bx1)
	 (* -2 Aw1 Bw1 Bw2 (expt Bx1 2))
	 (*
          (+ (* -2 Ax1 (expt Bw1 3))
             (* 2 Aw1 (expt Bw1 2) Bx1))
          Bx2)
	 (*
          (+
           (* -3 (expt Ax1 2) Bw1 Bw2)
           (* Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* 6 Aw1 Ax1 Bw1)
               (* -4 (expt Aw1 2) Bx1))
            Bx2))
          Cw1)
	 (*
          (+ (* -1 Aw1 Ax1 Bw1 Bw2)
             (* 3 (expt Aw1 2) Bw2 Bx1)
             (* -2 (expt Aw1 2) Bw1 Bx2))
          Cx1))
	Cx2))
      Cy2)
     (*
      (+
       (*
	(+
	 (* 3 (expt Ax1 2) Ay1 Bx2)
	 (* -3 (expt Ax1 3) By2))
	(expt Cw2 2))
       (*
	(+
	 (* 6 (expt Ax1 2) Ay1 Bw2)
	 (* -12 Aw1 Ax1 Ay1 Bx2)
	 (* 6 Aw1 (expt Ax1 2) By2))
	Cw2 Cx2)
       (*
	(+ (* -6 Aw1 Ax1 Ay1 Bw2)
	   (* 9 (expt Aw1 2) Ay1 Bx2)
	   (* -3 (expt Aw1 2) Ax1 By2))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+ (* -6 (expt Ax1 3) Bw2)
             (* 6 Aw1 (expt Ax1 2) Bx2))
          Cw2)
	 (*
          (+
           (* 6 Aw1 (expt Ax1 2) Bw2)
           (* -6 (expt Aw1 2) Ax1 Bx2))
          Cx2))
	Cy2))
      Dw1)
     (*
      (+
       (*
	(+
	 (* -9 (expt Ax1 2) Ay1 Bw2)
	 (* 6 Aw1 Ax1 Ay1 Bx2)
	 (* 3 Aw1 (expt Ax1 2) By2))
	(expt Cw2 2))
       (*
	(+ (* 12 Aw1 Ax1 Ay1 Bw2)
	   (* -6 (expt Aw1 2) Ay1 Bx2)
	   (* -6 (expt Aw1 2) Ax1 By2))
	Cw2 Cx2)
       (*
	(+
	 (* -3 (expt Aw1 2) Ay1 Bw2)
	 (* 3 (expt Aw1 3) By2))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+
           (* 6 Aw1 (expt Ax1 2) Bw2)
           (* -6 (expt Aw1 2) Ax1 Bx2))
          Cw2)
	 (*
          (+
           (* -6 (expt Aw1 2) Ax1 Bw2)
           (* 6 (expt Aw1 3) Bx2))
          Cx2))
	Cy2))
      Dx1))
    (expt Dy1 2))
   (*
    (+
     (*
      (+ (* 3 (expt Ax1 3) Bw2)
	 (* -3 Aw1 (expt Ax1 2) Bx2))
      (expt Cw2 2))
     (*
      (+
       (* -6 Aw1 (expt Ax1 2) Bw2)
       (* 6 (expt Aw1 2) Ax1 Bx2))
      Cw2 Cx2)
     (*
      (+
       (* 3 (expt Aw1 2) Ax1 Bw2)
       (* -3 (expt Aw1 3) Bx2))
      (expt Cx2 2)))
    (expt Dy1 3))))

(defun intersection-rational-power-basis-cubic/quadratic-c2
    (Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1 Ax2 Bx2 Cx2 Ay2 By2 Cy2 Aw2 Bw2 Cw2)
  (+
   (*
    (+
     (*
      (+
       (*
	(+ (* -1 Ay1 Bx1 Bx2 By1)
	   (* Ax1 Bx2 (expt By1 2)))
	By2)
       (*
	(+ (* Ay1 (expt Bx1 2))
	   (* -1 Ax1 Bx1 By1))
	(expt By2 2)))
      Cw1 Cw2 Cx1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2 Ay1 Bw2 Bx1)
	       (* -1 Ay1 Bw1 Bx2))
            By1)
           (*
            (+ (* -2 Ax1 Bw2)
	       (* Aw1 Bx2))
            (expt By1 2)))
          By2)
	 (*
          (+ (* -1 Ay1 Bw1 Bx1)
	     (*
	      (+ (* 2 Ax1 Bw1)
		 (* -1 Aw1 Bx1))
	      By1))
          (expt By2 2))
	 (*
          (+
           (* 2 (expt Ay1 2) Bx2 By2)
           (* -2 Ax1 Ay1 (expt By2 2)))
          Cw1))
	Cw2)
       (*
	(+ (* Ay1 Ay2 Bx1 By1)
	   (* -1 Ax1 Ay2 (expt By1 2)))
	(expt Cw2 2)))
      (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (* -2 (expt Ay1 2) Bw2 By2)
	 (* 2 Aw1 Ay1 (expt By2 2)))
	Cw2)
       (* -1 (expt Ay1 2) Ay2
	  (expt Cw2 2)))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+
             (*
              (+ (* -1 Ay1 Bw2 Bx1)
		 (* 2 Ay1 Bw1 Bx2))
              By1)
             (*
              (+ (* Ax1 Bw2)
		 (* -2 Aw1 Bx2))
              (expt By1 2)))
            By2)
           (*
            (+ (* -1 Ay1 Bw1 Bx1)
	       (*
		(+ (* -1 Ax1 Bw1)
		   (* 2 Aw1 Bx1))
		By1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -2 (expt Ay1 2) Bx2 By2)
           (* 2 Ax1 Ay1 (expt By2 2)))
          (expt Cw1 2))
	 (*
          (+ (* -1 Ay1 Ay2 Bx1 By1)
	     (* Ax1 Ay2 (expt By1 2)))
          Cw1 Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* -1 Ay1 Bw1 Bw2 By1)
	     (* Aw1 Bw2 (expt By1 2)))
          By2)
	 (*
          (+ (* Ay1 (expt Bw1 2))
	     (* -1 Aw1 Bw1 By1))
          (expt By2 2))
	 (*
          (+
           (* 2 (expt Ay1 2) Bw2 By2)
           (* -2 Aw1 Ay1 (expt By2 2)))
          Cw1)
	 (*
          (+ (* -1 Ay1 Ay2 Bw1 By1)
	     (* Aw1 Ay2 (expt By1 2))
	     (* 2 (expt Ay1 2) Ay2 Cw1))
          Cw2))
	(expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+ (* Ay1 Ay2 Bw1 By1)
	   (* -1 Aw1 Ay2 (expt By1 2)))
	Cw1)
       (* -1 (expt Ay1 2) Ay2
	  (expt Cw1 2)))
      Cx1 (expt Cx2 2))
     (*
      (+
       (*
	(+
	 (* Ay1 Bx1 (expt Bx2 2) By1)
	 (* -1 Ax1 (expt Bx2 2)
	    (expt By1 2))
	 (*
          (+
           (* -1 Ay1 (expt Bx1 2) Bx2)
           (* Ax1 Bx1 Bx2 By1))
          By2))
	Cw1 Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -2 Ay1 Bw2 Bx1 Bx2)
	       (* Ay1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* 2 Ax1 Bw2 Bx2)
	       (* -1 Aw1 (expt Bx2 2)))
            (expt By1 2))
           (*
            (+
             (* -2 Ay1 Bw2 (expt Bx1 2))
             (* 3 Ay1 Bw1 Bx1 Bx2)
             (*
              (+ (* 2 Ax1 Bw2 Bx1)
		 (* -3 Ax1 Bw1 Bx2))
              By1))
            By2)
           (*
            (+ (* -1 Ax1 Bw1 Bx1)
	       (* Aw1 (expt Bx1 2)))
            (expt By2 2))
           (*
            (+
             (* -2 (expt Ay1 2)
		(expt Bx2 2))
             (* 2 (expt Ax1 2)
		(expt By2 2)))
            Cw1))
          Cw2)
	 (*
          (+
           (* -1 Ay1 Ay2 (expt Bx1 2))
           (*
            (+ (* -1 Ax2 Ay1)
	       (* Ax1 Ay2))
            Bx1 By1)
           (* Ax1 Ax2 (expt By1 2)))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (*
          (+
           (* 2 (expt Ay1 2) Bw2 Bx2)
           (*
            (+ (* 4 Ax1 Ay1 Bw2)
	       (* -4 Aw1 Ay1 Bx2))
            By2)
           (* -2 Aw1 Ax1 (expt By2 2)))
          Cw2)
	 (*
          (+ (* Ax2 (expt Ay1 2))
	     (* 2 Ax1 Ay1 Ay2))
          (expt Cw2 2)))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2 Ay1 Bw2 Bx1 Bx2)
	       (* -3 Ay1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* -2 Ax1 Bw2 Bx2)
	       (* 3 Aw1 (expt Bx2 2)))
            (expt By1 2))
           (*
            (+
             (* -1 Ay1 Bw2 (expt Bx1 2))
             (* 2 Ay1 Bw1 Bx1 Bx2)
             (*
              (+ (* Ax1 Bw2 Bx1)
		 (*
		  (+ (* 2 Ax1 Bw1)
		     (* -4 Aw1 Bx1))
		  Bx2))
              By1))
            By2)
           (*
            (+ (* -1 Ax1 Bw1 Bx1)
	       (* Aw1 (expt Bx1 2)))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* 3 (expt Ay1 2)
	      (expt Bx2 2))
           (* -4 Ax1 Ay1 Bx2 By2)
           (* (expt Ax1 2)
	      (expt By2 2)))
          (expt Cw1 2))
	 (*
          (+
           (* -1 Ay1 Ay2 (expt Bx1 2))
           (*
            (+ (* 2 Ax2 Ay1)
	       (* Ax1 Ay2))
            Bx1 By1)
           (* -2 Ax1 Ax2 (expt By1 2)))
          Cw1 Cw2)
	 (*
          (+
           (*
            (+
             (* -1 Ay1 (expt Bw2 2) Bx1)
             (* 2 Ay1 Bw1 Bw2 Bx2))
            By1)
           (*
            (+ (* Ax1 (expt Bw2 2))
	       (* -2 Aw1 Bw2 Bx2))
            (expt By1 2))
           (*
            (+ (* 3 Ay1 Bw1 Bw2 Bx1)
	       (* -4 Ay1 (expt Bw1 2) Bx2)
	       (*
		(+ (* -3 Ax1 Bw1 Bw2)
		   (* 4 Aw1 Bw1 Bx2))
		By1))
            By2)
           (*
            (+
             (* 2 Ax1 (expt Bw1 2))
             (* -2 Aw1 Bw1 Bx1))
            (expt By2 2))
           (*
            (+
             (* -4 (expt Ay1 2) Bw2 Bx2)
             (* 8 Aw1 Ay1 Bx2 By2)
             (* -4 Aw1 Ax1 (expt By2 2)))
            Cw1)
           (*
            (+ (* 3 Ay1 Ay2 Bw1 Bx1)
	       (*
		(+
		 (*
		  (+ (* 2 Ax2 Ay1)
		     (* -3 Ax1 Ay2))
		  Bw1)
		 (* -2 Aw2 Ay1 Bx1))
		By1)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		(expt By1 2))
	       (* -4 Ax2 (expt Ay1 2) Cw1))
            Cw2))
          Cx1)
	 (*
          (+
           (* (expt Ay1 2)
	      (expt Bw2 2))
           (* -4 Aw1 Ay1 Bw2 By2)
           (* 3 (expt Aw1 2)
	      (expt By2 2))
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            Cw2))
          (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+ (* Ay1 Ay2 Bw1 Bx1)
	     (*
	      (+
	       (*
		(+ (* -3 Ax2 Ay1)
		   (* Ax1 Ay2))
		Bw1)
	       (*
		(+ (* Aw2 Ay1)
		   (* -2 Aw1 Ay2))
		Bx1))
	      By1)
	     (*
	      (+ (* -1 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
	      (expt By1 2)))
          Cw1)
	 (*
          (+ (* 3 Ax2 (expt Ay1 2))
	     (* -2 Ax1 Ay1 Ay2))
          (expt Cw1 2))
	 (*
          (+
           (* -2 Ay1 Ay2 (expt Bw1 2))
           (*
            (+ (* Aw2 Ay1)
	       (* 2 Aw1 Ay2))
            Bw1 By1)
           (* -1 Aw1 Aw2 (expt By1 2))
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Cw1))
          Cx1))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* 2 Ay1 Bw2 (expt Bx1 2) Bx2)
	 (* -2 Ay1 Bw1 Bx1 (expt Bx2 2))
	 (*
          (+ (* -2 Ax1 Bw2 Bx1 Bx2)
	     (*
	      (+ (* Ax1 Bw1)
		 (* Aw1 Bx1))
	      (expt Bx2 2)))
          By1)
	 (*
          (+ (* Ax1 Bw1 Bx1)
	     (* -1 Aw1 (expt Bx1 2)))
          Bx2 By2)
	 (*
          (+
           (* 2 Ax1 Ay1 (expt Bx2 2))
           (* -2 (expt Ax1 2) Bx2 By2))
          Cw1))
	Cw2)
       (*
	(+
	 (* Ax2 Ay1 (expt Bx1 2))
	 (* -1 Ax1 Ax2 Bx1 By1))
	(expt Cw2 2))
       (*
	(+
	 (*
          (+ (* -4 Ax1 Ay1 Bw2 Bx2)
	     (* 2 Aw1 Ay1 (expt Bx2 2))
	     (*
	      (+
	       (* -2 (expt Ax1 2) Bw2)
	       (* 4 Aw1 Ax1 Bx2))
	      By2))
          Cw2)
	 (*
          (+ (* -2 Ax1 Ax2 Ay1)
	     (* -1 (expt Ax1 2) Ay2))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (* Ay1 (expt Bw2 2)
	    (expt Bx1 2))
	 (* -4 Ay1 Bw1 Bw2 Bx1 Bx2)
	 (* 3 Ay1 (expt Bw1 2)
	    (expt Bx2 2))
	 (*
          (+
           (* -1 Ax1 (expt Bw2 2) Bx1)
           (*
            (+ (* 2 Ax1 Bw1 Bw2)
	       (* 2 Aw1 Bw2 Bx1))
            Bx2)
           (* -3 Aw1 Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+ (* Ax1 Bw1 Bw2 Bx1)
	     (* -1 Aw1 Bw2 (expt Bx1 2))
	     (*
	      (+
	       (* -2 Ax1 (expt Bw1 2))
	       (* 2 Aw1 Bw1 Bx1))
	      Bx2))
          By2)
	 (*
          (+ (* 4 Ax1 Ay1 Bw2 Bx2)
	     (* -6 Aw1 Ay1 (expt Bx2 2))
	     (*
	      (+
	       (* -2 (expt Ax1 2) Bw2)
	       (* 4 Aw1 Ax1 Bx2))
	      By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            (expt Bx1 2))
           (*
            (+ (* 2 Ax1 Ax2 Bw1)
	       (*
		(+ (* -2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Bx1))
            By1)
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            Cw1))
          Cw2)
	 (*
          (+
           (* -2 Ax1 Ay1 (expt Bw2 2))
           (* 4 Aw1 Ay1 Bw2 Bx2)
           (*
            (+ (* 4 Aw1 Ax1 Bw2)
	       (* -6 (expt Aw1 2) Bx2))
            By2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Cw2))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* 3 Ax2 Ay1)
	     (* -1 Ax1 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* -2 Aw2 Ay1)
	     (* Aw1 Ay2))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* Aw2 Ax1)
	       (* -3 Aw1 Ax2))
            Bw1)
           (* Aw1 Aw2 Bx1))
          By1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1)
	       (* -6 Aw1 Ax2))
            Ay1)
           (* 2 Aw1 Ax1 Ay2))
          Cw1)
	 (*
          (+ (* 2 Aw1 Aw2 Ay1)
	     (* -3 (expt Aw1 2) Ay2))
          Cx1))
	(expt Cx2 2)))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (* 2 (expt Ax1 2) Bw2 Bx2)
	 (* -2 Aw1 Ax1 (expt Bx2 2)))
	Cw2)
       (* (expt Ax1 2) Ax2
	  (expt Cw2 2))
       (*
	(+
	 (* (expt Ax1 2)
	    (expt Bw2 2))
	 (* -4 Aw1 Ax1 Bw2 Bx2)
	 (* 3 (expt Aw1 2)
	    (expt Bx2 2))
	 (*
          (+ (* 2 Aw2 (expt Ax1 2))
	     (* -4 Aw1 Ax1 Ax2))
          Cw2))
	Cx2)
       (*
	(+ (* -2 Aw1 Aw2 Ax1)
	   (* 3 (expt Aw1 2) Ax2))
	(expt Cx2 2)))
      (expt Cy1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* -1 Ay1 Bw2 Bx1 Bx2)
	       (* Ay1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* Ax1 Bw2 Bx2)
	       (* -1 Aw1 (expt Bx2 2)))
            (expt By1 2))
           (*
            (+
             (* 2 Ay1 Bw2 (expt Bx1 2))
             (* -2 Ay1 Bw1 Bx1 Bx2)
             (*
              (+ (* -2 Ax1 Bw2 Bx1)
		 (*
		  (+ (* -2 Ax1 Bw1)
		     (* 4 Aw1 Bx1))
		  Bx2))
              By1))
            By2)
           (*
            (+ (* 3 Ax1 Bw1 Bx1)
	       (* -3 Aw1 (expt Bx1 2)))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -1 (expt Ay1 2)
	      (expt Bx2 2))
           (* 4 Ax1 Ay1 Bx2 By2)
           (* -3 (expt Ax1 2)
	      (expt By2 2)))
          (expt Cw1 2))
	 (*
          (+
           (* 2 Ay1 Ay2 (expt Bx1 2))
           (*
            (+ (* -1 Ax2 Ay1)
	       (* -2 Ax1 Ay2))
            Bx1 By1)
           (* Ax1 Ax2 (expt By1 2)))
          Cw1 Cw2))
	Cx1)
       (*
	(+
	 (*
          (+
           (* Ay1 (expt Bw2 2) Bx1)
           (* -1 Ay1 Bw1 Bw2 Bx2))
          By1)
	 (*
          (+ (* -1 Ax1 (expt Bw2 2))
	     (* Aw1 Bw2 Bx2))
          (expt By1 2))
	 (*
          (+ (* -2 Ay1 Bw1 Bw2 Bx1)
	     (* 2 Ay1 (expt Bw1 2) Bx2)
	     (*
	      (+ (* 4 Ax1 Bw1 Bw2)
		 (* -2 Aw1 Bw2 Bx1)
		 (* -2 Aw1 Bw1 Bx2))
	      By1))
          By2)
	 (*
          (+ (* -3 Ax1 (expt Bw1 2))
	     (* 3 Aw1 Bw1 Bx1))
          (expt By2 2))
	 (*
          (+
           (* 2 (expt Ay1 2) Bw2 Bx2)
           (*
            (+ (* -4 Ax1 Ay1 Bw2)
	       (* -4 Aw1 Ay1 Bx2))
            By2)
           (* 6 Aw1 Ax1 (expt By2 2)))
          Cw1)
	 (*
          (+ (* -2 Ay1 Ay2 Bw1 Bx1)
	     (*
	      (+
	       (*
		(+ (* -1 Ax2 Ay1)
		   (* 4 Ax1 Ay2))
		Bw1)
	       (*
		(+ (* 2 Aw2 Ay1)
		   (* -2 Aw1 Ay2))
		Bx1))
	      By1)
	     (*
	      (+ (* -2 Aw2 Ax1)
		 (* Aw1 Ax2))
	      (expt By1 2))
	     (*
	      (+
	       (* 2 Ax2 (expt Ay1 2))
	       (* -4 Ax1 Ay1 Ay2))
	      Cw1))
          Cw2))
	(expt Cx1 2))
       (*
	(+
	 (* -1 (expt Ay1 2)
	    (expt Bw2 2))
	 (* 4 Aw1 Ay1 Bw2 By2)
	 (* -3 (expt Aw1 2)
	    (expt By2 2))
	 (*
          (+ (* -2 Aw2 (expt Ay1 2))
	     (* 4 Aw1 Ay1 Ay2))
          Cw2))
	(expt Cx1 3))
       (*
	(+
	 (*
          (+
           (*
            (+ (* -2 Ay1 Ay2 Bw1 Bx1)
	       (*
		(+
		 (*
		  (+ (* 2 Ax2 Ay1)
		     (* -2 Ax1 Ay2))
		  Bw1)
		 (*
		  (+ (* -1 Aw2 Ay1)
		     (* 4 Aw1 Ay2))
		  Bx1))
		By1)
	       (*
		(+ (* Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		(expt By1 2)))
            Cw1)
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            (expt Cw1 2)))
          Cx1)
	 (*
          (+
           (* 2 Ay1 Ay2 (expt Bw1 2))
           (*
            (+ (* -1 Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            Bw1 By1)
           (* Aw1 Aw2 (expt By1 2))
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            Cw1))
          (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (* -1 Ay1 Bw2 (expt Bx1 2)
	      Bx2)
           (* Ay1 Bw1 Bx1 (expt Bx2 2))
           (*
            (+ (* Ax1 Bw2 Bx1 Bx2)
	       (*
		(+ (* Ax1 Bw1)
		   (* -2 Aw1 Bx1))
		(expt Bx2 2)))
            By1)
           (*
            (+ (* -2 Ax1 Bw1 Bx1)
	       (* 2 Aw1 (expt Bx1 2)))
            Bx2 By2))
          Cw1)
	 (*
          (+
           (* -2 Ax1 Ay1 (expt Bx2 2))
           (* 2 (expt Ax1 2) Bx2 By2))
          (expt Cw1 2))
	 (*
          (+
           (* -1 Ax2 Ay1 (expt Bx1 2))
           (* Ax1 Ax2 Bx1 By1))
          Cw1 Cw2)
	 (*
          (+
           (* -1 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* 3 Ay1 Bw1 Bw2 Bx1 Bx2)
           (* -2 Ay1 (expt Bw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* Ax1 (expt Bw2 2) Bx1)
             (* -3 Ax1 Bw1 Bw2 Bx2)
             (* 2 Aw1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* -2 Ax1 Bw1 Bw2 Bx1)
	       (* 2 Aw1 Bw2 (expt Bx1 2))
	       (*
		(+
		 (* 4 Ax1 (expt Bw1 2))
		 (* -4 Aw1 Bw1 Bx1))
		Bx2))
            By2)
           (*
            (+
             (* 4 Aw1 Ay1 (expt Bx2 2))
             (*
              (+
               (* 4 (expt Ax1 2) Bw2)
               (* -8 Aw1 Ax1 Bx2))
              By2))
            Cw1)
           (*
            (+
             (*
              (+ (* 3 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -2 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              (expt Bx1 2))
             (*
              (+ (* -3 Ax1 Ax2 Bw1)
		 (* 2 Aw2 Ax1 Bx1))
              By1)
             (* 4 (expt Ax1 2) Ay2 Cw1))
            Cw2))
          Cx1)
	 (*
          (+
           (* 2 Ax1 Ay1 (expt Bw2 2))
           (* -4 Aw1 Ay1 Bw2 Bx2)
           (*
            (+ (* -4 Aw1 Ax1 Bw2)
	       (* 6 (expt Aw1 2) Bx2))
            By2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Cw2))
          (expt Cx1 2))
	 (*
          (+
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -1 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              (expt Bx1 2))
             (*
              (+ (* 2 Ax1 Ax2 Bw1)
		 (*
		  (+ (* Aw2 Ax1)
		     (* -4 Aw1 Ax2))
		  Bx1))
              By1))
            Cw1)
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            (expt Cw1 2))
           (*
            (+
             (*
              (+ (* -4 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* 3 Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -3 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Bw1 By1)
             (*
              (+ (* 8 Aw1 Ax2 Ay1)
		 (* -8 Aw1 Ax1 Ay2))
              Cw1))
            Cx1)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 6 (expt Aw1 2) Ay2))
            (expt Cx1 2)))
          Cx2))
	Cy1)
       (*
	(+
	 (*
          (+ (* Ax1 Bw1 Bw2 Bx1)
	     (* -1 Aw1 Bw2 (expt Bx1 2)))
          Bx2)
	 (*
          (+ (* -1 Ax1 (expt Bw1 2))
	     (* Aw1 Bw1 Bx1))
          (expt Bx2 2))
	 (*
          (+
           (* -2 (expt Ax1 2) Bw2 Bx2)
           (* 2 Aw1 Ax1 (expt Bx2 2)))
          Cw1)
	 (*
          (+ (* Ax1 Ax2 Bw1 Bx1)
	     (* -1 Aw1 Ax2 (expt Bx1 2))
	     (* -2 (expt Ax1 2) Ax2 Cw1))
          Cw2)
	 (*
          (+
           (* -1 (expt Ax1 2)
	      (expt Bw2 2))
           (* 4 Aw1 Ax1 Bw2 Bx2)
           (* -3 (expt Aw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Cw2))
          Cx1)
	 (*
          (+
           (* -2 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* Aw2 Ax1)
	       (* 2 Aw1 Ax2))
            Bw1 Bx1)
           (* -1 Aw1 Aw2 (expt Bx1 2))
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Cw1)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -6 (expt Aw1 2) Ax2))
            Cx1))
          Cx2))
	(expt Cy1 2)))
      Cy2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
	       (* 3 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* Aw2 Ay1)
	       (* -3 Aw1 Ay2))
            (expt Bx1 2))
           (*
            (+ (* -1 Ax1 Ax2 Bw1)
	       (*
		(+ (* -1 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Bx1))
            By1))
          Cw1)
	 (*
          (+ (* 2 Ax1 Ax2 Ay1)
	     (* -3 (expt Ax1 2) Ay2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (*
          (+ (* Ax2 Ay1)
	     (* -3 Ax1 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* -1 Aw2 Ay1)
	     (* 3 Aw1 Ay2))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1)
	       (* -1 Aw1 Ax2))
            Bw1)
           (* -1 Aw1 Aw2 Bx1))
          By1)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
	       (* -2 Aw1 Ax2))
            Ay1)
           (* 6 Aw1 Ax1 Ay2))
          Cw1))
	(expt Cx1 2))
       (*
	(+ (* 2 Aw1 Aw2 Ay1)
	   (* -3 (expt Aw1 2) Ay2))
	(expt Cx1 3))
       (*
	(+
	 (*
          (+ (* -1 Ax1 Ax2 Bw1 Bx1)
	     (* Aw1 Ax2 (expt Bx1 2)))
          Cw1)
	 (* (expt Ax1 2) Ax2
	    (expt Cw1 2))
	 (*
          (+
           (* 2 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -1 Aw2 Ax1)
	       (* -2 Aw1 Ax2))
            Bw1 Bx1)
           (* Aw1 Aw2 (expt Bx1 2))
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Cw1))
          Cx1)
	 (*
          (+ (* -2 Aw1 Aw2 Ax1)
	     (* 3 (expt Aw1 2) Ax2))
          (expt Cx1 2)))
	Cy1))
      (expt Cy2 2)))
    Dw1)
   (*
    (+
     (*
      (+
       (* -1 Ay1 Bx1 (expt Bx2 2)
	  (expt By1 2))
       (* Ax1 (expt Bx2 2)
	  (expt By1 3))
       (*
	(+
	 (* 2 Ay1 (expt Bx1 2) Bx2 By1)
	 (* -2 Ax1 Bx1 Bx2 (expt By1 2)))
	By2)
       (*
	(+ (* -1 Ay1 (expt Bx1 3))
	   (* Ax1 (expt Bx1 2) By1))
	(expt By2 2)))
      Cw2)
     (*
      (+
       (* (expt Ay1 2)
	  (expt Bx2 2) By1)
       (*
	(+
	 (* -3 (expt Ay1 2) Bx1 Bx2)
	 (* Ax1 Ay1 Bx2 By1))
	By2)
       (*
	(+ (* 3 Ax1 Ay1 Bx1)
	   (* -2 (expt Ax1 2) By1))
	(expt By2 2)))
      Cw2 Cx1)
     (*
      (+
       (*
	(+ (* -2 Ay1 Bw2 Bx1 Bx2)
	   (* 3 Ay1 Bw1 (expt Bx2 2)))
	(expt By1 2))
       (*
	(+ (* 2 Ax1 Bw2 Bx2)
	   (* -3 Aw1 (expt Bx2 2)))
	(expt By1 3))
       (*
	(+
	 (*
          (+
           (* 2 Ay1 Bw2 (expt Bx1 2))
           (* -4 Ay1 Bw1 Bx1 Bx2))
          By1)
	 (*
          (+ (* -2 Ax1 Bw2 Bx1)
	     (*
	      (+ (* -2 Ax1 Bw1)
		 (* 6 Aw1 Bx1))
	      Bx2))
          (expt By1 2)))
	By2)
       (*
	(+
	 (* Ay1 Bw1 (expt Bx1 2))
	 (*
          (+ (* 2 Ax1 Bw1 Bx1)
	     (* -3 Aw1 (expt Bx1 2)))
          By1))
	(expt By2 2))
       (*
	(+
	 (* -3 (expt Ay1 2)
	    (expt Bx2 2) By1)
	 (*
          (+
           (* 2 (expt Ay1 2) Bx1 Bx2)
           (* 4 Ax1 Ay1 Bx2 By1))
          By2)
	 (*
          (+ (* -2 Ax1 Ay1 Bx1)
	     (* -1 (expt Ax1 2) By1))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* 2 Ay1 Ay2 (expt Bx1 2) By1)
	 (*
          (+ (* -2 Ax2 Ay1)
	     (* -2 Ax1 Ay2))
          Bx1 (expt By1 2))
	 (* 2 Ax1 Ax2 (expt By1 3)))
	Cw2)
       (*
	(+
	 (* 2 (expt Ay1 2) Bw2 Bx2 By1)
	 (*
          (+
           (* -3 (expt Ay1 2) Bw2 Bx1)
           (* 4 (expt Ay1 2) Bw1 Bx2)
           (*
            (+ (* Ax1 Ay1 Bw2)
	       (* -6 Aw1 Ay1 Bx2))
            By1))
          By2)
	 (*
          (+ (* -4 Ax1 Ay1 Bw1)
	     (* 3 Aw1 Ay1 Bx1)
	     (* 3 Aw1 Ax1 By1))
          (expt By2 2))
	 (*
          (+
           (* -3 (expt Ay1 2) Ay2 Bx1)
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* Ax1 Ay1 Ay2))
            By1))
          Cw2))
	Cx1))
      Cx2)
     (*
      (+ (* -2 Ay1 Ay2 Bw1 Bx1 By1)
	 (*
	  (+
	   (*
            (+ (* 3 Ax2 Ay1)
	       (* -1 Ax1 Ay2))
            Bw1)
	   (*
            (+ (* -1 Aw2 Ay1)
	       (* 3 Aw1 Ay2))
            Bx1))
	  (expt By1 2))
	 (*
	  (+ (* Aw2 Ax1)
	     (* -3 Aw1 Ax2))
	  (expt By1 3))
	 (*
	  (+
	   (* (expt Ay1 2) Ay2 Bx1)
	   (*
            (+ (* -3 Ax2 (expt Ay1 2))
	       (* 2 Ax1 Ay1 Ay2))
            By1))
	  Cw1)
	 (*
	  (+
	   (* 2 (expt Ay1 2) Ay2 Bw1)
	   (*
            (+ (* Aw2 (expt Ay1 2))
	       (* -3 Aw1 Ay1 Ay2))
            By1))
	  Cx1))
      (expt Cx2 2))
     (*
      (+
       (*
	(+
	 (* 2 (expt Ay1 2) Bx1
	    (expt Bx2 2))
	 (* -3 Ax1 Ay1 (expt Bx2 2) By1)
	 (*
          (+ (* -1 Ax1 Ay1 Bx1 Bx2)
	     (* 3 (expt Ax1 2) Bx2 By1))
          By2)
	 (* -1 (expt Ax1 2) Bx1
	    (expt By2 2)))
	Cw2)
       (*
	(+
	 (* 4 (expt Ay1 2) Bw2 Bx1 Bx2)
	 (* -6 (expt Ay1 2) Bw1
	    (expt Bx2 2))
	 (*
          (+ (* -6 Ax1 Ay1 Bw2 Bx2)
	     (* 9 Aw1 Ay1 (expt Bx2 2)))
          By1)
	 (*
          (+ (* -1 Ax1 Ay1 Bw2 Bx1)
	     (*
	      (+ (* 8 Ax1 Ay1 Bw1)
		 (* -6 Aw1 Ay1 Bx1))
	      Bx2)
	     (*
	      (+
	       (* 3 (expt Ax1 2) Bw2)
	       (* -6 Aw1 Ax1 Bx2))
	      By1))
          By2)
	 (*
          (+ (* -2 (expt Ax1 2) Bw1)
	     (* 3 Aw1 Ax1 Bx1))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* 4 Ax2 (expt Ay1 2))
             (* -1 Ax1 Ay1 Ay2))
            Bx1)
           (*
            (+ (* -6 Ax1 Ax2 Ay1)
	       (* 3 (expt Ax1 2) Ay2))
            By1))
          Cw2))
	Cx2)
       (*
	(+
	 (*
          (+ (* -6 Ax2 (expt Ay1 2))
	     (* 4 Ax1 Ay1 Ay2))
          Bw1)
	 (*
          (+ (* 2 Aw2 (expt Ay1 2))
	     (* -3 Aw1 Ay1 Ay2))
          Bx1)
	 (*
          (+
           (*
            (+ (* -3 Aw2 Ax1)
	       (* 9 Aw1 Ax2))
            Ay1)
           (* -3 Aw1 Ax1 Ay2))
          By1))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* 2 Ay1 Bw2 (expt Bx1 2) Bx2)
	 (* -2 Ay1 Bw1 Bx1 (expt Bx2 2)))
	By1)
       (*
	(+ (* -2 Ax1 Bw2 Bx1 Bx2)
	   (*
	    (+ (* -1 Ax1 Bw1)
	       (* 3 Aw1 Bx1))
	    (expt Bx2 2)))
	(expt By1 2))
       (*
	(+
	 (* -2 Ay1 Bw2 (expt Bx1 3))
	 (* 2 Ay1 Bw1 (expt Bx1 2) Bx2)
	 (*
          (+
           (* 2 Ax1 Bw2 (expt Bx1 2))
           (*
            (+ (* 4 Ax1 Bw1 Bx1)
	       (* -6 Aw1 (expt Bx1 2)))
            Bx2))
          By1))
	By2)
       (*
	(+
	 (* -3 Ax1 Bw1 (expt Bx1 2))
	 (* 3 Aw1 (expt Bx1 3)))
	(expt By2 2))
       (*
	(+
	 (* (expt Ay1 2) Bx1
	    (expt Bx2 2))
	 (* 2 Ax1 Ay1 (expt Bx2 2) By1)
	 (*
          (+ (* -4 Ax1 Ay1 Bx1 Bx2)
	     (* -2 (expt Ax1 2) Bx2 By1))
          By2)
	 (* 3 (expt Ax1 2) Bx1
	    (expt By2 2)))
	Cw1)
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bx1 3))
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* 2 Ax1 Ay2))
          (expt Bx1 2) By1)
	 (* -2 Ax1 Ax2 Bx1 (expt By1 2)))
	Cw2)
       (*
	(+
	 (* -3 (expt Ay1 2) Bw2 Bx1 Bx2)
	 (* 2 (expt Ay1 2) Bw1
	    (expt Bx2 2))
	 (*
          (+ (* Ax1 Ay1 Bw2 Bx2)
	     (* -3 Aw1 Ay1 (expt Bx2 2)))
          By1)
	 (*
          (+ (* 6 Ax1 Ay1 Bw2 Bx1)
	     (*
	      (+ (* -8 Ax1 Ay1 Bw1)
		 (* 6 Aw1 Ay1 Bx1))
	      Bx2)
	     (*
	      (+
	       (* -4 (expt Ax1 2) Bw2)
	       (* 6 Aw1 Ax1 Bx2))
	      By1))
          By2)
	 (*
          (+ (* 6 (expt Ax1 2) Bw1)
	     (* -9 Aw1 Ax1 Bx1))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* -3 Ax2 (expt Ay1 2))
             (* 6 Ax1 Ay1 Ay2))
            Bx1)
           (*
            (+ (* Ax1 Ax2 Ay1)
	       (* -4 (expt Ax1 2) Ay2))
            By1))
          Cw2))
	Cx1)
       (*
	(+
	 (* 2 Ay1 Ay2 Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -6 Aw1 Ay2))
            (expt Bx1 2)))
          By1)
	 (*
          (+ (* -2 Ax1 Ax2 Bw1)
	     (*
	      (+ (* -2 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
	      Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            Bx1)
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (* 4 Ax2 (expt Ay1 2))
             (* -8 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -3 Aw2 (expt Ay1 2))
             (* 6 Aw1 Ay1 Ay2))
            Bx1)
           (*
            (+
             (*
              (+ (* Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            By1))
          Cx1))
	Cx2)
       (*
	(+
	 (* -1 Ax1 Ay1 Bw2 Bx1 Bx2)
	 (*
          (+ (* 4 Ax1 Ay1 Bw1)
	     (* -3 Aw1 Ay1 Bx1))
          (expt Bx2 2))
	 (*
          (+
           (* 3 (expt Ax1 2) Bw2 Bx2)
           (* -3 Aw1 Ax1 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -2 (expt Ax1 2) Bw2 Bx1)
           (*
            (+
             (* -4 (expt Ax1 2) Bw1)
             (* 6 Aw1 Ax1 Bx1))
            Bx2))
          By2)
	 (*
          (+
           (*
            (+ (* -1 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            Bx1)
           (* 3 (expt Ax1 2) Ax2 By1))
          Cw2)
	 (*
          (+
           (*
            (+ (* 8 Ax1 Ax2 Ay1)
	       (* -4 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            Bx1)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            By1))
          Cx2))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+ (* Ax2 Ay1)
	   (* -3 Ax1 Ay2))
	Bw1 (expt Bx1 2))
       (*
	(+ (* -1 Aw2 Ay1)
	   (* 3 Aw1 Ay2))
	(expt Bx1 3))
       (*
	(+ (* 2 Ax1 Ax2 Bw1 Bx1)
	   (*
	    (+ (* Aw2 Ax1)
	       (* -3 Aw1 Ax2))
	    (expt Bx1 2)))
	By1)
       (*
	(+
	 (*
          (+ (* -2 Ax1 Ax2 Ay1)
	     (* 3 (expt Ax1 2) Ay2))
          Bx1)
	 (* -1 (expt Ax1 2) Ax2 By1))
	Cw1)
       (*
	(+
	 (*
          (+ (* -4 Ax1 Ax2 Ay1)
	     (* 6 (expt Ax1 2) Ay2))
          Bw1)
	 (*
          (+
           (*
            (+ (* 3 Aw2 Ax1)
	       (* 3 Aw1 Ax2))
            Ay1)
           (* -9 Aw1 Ax1 Ay2))
          Bx1)
	 (*
          (+ (* -2 Aw2 (expt Ax1 2))
	     (* 3 Aw1 Ax1 Ax2))
          By1))
	Cx1)
       (*
	(+
	 (* -2 (expt Ax1 2) Ax2 Bw1)
	 (*
          (+ (* -1 Aw2 (expt Ax1 2))
	     (* 3 Aw1 Ax1 Ax2))
          Bx1))
	Cy1))
      (expt Cy2 2)))
    (expt Dw1 2))
   (*
    (+
     (*
      (+
       (* 3 (expt Ay1 3)
	  (expt Bx2 2))
       (* -6 Ax1 (expt Ay1 2) Bx2 By2)
       (* 3 (expt Ax1 2) Ay1
	  (expt By2 2)))
      Cx2)
     (*
      (+ (* 3 Ax2 (expt Ay1 3))
	 (* -3 Ax1 (expt Ay1 2) Ay2))
      (expt Cx2 2))
     (*
      (+
       (* -3 Ax1 (expt Ay1 2)
	  (expt Bx2 2))
       (* 6 (expt Ax1 2) Ay1 Bx2 By2)
       (* -3 (expt Ax1 3)
	  (expt By2 2))
       (*
	(+
	 (* -6 Ax1 Ax2 (expt Ay1 2))
	 (* 6 (expt Ax1 2) Ay1 Ay2))
	Cx2))
      Cy2)
     (*
      (+
       (* 3 (expt Ax1 2) Ax2 Ay1)
       (* -3 (expt Ax1 3) Ay2))
      (expt Cy2 2)))
    (expt Dw1 3))
   (*
    (+
     (*
      (+
       (*
	(+ (* Ay1 Bx1 Bx2 By1)
	   (* -1 Ax1 Bx2 (expt By1 2)))
	By2)
       (*
	(+ (* -1 Ay1 (expt Bx1 2))
	   (* Ax1 Bx1 By1))
	(expt By2 2)))
      (expt Cw1 2) Cw2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+
             (*
              (+ (* -2 Ay1 Bw2 Bx1)
		 (* Ay1 Bw1 Bx2))
              By1)
             (*
              (+ (* 2 Ax1 Bw2)
		 (* -1 Aw1 Bx2))
              (expt By1 2)))
            By2)
           (*
            (+ (* Ay1 Bw1 Bx1)
	       (*
		(+ (* -2 Ax1 Bw1)
		   (* Aw1 Bx1))
		By1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -2 (expt Ay1 2) Bx2 By2)
           (* 2 Ax1 Ay1 (expt By2 2)))
          (expt Cw1 2)))
	Cw2)
       (*
	(+ (* -1 Ay1 Ay2 Bx1 By1)
	   (* Ax1 Ay2 (expt By1 2)))
	Cw1 (expt Cw2 2)))
      Cx1)
     (*
      (+
       (*
	(+
	 (* 2 (expt Ay1 2) Bw2 By2)
	 (* -2 Aw1 Ay1 (expt By2 2)))
	Cw1 Cw2)
       (* (expt Ay1 2) Ay2 Cw1
	  (expt Cw2 2)))
      (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* Ay1 Bw2 Bx1)
	       (* -2 Ay1 Bw1 Bx2))
            By1)
           (*
            (+ (* -1 Ax1 Bw2)
	       (* 2 Aw1 Bx2))
            (expt By1 2)))
          By2)
	 (*
          (+ (* Ay1 Bw1 Bx1)
	     (*
	      (+ (* Ax1 Bw1)
		 (* -2 Aw1 Bx1))
	      By1))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (* 2 (expt Ay1 2) Bx2 By2)
	 (* -2 Ax1 Ay1 (expt By2 2)))
	(expt Cw1 3))
       (*
	(+ (* Ay1 Ay2 Bx1 By1)
	   (* -1 Ax1 Ay2 (expt By1 2)))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* Ay1 Bw1 Bw2 By1)
	       (* -1 Aw1 Bw2 (expt By1 2)))
            By2)
           (*
            (+
             (* -1 Ay1 (expt Bw1 2))
             (* Aw1 Bw1 By1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -2 (expt Ay1 2) Bw2 By2)
           (* 2 Aw1 Ay1 (expt By2 2)))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* Ay1 Ay2 Bw1 By1)
	       (* -1 Aw1 Ay2 (expt By1 2)))
            Cw1)
           (* -2 (expt Ay1 2) Ay2
	      (expt Cw1 2)))
          Cw2))
	Cx1))
      Cx2)
     (*
      (+
       (*
	(+ (* -1 Ay1 Ay2 Bw1 By1)
	   (* Aw1 Ay2 (expt By1 2)))
	(expt Cw1 2))
       (* (expt Ay1 2) Ay2
	  (expt Cw1 3)))
      (expt Cx2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* -2 Ay1 Bw2 Bx1 Bx2)
	       (* Ay1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* 2 Ax1 Bw2 Bx2)
	       (* -1 Aw1 (expt Bx2 2)))
            (expt By1 2))
           (*
            (+
             (* 4 Ay1 Bw2 (expt Bx1 2))
             (* -3 Ay1 Bw1 Bx1 Bx2)
             (*
              (+ (* -4 Ax1 Bw2 Bx1)
		 (* 3 Aw1 Bx1 Bx2))
              By1))
            By2)
           (*
            (+ (* 2 Ax1 Bw1 Bx1)
	       (* -2 Aw1 (expt Bx1 2)))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -1 (expt Ay1 2)
	      (expt Bx2 2))
           (* 4 Ax1 Ay1 Bx2 By2)
           (* -3 (expt Ax1 2)
	      (expt By2 2)))
          (expt Cw1 2)))
	Cw2)
       (*
	(+
	 (* 2 Ay1 Ay2 (expt Bx1 2))
	 (*
          (+ (* -1 Ax2 Ay1)
	     (* -2 Ax1 Ay2))
          Bx1 By1)
	 (* Ax1 Ax2 (expt By1 2)))
	Cw1 (expt Cw2 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 3 Ay1 (expt Bw2 2) Bx1)
             (* -2 Ay1 Bw1 Bw2 Bx2))
            By1)
           (*
            (+
             (* -3 Ax1 (expt Bw2 2))
             (* 2 Aw1 Bw2 Bx2))
            (expt By1 2))
           (*
            (+ (* -2 Ay1 Bw1 Bw2 Bx1)
	       (* Ay1 (expt Bw1 2) Bx2)
	       (*
		(+ (* 4 Ax1 Bw1 Bw2)
		   (* -2 Aw1 Bw2 Bx1)
		   (* -1 Aw1 Bw1 Bx2))
		By1))
            By2)
           (*
            (+
             (* -1 Ax1 (expt Bw1 2))
             (* Aw1 Bw1 Bx1))
            (expt By2 2))
           (*
            (+
             (* 4 (expt Ay1 2) Bw2 Bx2)
             (* -8 Ax1 Ay1 Bw2 By2)
             (* 4 Aw1 Ax1 (expt By2 2)))
            Cw1))
          Cw2)
	 (*
          (+ (* -1 Ay1 Ay2 Bw1 Bx1)
	     (*
	      (+
	       (*
		(+ (* -1 Ax2 Ay1)
		   (* 2 Ax1 Ay2))
		Bw1)
	       (*
		(+ (* 3 Aw2 Ay1)
		   (* -1 Aw1 Ay2))
		Bx1))
	      By1)
	     (*
	      (+ (* -3 Aw2 Ax1)
		 (* Aw1 Ax2))
	      (expt By1 2))
	     (*
	      (+
	       (* 2 Ax2 (expt Ay1 2))
	       (* -4 Ax1 Ay1 Ay2))
	      Cw1))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (*
          (+
           (* -3 (expt Ay1 2)
	      (expt Bw2 2))
           (* 4 Aw1 Ay1 Bw2 By2)
           (* -1 (expt Aw1 2)
	      (expt By2 2)))
          Cw2)
	 (*
          (+ (* -3 Aw2 (expt Ay1 2))
	     (* 2 Aw1 Ay1 Ay2))
          (expt Cw2 2)))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1 Ay1 (expt Bw2 2) Bx1)
             (* 2 Ay1 Bw1 Bw2 Bx2))
            By1)
           (*
            (+ (* Ax1 (expt Bw2 2))
	       (* -2 Aw1 Bw2 Bx2))
            (expt By1 2))
           (*
            (+ (* -3 Ay1 Bw1 Bw2 Bx1)
	       (* 2 Ay1 (expt Bw1 2) Bx2)
	       (*
		(+ (* 3 Aw1 Bw2 Bx1)
		   (* -2 Aw1 Bw1 Bx2))
		By1))
            By2)
           (*
            (+
             (* -1 Ax1 (expt Bw1 2))
             (* Aw1 Bw1 Bx1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -2 (expt Ay1 2) Bw2 Bx2)
           (*
            (+ (* 4 Ax1 Ay1 Bw2)
	       (* -4 Aw1 Ay1 Bx2))
            By2)
           (* 2 Aw1 Ax1 (expt By2 2)))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* -3 Ay1 Ay2 Bw1 Bx1)
	       (*
		(+ (* 2 Ax2 Ay1 Bw1)
		   (*
		    (+ (* -2 Aw2 Ay1)
		       (* 3 Aw1 Ay2))
		    Bx1))
		By1)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		(expt By1 2)))
            Cw1)
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            (expt Cw1 2)))
          Cw2)
	 (*
          (+
           (* -1 Ay1 Bw1 (expt Bw2 2)
	      By1)
           (* Aw1 (expt Bw2 2)
	      (expt By1 2))
           (*
            (+
             (* Ay1 (expt Bw1 2) Bw2)
             (* -1 Aw1 Bw1 Bw2 By1))
            By2)
           (*
            (+
             (* 2 (expt Ay1 2)
		(expt Bw2 2))
             (* -2 (expt Aw1 2)
		(expt By2 2)))
            Cw1)
           (*
            (+
             (* Ay1 Ay2 (expt Bw1 2))
             (*
              (+ (* -2 Aw2 Ay1)
		 (* -1 Aw1 Ay2))
              Bw1 By1)
             (* 2 Aw1 Aw2 (expt By1 2))
             (* 4 Aw2 (expt Ay1 2) Cw1))
            Cw2))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+
           (* Ay1 Ay2 (expt Bw1 2))
           (*
            (+ (* Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            Bw1 By1)
           (* -1 Aw1 Aw2 (expt By1 2)))
          Cw1)
	 (*
          (+ (* -1 Aw2 (expt Ay1 2))
	     (* -2 Aw1 Ay1 Ay2))
          (expt Cw1 2)))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -3 Ay1 (expt Bw2 2)
	    (expt Bx1 2))
	 (* 4 Ay1 Bw1 Bw2 Bx1 Bx2)
	 (* -1 Ay1 (expt Bw1 2)
	    (expt Bx2 2))
	 (*
          (+
           (* 3 Ax1 (expt Bw2 2) Bx1)
           (*
            (+ (* -2 Ax1 Bw1 Bw2)
	       (* -2 Aw1 Bw2 Bx1))
            Bx2)
           (* Aw1 Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+ (* -2 Ax1 Bw1 Bw2 Bx1)
	     (* 2 Aw1 Bw2 (expt Bx1 2))
	     (*
	      (+ (* Ax1 (expt Bw1 2))
		 (* -1 Aw1 Bw1 Bx1))
	      Bx2))
          By2)
	 (*
          (+ (* -4 Ax1 Ay1 Bw2 Bx2)
	     (* 2 Aw1 Ay1 (expt Bx2 2))
	     (*
	      (+
	       (* 6 (expt Ax1 2) Bw2)
	       (* -4 Aw1 Ax1 Bx2))
	      By2))
          Cw1))
	Cw2)
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* -1 Ax1 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* -3 Aw2 Ay1)
	     (* Aw1 Ay2))
          (expt Bx1 2))
	 (*
          (+ (* -1 Ax1 Ax2 Bw1)
	     (*
	      (+ (* 3 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
	      Bx1))
          By1)
	 (*
          (+ (* -2 Ax1 Ax2 Ay1)
	     (* 3 (expt Ax1 2) Ay2))
          Cw1))
	(expt Cw2 2))
       (*
	(+
	 (*
          (+
           (* 6 Ax1 Ay1 (expt Bw2 2))
           (* -4 Aw1 Ay1 Bw2 Bx2)
           (*
            (+ (* -4 Aw1 Ax1 Bw2)
	       (* 2 (expt Aw1 2) Bx2))
            By2))
          Cw2)
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
	       (* -2 Aw1 Ax2))
            Ay1)
           (* -2 Aw1 Ax1 Ay2))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (* 2 Ay1 Bw1 (expt Bw2 2) Bx1)
	 (* -2 Ay1 (expt Bw1 2) Bw2 Bx2)
	 (*
          (+
           (* -1 Ax1 Bw1 (expt Bw2 2))
           (* -1 Aw1 (expt Bw2 2) Bx1)
           (* 2 Aw1 Bw1 Bw2 Bx2))
          By1)
	 (*
          (+
           (* Ax1 (expt Bw1 2) Bw2)
           (* -1 Aw1 Bw1 Bw2 Bx1))
          By2)
	 (*
          (+
           (* -2 Ax1 Ay1 (expt Bw2 2))
           (* 4 Aw1 Ay1 Bw2 Bx2)
           (*
            (+ (* -4 Aw1 Ax1 Bw2)
	       (* 2 (expt Aw1 2) Bx2))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Bw1)
             (* -2 Aw1 Aw2 Bx1))
            By1)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Cw1))
          Cw2)
	 (*
          (+
           (* -2 Aw1 Ay1 (expt Bw2 2))
           (* 2 (expt Aw1 2) Bw2 By2)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            Cw2))
          Cx1))
	Cx2)
       (*
	(+
	 (* -1 Aw2 Ay1 (expt Bw1 2))
	 (* Aw1 Aw2 Bw1 By1)
	 (*
          (+ (* 2 Aw1 Aw2 Ay1)
	     (* (expt Aw1 2) Ay2))
          Cw1))
	(expt Cx2 2)))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (* -3 (expt Ax1 2)
	    (expt Bw2 2))
	 (* 4 Aw1 Ax1 Bw2 Bx2)
	 (* -1 (expt Aw1 2)
	    (expt Bx2 2)))
	Cw2)
       (*
	(+ (* -3 Aw2 (expt Ax1 2))
	   (* 2 Aw1 Ax1 Ax2))
	(expt Cw2 2))
       (*
	(+
	 (* 2 Aw1 Ax1 (expt Bw2 2))
	 (* -2 (expt Aw1 2) Bw2 Bx2)
	 (*
          (+ (* 4 Aw1 Aw2 Ax1)
	     (* -2 (expt Aw1 2) Ax2))
          Cw2))
	Cx2)
       (* -1 (expt Aw1 2) Aw2
	  (expt Cx2 2)))
      (expt Cy1 3))
     (*
      (+
       (*
	(+
	 (*
          (+ (* Ay1 Bw2 Bx1 Bx2)
	     (* -1 Ay1 Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+ (* -1 Ax1 Bw2 Bx2)
	     (* Aw1 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* -2 Ay1 Bw2 (expt Bx1 2))
           (* 2 Ay1 Bw1 Bx1 Bx2)
           (*
            (+ (* 2 Ax1 Bw2 Bx1)
	       (*
		(+ (* 2 Ax1 Bw1)
		   (* -4 Aw1 Bx1))
		Bx2))
            By1))
          By2)
	 (*
          (+ (* -3 Ax1 Bw1 Bx1)
	     (* 3 Aw1 (expt Bx1 2)))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (* (expt Ay1 2)
	    (expt Bx2 2))
	 (* -4 Ax1 Ay1 Bx2 By2)
	 (* 3 (expt Ax1 2)
	    (expt By2 2)))
	(expt Cw1 3))
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bx1 2))
	 (*
          (+ (* Ax2 Ay1)
	     (* 2 Ax1 Ay2))
          Bx1 By1)
	 (* -1 Ax1 Ax2 (expt By1 2)))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1 Ay1 (expt Bw2 2) Bx1)
             (* Ay1 Bw1 Bw2 Bx2))
            By1)
           (*
            (+ (* Ax1 (expt Bw2 2))
	       (* -1 Aw1 Bw2 Bx2))
            (expt By1 2))
           (*
            (+ (* 2 Ay1 Bw1 Bw2 Bx1)
	       (* -2 Ay1 (expt Bw1 2) Bx2)
	       (*
		(+ (* -4 Ax1 Bw1 Bw2)
		   (* 2 Aw1 Bw2 Bx1)
		   (* 2 Aw1 Bw1 Bx2))
		By1))
            By2)
           (*
            (+
             (* 3 Ax1 (expt Bw1 2))
             (* -3 Aw1 Bw1 Bx1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -2 (expt Ay1 2) Bw2 Bx2)
           (*
            (+ (* 4 Ax1 Ay1 Bw2)
	       (* 4 Aw1 Ay1 Bx2))
            By2)
           (* -6 Aw1 Ax1 (expt By2 2)))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* 2 Ay1 Ay2 Bw1 Bx1)
	       (*
		(+
		 (*
		  (+ (* Ax2 Ay1)
		     (* -4 Ax1 Ay2))
		  Bw1)
		 (*
		  (+ (* -2 Aw2 Ay1)
		     (* 2 Aw1 Ay2))
		  Bx1))
		By1)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -1 Aw1 Ax2))
		(expt By1 2)))
            Cw1)
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            (expt Cw1 2)))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+
           (* (expt Ay1 2)
	      (expt Bw2 2))
           (* -4 Aw1 Ay1 Bw2 By2)
           (* 3 (expt Aw1 2)
	      (expt By2 2)))
          Cw1)
	 (*
          (+ (* 2 Aw2 (expt Ay1 2))
	     (* -4 Aw1 Ay1 Ay2))
          Cw1 Cw2))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+ (* 2 Ay1 Ay2 Bw1 Bx1)
	     (*
	      (+
	       (*
		(+ (* -2 Ax2 Ay1)
		   (* 2 Ax1 Ay2))
		Bw1)
	       (*
		(+ (* Aw2 Ay1)
		   (* -4 Aw1 Ay2))
		Bx1))
	      By1)
	     (*
	      (+ (* -1 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
	      (expt By1 2)))
          (expt Cw1 2))
	 (*
          (+ (* 2 Ax2 (expt Ay1 2))
	     (* -4 Ax1 Ay1 Ay2))
          (expt Cw1 3))
	 (*
          (+
           (*
            (+
             (* -2 Ay1 Ay2 (expt Bw1 2))
             (*
              (+ (* Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 By1)
             (* -1 Aw1 Aw2 (expt By1 2)))
            Cw1)
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            (expt Cw1 2)))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+
           (* 2 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* -3 Ay1 Bw1 Bw2 Bx1 Bx2)
           (* Ay1 (expt Bw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* -2 Ax1 (expt Bw2 2) Bx1)
             (* 3 Aw1 Bw2 Bx1 Bx2)
             (* -1 Aw1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* 4 Ax1 Bw1 Bw2 Bx1)
	       (* -4 Aw1 Bw2 (expt Bx1 2))
	       (*
		(+
		 (* -2 Ax1 (expt Bw1 2))
		 (* 2 Aw1 Bw1 Bx1))
		Bx2))
            By2))
          Cw1)
	 (*
          (+ (* 4 Ax1 Ay1 Bw2 Bx2)
	     (* -2 Aw1 Ay1 (expt Bx2 2))
	     (*
	      (+
	       (* -6 (expt Ax1 2) Bw2)
	       (* 4 Aw1 Ax1 Bx2))
	      By2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+
             (*
              (+ (* -3 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* 4 Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              (expt Bx1 2))
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              Bx1 By1))
            Cw1)
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -6 (expt Ax1 2) Ay2))
            (expt Cw1 2)))
          Cw2)
	 (*
          (+
           (* -1 Ay1 Bw1 (expt Bw2 2)
	      Bx1)
           (* Ay1 (expt Bw1 2) Bw2 Bx2)
           (*
            (+
             (* 2 Ax1 Bw1 (expt Bw2 2))
             (* -1 Aw1 (expt Bw2 2) Bx1)
             (* -1 Aw1 Bw1 Bw2 Bx2))
            By1)
           (*
            (+
             (* -2 Ax1 (expt Bw1 2) Bw2)
             (* 2 Aw1 Bw1 Bw2 Bx1))
            By2)
           (*
            (+
             (* -4 Ax1 Ay1 (expt Bw2 2))
             (*
              (+ (* 8 Aw1 Ax1 Bw2)
		 (* -4 (expt Aw1 2) Bx2))
              By2))
            Cw1)
           (*
            (+
             (*
              (+ (* Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* -2 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 Bx1)
             (*
              (+
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -1 Aw1 Ax2))
		Bw1)
               (* -2 Aw1 Aw2 Bx1))
              By1)
             (*
              (+ (* -8 Aw2 Ax1 Ay1)
		 (* 8 Aw1 Ax1 Ay2))
              Cw1))
            Cw2))
          Cx1)
	 (*
          (+
           (* 2 Aw1 Ay1 (expt Bw2 2))
           (* -2 (expt Aw1 2) Bw2 By2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            Cw2))
          (expt Cx1 2))
	 (*
          (+
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* -3 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -2 Aw1 Ax2 Bw1)
		 (* 3 Aw1 Aw2 Bx1))
              By1))
            Cw1)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            (expt Cw1 2))
           (*
            (+
             (* Aw2 Ay1 (expt Bw1 2))
             (* -1 Aw1 Aw2 Bw1 By1)
             (* -4 (expt Aw1 2) Ay2 Cw1))
            Cx1))
          Cx2))
	Cy1)
       (*
	(+
	 (* -1 Ax1 Bw1 (expt Bw2 2) Bx1)
	 (* Aw1 (expt Bw2 2)
	    (expt Bx1 2))
	 (*
          (+
           (* Ax1 (expt Bw1 2) Bw2)
           (* -1 Aw1 Bw1 Bw2 Bx1))
          Bx2)
	 (*
          (+
           (* 3 (expt Ax1 2)
	      (expt Bw2 2))
           (* -4 Aw1 Ax1 Bw2 Bx2)
           (* (expt Aw1 2)
	      (expt Bx2 2)))
          Cw1)
	 (*
          (+
           (* Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -2 Aw2 Ax1)
	       (* -1 Aw1 Ax2))
            Bw1 Bx1)
           (* 2 Aw1 Aw2 (expt Bx1 2))
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Cw1))
          Cw2)
	 (*
          (+
           (* -2 Aw1 Ax1 (expt Bw2 2))
           (* 2 (expt Aw1 2) Bw2 Bx2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Cw2))
          Cx1)
	 (*
          (+
           (* Aw2 Ax1 (expt Bw1 2))
           (* -1 Aw1 Aw2 Bw1 Bx1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Cw1)
           (* 2 (expt Aw1 2) Aw2 Cx1))
          Cx2))
	(expt Cy1 2)))
      Cy2)
     (*
      (+
       (*
	(+
	 (*
          (+ (* Ax2 Ay1)
	     (* -3 Ax1 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* -1 Aw2 Ay1)
	     (* 3 Aw1 Ay2))
          (expt Bx1 2))
	 (*
          (+ (* Ax1 Ax2 Bw1)
	     (*
	      (+ (* Aw2 Ax1)
		 (* -2 Aw1 Ax2))
	      Bx1))
          By1))
	(expt Cw1 2))
       (*
	(+ (* -2 Ax1 Ax2 Ay1)
	   (* 3 (expt Ax1 2) Ay2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
	       (* 3 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* Aw2 Ay1)
	       (* -3 Aw1 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1)
		 (* Aw1 Ax2))
              Bw1)
             (* Aw1 Aw2 Bx1))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1)
	       (* 2 Aw1 Ax2))
            Ay1)
           (* -6 Aw1 Ax1 Ay2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+ (* -2 Aw1 Aw2 Ay1)
	   (* 3 (expt Aw1 2) Ay2))
	Cw1 (expt Cx1 2))
       (*
	(+
	 (*
          (+
           (* -1 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ax1)
	       (* Aw1 Ax2))
            Bw1 Bx1)
           (* -2 Aw1 Aw2 (expt Bx1 2)))
          Cw1)
	 (*
          (+ (* -3 Aw2 (expt Ax1 2))
	     (* 2 Aw1 Ax1 Ax2))
          (expt Cw1 2))
	 (*
          (+
           (* -1 Aw2 Ax1 (expt Bw1 2))
           (* Aw1 Aw2 Bw1 Bx1)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            Cw1))
          Cx1)
	 (* -1 (expt Aw1 2) Aw2
	    (expt Cx1 2)))
	Cy1))
      (expt Cy2 2))
     (*
      (+
       (*
	(+
	 (*
          (+ (* 4 Ay1 Bw2 Bx1 Bx2)
	     (* -2 Ay1 Bw1 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+ (* -4 Ax1 Bw2 Bx2)
	     (* 2 Aw1 (expt Bx2 2)))
          (expt By1 3))
	 (*
          (+
           (* -4 Ay1 Bw2 (expt Bx1 2)
	      By1)
           (*
            (+ (* 4 Ax1 Bw2 Bx1)
	       (*
		(+ (* 4 Ax1 Bw1)
		   (* -4 Aw1 Bx1))
		Bx2))
            (expt By1 2)))
          By2)
	 (*
          (+
           (* 2 Ay1 Bw1 (expt Bx1 2))
           (*
            (+ (* -4 Ax1 Bw1 Bx1)
	       (* 2 Aw1 (expt Bx1 2)))
            By1))
          (expt By2 2))
	 (*
          (+
           (* 2 (expt Ay1 2)
	      (expt Bx2 2) By1)
           (*
            (+
             (* (expt Ay1 2) Bx1 Bx2)
             (* -5 Ax1 Ay1 Bx2 By1))
            By2)
           (*
            (+ (* -1 Ax1 Ay1 Bx1)
	       (* 3 (expt Ax1 2) By1))
            (expt By2 2)))
          Cw1))
	Cw2)
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bx1 2) By1)
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* 2 Ax1 Ay2))
          Bx1 (expt By1 2))
	 (* -2 Ax1 Ax2 (expt By1 3)))
	(expt Cw2 2))
       (*
	(+
	 (*
          (+
           (* -4 (expt Ay1 2) Bw2 Bx2
	      By1)
           (*
            (+
             (* 6 (expt Ay1 2) Bw2 Bx1)
             (* -1 (expt Ay1 2) Bw1 Bx2)
             (*
              (+ (* -2 Ax1 Ay1 Bw2)
		 (* 5 Aw1 Ay1 Bx2))
              By1))
            By2)
           (*
            (+ (* Ax1 Ay1 Bw1)
	       (* -6 Aw1 Ay1 Bx1)
	       (* Aw1 Ax1 By1))
            (expt By2 2)))
          Cw2)
	 (*
          (+
           (* 3 (expt Ay1 2) Ay2 Bx1)
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* -1 Ax1 Ay1 Ay2))
            By1))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (*
          (+
           (* 2 Ay1 (expt Bw2 2) Bx1)
           (* -4 Ay1 Bw1 Bw2 Bx2))
          (expt By1 2))
	 (*
          (+ (* -2 Ax1 (expt Bw2 2))
	     (* 4 Aw1 Bw2 Bx2))
          (expt By1 3))
	 (*
          (+
           (* 4 Ay1 (expt Bw1 2) Bx2 By1)
           (*
            (+ (* 4 Ax1 Bw1 Bw2)
	       (* -4 Aw1 Bw2 Bx1)
	       (* -4 Aw1 Bw1 Bx2))
            (expt By1 2)))
          By2)
	 (*
          (+
           (* -2 Ay1 (expt Bw1 2) Bx1)
           (*
            (+
             (* -2 Ax1 (expt Bw1 2))
             (* 4 Aw1 Bw1 Bx1))
            By1))
          (expt By2 2))
	 (*
          (+
           (* 4 (expt Ay1 2) Bw2 Bx2 By1)
           (*
            (+
             (* (expt Ay1 2) Bw2 Bx1)
             (* -6 (expt Ay1 2) Bw1 Bx2)
             (*
              (+ (* -5 Ax1 Ay1 Bw2)
		 (* 2 Aw1 Ay1 Bx2))
              By1))
            By2)
           (*
            (+ (* 6 Ax1 Ay1 Bw1)
	       (* -1 Aw1 Ay1 Bx1)
	       (* -1 Aw1 Ax1 By1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -4 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 4 Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              Bx1))
            (expt By1 2))
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            (expt By1 3))
           (*
            (+
             (* (expt Ay1 2) Ay2 Bx1)
             (*
              (+
               (* 4 Ax2 (expt Ay1 2))
               (* -5 Ax1 Ay1 Ay2))
              By1))
            Cw1))
          Cw2)
	 (*
          (+
           (* -2 (expt Ay1 2)
	      (expt Bw2 2) By1)
           (*
            (+
             (* -1 (expt Ay1 2) Bw1 Bw2)
             (* 5 Aw1 Ay1 Bw2 By1))
            By2)
           (*
            (+ (* Aw1 Ay1 Bw1)
	       (* -3 (expt Aw1 2) By1))
            (expt By2 2))
           (*
            (+
             (* -1 (expt Ay1 2) Ay2 Bw1)
             (*
              (+
               (* -4 Aw2 (expt Ay1 2))
               (* 5 Aw1 Ay1 Ay2))
              By1))
            Cw2))
          Cx1))
	Cx2)
       (*
	(+
	 (* 2 Ay1 Ay2 (expt Bw1 2) By1)
	 (*
          (+ (* -2 Aw2 Ay1)
	     (* -2 Aw1 Ay2))
          Bw1 (expt By1 2))
	 (* 2 Aw1 Aw2 (expt By1 3))
	 (*
          (+
           (* -3 (expt Ay1 2) Ay2 Bw1)
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* Aw1 Ay1 Ay2))
            By1))
          Cw1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+
           (* -8 (expt Ay1 2) Bw2 Bx1
	      Bx2)
           (* 4 (expt Ay1 2) Bw1
	      (expt Bx2 2))
           (*
            (+ (* 12 Ax1 Ay1 Bw2 Bx2)
	       (* -6 Aw1 Ay1 (expt Bx2 2)))
            By1)
           (*
            (+ (* 2 Ax1 Ay1 Bw2 Bx1)
	       (*
		(+ (* -7 Ax1 Ay1 Bw1)
		   (* 7 Aw1 Ay1 Bx1))
		Bx2)
	       (* -6 (expt Ax1 2) Bw2 By1))
            By2)
           (*
            (+
             (* 3 (expt Ax1 2) Bw1)
             (* -1 Aw1 Ax1 Bx1))
            (expt By2 2)))
          Cw2)
	 (*
          (+
           (*
            (+
             (* -4 Ax2 (expt Ay1 2))
             (* Ax1 Ay1 Ay2))
            Bx1)
           (*
            (+ (* 6 Ax1 Ax2 Ay1)
	       (* -3 (expt Ax1 2) Ay2))
            By1))
          (expt Cw2 2))
	 (*
          (+
           (* -4 (expt Ay1 2)
	      (expt Bw2 2) Bx1)
           (* 8 (expt Ay1 2) Bw1 Bw2 Bx2)
           (*
            (+
             (* 6 Ax1 Ay1 (expt Bw2 2))
             (* -12 Aw1 Ay1 Bw2 Bx2))
            By1)
           (*
            (+ (* -7 Ax1 Ay1 Bw1 Bw2)
	       (* 7 Aw1 Ay1 Bw2 Bx1)
	       (* -2 Aw1 Ay1 Bw1 Bx2)
	       (* 6 (expt Aw1 2) Bx2 By1))
            By2)
           (*
            (+ (* Aw1 Ax1 Bw1)
	       (* -3 (expt Aw1 2) Bx1))
            (expt By2 2))
           (*
            (+
             (*
              (+
               (* 8 Ax2 (expt Ay1 2))
               (* -7 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* -8 Aw2 (expt Ay1 2))
               (* 7 Aw1 Ay1 Ay2))
              Bx1)
             (*
              (+ (* 12 Aw2 Ax1)
		 (* -12 Aw1 Ax2))
              Ay1 By1))
            Cw2))
          Cx2)
	 (*
          (+
           (*
            (+
             (* 4 Aw2 (expt Ay1 2))
             (* -1 Aw1 Ay1 Ay2))
            Bw1)
           (*
            (+ (* -6 Aw1 Aw2 Ay1)
	       (* 3 (expt Aw1 2) Ay2))
            By1))
          (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (*
          (+
           (* -2 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* 2 Ay1 (expt Bw1 2)
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* 2 Ax1 (expt Bw2 2) Bx1)
           (*
            (+ (* 4 Ax1 Bw1 Bw2)
	       (* -4 Aw1 Bw2 Bx1))
            Bx2)
           (* -2 Aw1 Bw1 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* 4 Ay1 Bw1 Bw2 (expt Bx1 2))
           (* -4 Ay1 (expt Bw1 2) Bx1
	      Bx2)
           (*
            (+ (* -8 Ax1 Bw1 Bw2 Bx1)
	       (* 4 Aw1 Bw2 (expt Bx1 2))
	       (*
		(+
		 (* -4 Ax1 (expt Bw1 2))
		 (* 8 Aw1 Bw1 Bx1))
		Bx2))
            By1))
          By2)
	 (*
          (+
           (* 6 Ax1 (expt Bw1 2) Bx1)
           (* -6 Aw1 Bw1 (expt Bx1 2)))
          (expt By2 2))
	 (*
          (+
           (* (expt Ay1 2) Bw2 Bx1 Bx2)
           (* -3 (expt Ay1 2) Bw1
	      (expt Bx2 2))
           (*
            (+ (* -5 Ax1 Ay1 Bw2 Bx2)
	       (* Aw1 Ay1 (expt Bx2 2)))
            By1)
           (*
            (+ (* -2 Ax1 Ay1 Bw2 Bx1)
	       (*
		(+ (* 12 Ax1 Ay1 Bw1)
		   (* -2 Aw1 Ay1 Bx1))
		Bx2)
	       (*
		(+
		 (* 6 (expt Ax1 2) Bw2)
		 (* -2 Aw1 Ax1 Bx2))
		By1))
            By2)
           (*
            (+
             (* -9 (expt Ax1 2) Bw1)
             (* 3 Aw1 Ax1 Bx1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* 4 Ay1 Ay2 Bw1 (expt Bx1 2))
           (*
            (+ (* -8 Ax1 Ay2 Bw1 Bx1)
	       (*
		(+ (* -4 Aw2 Ay1)
		   (* 4 Aw1 Ay2))
		(expt Bx1 2)))
            By1)
           (*
            (+ (* 4 Ax1 Ax2 Bw1)
	       (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Bx1))
            (expt By1 2))
           (*
            (+
             (*
              (+
               (* Ax2 (expt Ay1 2))
               (* -2 Ax1 Ay1 Ay2))
              Bx1)
             (*
              (+ (* -5 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              By1))
            Cw1))
          Cw2)
	 (*
          (+
           (* 3 (expt Ay1 2)
	      (expt Bw2 2) Bx1)
           (* -1 (expt Ay1 2) Bw1 Bw2
	      Bx2)
           (*
            (+
             (* -1 Ax1 Ay1 (expt Bw2 2))
             (* 5 Aw1 Ay1 Bw2 Bx2))
            By1)
           (*
            (+ (* 2 Ax1 Ay1 Bw1 Bw2)
	       (* -12 Aw1 Ay1 Bw2 Bx1)
	       (* 2 Aw1 Ay1 Bw1 Bx2)
	       (*
		(+ (* 2 Aw1 Ax1 Bw2)
		   (* -6 (expt Aw1 2) Bx2))
		By1))
            By2)
           (*
            (+ (* -3 Aw1 Ax1 Bw1)
	       (* 9 (expt Aw1 2) Bx1))
            (expt By2 2))
           (*
            (+
             (*
              (+
               (* -1 Ax2 (expt Ay1 2))
               (* 2 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* 6 Aw2 (expt Ay1 2))
               (* -12 Aw1 Ay1 Ay2))
              Bx1)
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 5 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              By1))
            Cw2))
          Cx1)
	 (*
          (+
           (* -4 Ay1 Ay2 (expt Bw1 2)
	      Bx1)
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              (expt Bw1 2))
             (* 8 Aw1 Ay2 Bw1 Bx1))
            By1)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Bw1)
             (* -4 Aw1 Aw2 Bx1))
            (expt By1 2))
           (*
            (+
             (*
              (+
               (* -6 Ax2 (expt Ay1 2))
               (* 12 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* Aw2 (expt Ay1 2))
               (* -2 Aw1 Ay1 Ay2))
              Bx1)
             (*
              (+
               (*
		(+ (* -5 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              By1))
            Cw1)
           (*
            (+
             (*
              (+
               (* -1 Aw2 (expt Ay1 2))
               (* 2 Aw1 Ay1 Ay2))
              Bw1)
             (*
              (+ (* 5 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              By1))
            Cx1))
          Cx2)
	 (*
          (+
           (* Ax1 Ay1 (expt Bw2 2) Bx1)
           (*
            (+ (* -7 Ax1 Ay1 Bw1 Bw2)
	       (* 7 Aw1 Ay1 Bw2 Bx1))
            Bx2)
           (* -1 Aw1 Ay1 Bw1
	      (expt Bx2 2))
           (*
            (+
             (* -3 (expt Ax1 2)
		(expt Bw2 2))
             (* 3 (expt Aw1 2)
		(expt Bx2 2)))
            By1)
           (*
            (+
             (* 6 (expt Ax1 2) Bw1 Bw2)
             (* -2 Aw1 Ax1 Bw2 Bx1)
             (*
              (+ (* 2 Aw1 Ax1 Bw1)
		 (* -6 (expt Aw1 2) Bx1))
              Bx2))
            By2)
           (*
            (+
             (*
              (+ (* -7 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* 7 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx1)
             (* -6 Aw2 (expt Ax1 2) By1))
            Cw2)
           (*
            (+
             (*
              (+
               (*
		(+ (* -7 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 7 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              Bx1)
             (* 6 (expt Aw1 2) Ax2 By1))
            Cx2))
          Cy1))
	Cy2)
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
	     (* 6 Ax1 Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* 2 Aw2 Ay1)
	     (* -6 Aw1 Ay2))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (* -2 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            Bw1 Bx1)
           (* 2 Aw1 Aw2 (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+ (* 6 Ax1 Ax2 Ay1)
	       (* -9 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay1)
             (* 3 Aw1 Ax1 Ay2))
            Bx1)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* Aw2 Ax1)
		 (* Aw1 Ax2))
              Ay1)
             (* -3 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -6 Aw1 Aw2 Ay1)
	       (* 9 (expt Aw1 2) Ay2))
            Bx1)
           (*
            (+ (* Aw1 Aw2 Ax1)
	       (* -3 (expt Aw1 2) Ax2))
            By1))
          Cx1)
	 (*
          (+
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
	       (* -3 (expt Aw1 2) Ax2))
            Bx1))
          Cy1))
	(expt Cy2 2)))
      Dw1)
     (*
      (+
       (*
	(+
	 (* -3 (expt Ay1 3)
	    (expt Bx2 2))
	 (* 6 Ax1 (expt Ay1 2) Bx2 By2)
	 (* -3 (expt Ax1 2) Ay1
	    (expt By2 2)))
	Cw2)
       (*
	(+
	 (* -6 (expt Ay1 3) Bw2 Bx2)
	 (*
          (+
           (* 6 Ax1 (expt Ay1 2) Bw2)
           (* 6 Aw1 (expt Ay1 2) Bx2))
          By2)
	 (* -6 Aw1 Ax1 Ay1 (expt By2 2))
	 (*
          (+ (* -6 Ax2 (expt Ay1 3))
	     (* 6 Ax1 (expt Ay1 2) Ay2))
          Cw2))
	Cx2)
       (*
	(+ (* -3 Aw2 (expt Ay1 3))
	   (* 3 Aw1 (expt Ay1 2) Ay2))
	(expt Cx2 2))
       (*
	(+
	 (* 6 Ax1 (expt Ay1 2) Bw2 Bx2)
	 (* 3 Aw1 (expt Ay1 2)
	    (expt Bx2 2))
	 (*
          (+
           (* -6 (expt Ax1 2) Ay1 Bw2)
           (* -12 Aw1 Ax1 Ay1 Bx2))
          By2)
	 (* 9 Aw1 (expt Ax1 2)
	    (expt By2 2))
	 (*
          (+
           (* 6 Ax1 Ax2 (expt Ay1 2))
           (* -6 (expt Ax1 2) Ay1 Ay2))
          Cw2)
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
	       (* 6 Aw1 Ax2))
            (expt Ay1 2))
           (* -12 Aw1 Ax1 Ay1 Ay2))
          Cx2))
	Cy2)
       (*
	(+
	 (*
          (+ (* -3 Aw2 (expt Ax1 2))
	     (* -6 Aw1 Ax1 Ax2))
          Ay1)
	 (* 9 Aw1 (expt Ax1 2) Ay2))
	(expt Cy2 2)))
      (expt Dw1 2)))
    Dx1)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -3 Ay1 (expt Bw2 2) Bx1)
	 (* 2 Ay1 Bw1 Bw2 Bx2))
	(expt By1 2))
       (*
	(+ (* 3 Ax1 (expt Bw2 2))
	   (* -2 Aw1 Bw2 Bx2))
	(expt By1 3))
       (*
	(+
	 (*
          (+ (* 4 Ay1 Bw1 Bw2 Bx1)
	     (* -2 Ay1 (expt Bw1 2) Bx2))
          By1)
	 (*
          (+ (* -6 Ax1 Bw1 Bw2)
	     (* 2 Aw1 Bw2 Bx1)
	     (* 2 Aw1 Bw1 Bx2))
          (expt By1 2)))
	By2)
       (*
	(+
	 (* -1 Ay1 (expt Bw1 2) Bx1)
	 (*
          (+ (* 3 Ax1 (expt Bw1 2))
	     (* -2 Aw1 Bw1 Bx1))
          By1))
	(expt By2 2))
       (*
	(+
	 (* -2 (expt Ay1 2) Bw2 Bx2 By1)
	 (*
          (+
           (* -4 (expt Ay1 2) Bw2 Bx1)
           (* 3 (expt Ay1 2) Bw1 Bx2)
           (*
            (+ (* 6 Ax1 Ay1 Bw2)
	       (* -1 Aw1 Ay1 Bx2))
            By1))
          By2)
	 (*
          (+ (* -3 Ax1 Ay1 Bw1)
	     (* 4 Aw1 Ay1 Bx1)
	     (* -3 Aw1 Ax1 By1))
          (expt By2 2)))
	Cw1))
      Cw2)
     (*
      (+ (* 2 Ay1 Ay2 Bw1 Bx1 By1)
	 (*
	  (+
	   (*
            (+ (* Ax2 Ay1)
	       (* -3 Ax1 Ay2))
            Bw1)
	   (*
            (+ (* -3 Aw2 Ay1)
	       (* Aw1 Ay2))
            Bx1))
	  (expt By1 2))
	 (*
	  (+ (* 3 Aw2 Ax1)
	     (* -1 Aw1 Ax2))
	  (expt By1 3))
	 (*
	  (+
	   (* -2 (expt Ay1 2) Ay2 Bx1)
	   (*
            (+ (* -1 Ax2 (expt Ay1 2))
	       (* 3 Ax1 Ay1 Ay2))
            By1))
	  Cw1))
      (expt Cw2 2))
     (*
      (+
       (*
	(+
	 (* 3 (expt Ay1 2)
	    (expt Bw2 2) By1)
	 (*
          (+
           (* -2 (expt Ay1 2) Bw1 Bw2)
           (* -4 Aw1 Ay1 Bw2 By1))
          By2)
	 (*
          (+ (* 2 Aw1 Ay1 Bw1)
	     (* (expt Aw1 2) By1))
          (expt By2 2)))
	Cw2)
       (*
	(+
	 (* -1 (expt Ay1 2) Ay2 Bw1)
	 (*
          (+ (* 3 Aw2 (expt Ay1 2))
	     (* -2 Aw1 Ay1 Ay2))
          By1))
	(expt Cw2 2)))
      Cx1)
     (*
      (+
       (* Ay1 Bw1 (expt Bw2 2)
	  (expt By1 2))
       (* -1 Aw1 (expt Bw2 2)
	  (expt By1 3))
       (*
	(+
	 (* -2 Ay1 (expt Bw1 2) Bw2 By1)
	 (* 2 Aw1 Bw1 Bw2 (expt By1 2)))
	By2)
       (*
	(+ (* Ay1 (expt Bw1 3))
	   (* -1 Aw1 (expt Bw1 2) By1))
	(expt By2 2))
       (*
	(+
	 (* -1 (expt Ay1 2)
	    (expt Bw2 2) By1)
	 (*
          (+
           (* 3 (expt Ay1 2) Bw1 Bw2)
           (* -1 Aw1 Ay1 Bw2 By1))
          By2)
	 (*
          (+ (* -3 Aw1 Ay1 Bw1)
	     (* 2 (expt Aw1 2) By1))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bw1 2) By1)
	 (*
          (+ (* 2 Aw2 Ay1)
	     (* 2 Aw1 Ay2))
          Bw1 (expt By1 2))
	 (* -2 Aw1 Aw2 (expt By1 3))
	 (*
          (+
           (* 3 (expt Ay1 2) Ay2 Bw1)
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* -1 Aw1 Ay1 Ay2))
            By1))
          Cw1))
	Cw2))
      Cx2)
     (*
      (+
       (*
	(+
	 (* 6 (expt Ay1 2)
	    (expt Bw2 2) Bx1)
	 (* -4 (expt Ay1 2) Bw1 Bw2 Bx2)
	 (*
          (+
           (* -9 Ax1 Ay1 (expt Bw2 2))
           (* 6 Aw1 Ay1 Bw2 Bx2))
          By1)
	 (*
          (+ (* 6 Ax1 Ay1 Bw1 Bw2)
	     (* -8 Aw1 Ay1 Bw2 Bx1)
	     (* Aw1 Ay1 Bw1 Bx2)
	     (*
	      (+ (* 6 Aw1 Ax1 Bw2)
		 (* -3 (expt Aw1 2) Bx2))
	      By1))
          By2)
	 (*
          (+ (* -3 Aw1 Ax1 Bw1)
	     (* 2 (expt Aw1 2) Bx1))
          (expt By2 2)))
	Cw2)
       (*
	(+
	 (*
          (+ (* -2 Ax2 (expt Ay1 2))
	     (* 3 Ax1 Ay1 Ay2))
          Bw1)
	 (*
          (+ (* 6 Aw2 (expt Ay1 2))
	     (* -4 Aw1 Ay1 Ay2))
          Bx1)
	 (*
          (+
           (*
            (+ (* -9 Aw2 Ax1)
	       (* 3 Aw1 Ax2))
            Ay1)
           (* 3 Aw1 Ax1 Ay2))
          By1))
	(expt Cw2 2))
       (*
	(+
	 (* -2 (expt Ay1 2) Bw1
	    (expt Bw2 2))
	 (* 3 Aw1 Ay1 (expt Bw2 2) By1)
	 (*
          (+ (* Aw1 Ay1 Bw1 Bw2)
	     (* -3 (expt Aw1 2) Bw2 By1))
          By2)
	 (* (expt Aw1 2) Bw1
	    (expt By2 2))
	 (*
          (+
           (*
            (+
             (* -4 Aw2 (expt Ay1 2))
             (* Aw1 Ay1 Ay2))
            Bw1)
           (*
            (+ (* 6 Aw1 Aw2 Ay1)
	       (* -3 (expt Aw1 2) Ay2))
            By1))
          Cw2))
	Cx2))
      Cy1)
     (*
      (+
       (*
	(+
	 (* 2 Ay1 Bw1 (expt Bw2 2) Bx1)
	 (* -2 Ay1 (expt Bw1 2) Bw2 Bx2))
	By1)
       (*
	(+
	 (* -3 Ax1 Bw1 (expt Bw2 2))
	 (* Aw1 (expt Bw2 2) Bx1)
	 (* 2 Aw1 Bw1 Bw2 Bx2))
	(expt By1 2))
       (*
	(+
	 (* -2 Ay1 (expt Bw1 2) Bw2 Bx1)
	 (* 2 Ay1 (expt Bw1 3) Bx2)
	 (*
          (+
           (* 6 Ax1 (expt Bw1 2) Bw2)
           (* -4 Aw1 Bw1 Bw2 Bx1)
           (* -2 Aw1 (expt Bw1 2) Bx2))
          By1))
	By2)
       (*
	(+ (* -3 Ax1 (expt Bw1 3))
	   (* 3 Aw1 (expt Bw1 2) Bx1))
	(expt By2 2))
       (*
	(+
	 (* -2 (expt Ay1 2)
	    (expt Bw2 2) Bx1)
	 (* 3 (expt Ay1 2) Bw1 Bw2 Bx2)
	 (*
          (+
           (* 3 Ax1 Ay1 (expt Bw2 2))
           (* -1 Aw1 Ay1 Bw2 Bx2))
          By1)
	 (*
          (+ (* -6 Ax1 Ay1 Bw1 Bw2)
	     (* 8 Aw1 Ay1 Bw2 Bx1)
	     (* -6 Aw1 Ay1 Bw1 Bx2)
	     (*
	      (+ (* -6 Aw1 Ax1 Bw2)
		 (* 4 (expt Aw1 2) Bx2))
	      By1))
          By2)
	 (*
          (+ (* 9 Aw1 Ax1 Bw1)
	     (* -6 (expt Aw1 2) Bx1))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bw1 2) Bx1)
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* 6 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            Bw1 Bx1))
          By1)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
	       (* 2 Aw1 Ax2))
            Bw1)
           (* 2 Aw1 Aw2 Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* 3 Ax2 (expt Ay1 2))
             (* -6 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -4 Aw2 (expt Ay1 2))
             (* 8 Aw1 Ay1 Ay2))
            Bx1)
           (*
            (+
             (*
              (+ (* 6 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay1)
             (* -6 Aw1 Ax1 Ay2))
            By1))
          Cw1))
	Cw2)
       (*
	(+
	 (* -1 (expt Ay1 2) Bw1
	    (expt Bw2 2))
	 (* -2 Aw1 Ay1 (expt Bw2 2) By1)
	 (*
          (+ (* 4 Aw1 Ay1 Bw1 Bw2)
	     (* 2 (expt Aw1 2) Bw2 By1))
          By2)
	 (* -3 (expt Aw1 2) Bw1
	    (expt By2 2))
	 (*
          (+
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Bw1)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            By1))
          Cw2))
	Cx1)
       (*
	(+
	 (* 2 Ay1 Ay2 (expt Bw1 3))
	 (*
          (+ (* -2 Aw2 Ay1)
	     (* -2 Aw1 Ay2))
          (expt Bw1 2) By1)
	 (* 2 Aw1 Aw2 Bw1 (expt By1 2))
	 (*
          (+
           (*
            (+
             (* 3 Aw2 (expt Ay1 2))
             (* -6 Aw1 Ay1 Ay2))
            Bw1)
           (*
            (+ (* -1 Aw1 Aw2 Ay1)
	       (* 4 (expt Aw1 2) Ay2))
            By1))
          Cw1))
	Cx2)
       (*
	(+
	 (* 3 Ax1 Ay1 Bw1 (expt Bw2 2))
	 (* -4 Aw1 Ay1 (expt Bw2 2) Bx1)
	 (* Aw1 Ay1 Bw1 Bw2 Bx2)
	 (*
          (+
           (* 3 Aw1 Ax1 (expt Bw2 2))
           (* -3 (expt Aw1 2) Bw2 Bx2))
          By1)
	 (*
          (+ (* -6 Aw1 Ax1 Bw1 Bw2)
	     (* 4 (expt Aw1 2) Bw2 Bx1)
	     (* 2 (expt Aw1 2) Bw1 Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 6 Aw2 Ax1)
		 (* Aw1 Ax2))
              Ay1)
             (* -6 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -8 Aw1 Aw2 Ay1)
	       (* 4 (expt Aw1 2) Ay2))
            Bx1)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
	       (* -3 (expt Aw1 2) Ax2))
            By1))
          Cw2)
	 (*
          (+
           (*
            (+ (* Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            Bw1)
           (* -3 (expt Aw1 2) Aw2 By1))
          Cx2))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+ (* Ax2 Ay1)
	   (* -3 Ax1 Ay2))
	(expt Bw1 3))
       (*
	(+ (* -1 Aw2 Ay1)
	   (* 3 Aw1 Ay2))
	(expt Bw1 2) Bx1)
       (*
	(+
	 (*
          (+ (* 3 Aw2 Ax1)
	     (* -1 Aw1 Ax2))
          (expt Bw1 2))
	 (* -2 Aw1 Aw2 Bw1 Bx1))
	By1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -3 Aw2 Ax1)
	       (* -3 Aw1 Ax2))
            Ay1)
           (* 9 Aw1 Ax1 Ay2))
          Bw1)
	 (*
          (+ (* 4 Aw1 Aw2 Ay1)
	     (* -6 (expt Aw1 2) Ay2))
          Bx1)
	 (*
          (+ (* -3 Aw1 Aw2 Ax1)
	     (* 2 (expt Aw1 2) Ax2))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+ (* 2 Aw1 Aw2 Ay1)
	     (* -3 (expt Aw1 2) Ay2))
          Bw1)
	 (* (expt Aw1 2) Aw2 By1))
	Cx1)
       (*
	(+
	 (*
          (+ (* -3 Aw1 Aw2 Ax1)
	     (* (expt Aw1 2) Ax2))
          Bw1)
	 (* 2 (expt Aw1 2) Aw2 Bx1))
	Cy1))
      (expt Cy2 2))
     (*
      (+
       (*
	(+
	 (* 6 (expt Ay1 3) Bw2 Bx2)
	 (*
          (+
           (* -6 Ax1 (expt Ay1 2) Bw2)
           (* -6 Aw1 (expt Ay1 2) Bx2))
          By2)
	 (* 6 Aw1 Ax1 Ay1 (expt By2 2)))
	Cw2)
       (*
	(+ (* 3 Ax2 (expt Ay1 3))
	   (* -3 Ax1 (expt Ay1 2) Ay2))
	(expt Cw2 2))
       (*
	(+
	 (* 3 (expt Ay1 3)
	    (expt Bw2 2))
	 (* -6 Aw1 (expt Ay1 2) Bw2 By2)
	 (* 3 (expt Aw1 2) Ay1
	    (expt By2 2))
	 (*
          (+ (* 6 Aw2 (expt Ay1 3))
	     (* -6 Aw1 (expt Ay1 2) Ay2))
          Cw2))
	Cx2)
       (*
	(+
	 (* -3 Ax1 (expt Ay1 2)
	    (expt Bw2 2))
	 (* -6 Aw1 (expt Ay1 2) Bw2 Bx2)
	 (*
          (+ (* 12 Aw1 Ax1 Ay1 Bw2)
	     (* 6 (expt Aw1 2) Ay1 Bx2))
          By2)
	 (* -9 (expt Aw1 2) Ax1
	    (expt By2 2))
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
	       (* -6 Aw1 Ax2))
            (expt Ay1 2))
           (* 12 Aw1 Ax1 Ay1 Ay2))
          Cw2)
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ay1 2))
           (* 6 (expt Aw1 2) Ay1 Ay2))
          Cx2))
	Cy2)
       (*
	(+
	 (*
          (+ (* 6 Aw1 Aw2 Ax1)
	     (* 3 (expt Aw1 2) Ax2))
          Ay1)
	 (* -9 (expt Aw1 2) Ax1 Ay2))
	(expt Cy2 2)))
      Dw1))
    (expt Dx1 2))
   (*
    (+
     (*
      (+
       (* -3 (expt Ay1 3)
	  (expt Bw2 2))
       (* 6 Aw1 (expt Ay1 2) Bw2 By2)
       (* -3 (expt Aw1 2) Ay1
	  (expt By2 2)))
      Cw2)
     (*
      (+ (* -3 Aw2 (expt Ay1 3))
	 (* 3 Aw1 (expt Ay1 2) Ay2))
      (expt Cw2 2))
     (*
      (+
       (* 3 Aw1 (expt Ay1 2)
	  (expt Bw2 2))
       (* -6 (expt Aw1 2) Ay1 Bw2 By2)
       (* 3 (expt Aw1 3)
	  (expt By2 2))
       (*
	(+
	 (* 6 Aw1 Aw2 (expt Ay1 2))
	 (* -6 (expt Aw1 2) Ay1 Ay2))
	Cw2))
      Cy2)
     (*
      (+
       (* -3 (expt Aw1 2) Aw2 Ay1)
       (* 3 (expt Aw1 3) Ay2))
      (expt Cy2 2)))
    (expt Dx1 3))
   (*
    (+
     (*
      (+
       (* -1 Ay1 Bx1 (expt Bx2 2) By1)
       (* Ax1 (expt Bx2 2)
	  (expt By1 2))
       (*
	(+
	 (* Ay1 (expt Bx1 2) Bx2)
	 (* -1 Ax1 Bx1 Bx2 By1))
	By2))
      (expt Cw1 2) Cw2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* 4 Ay1 Bw2 Bx1 Bx2)
	       (* -2 Ay1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* -4 Ax1 Bw2 Bx2)
	       (* 2 Aw1 (expt Bx2 2)))
            (expt By1 2))
           (*
            (+
             (* -2 Ay1 Bw2 (expt Bx1 2))
             (*
              (+ (* 2 Ax1 Bw2 Bx1)
		 (*
		  (+ (* 3 Ax1 Bw1)
		     (* -3 Aw1 Bx1))
		  Bx2))
              By1))
            By2)
           (*
            (+ (* -1 Ax1 Bw1 Bx1)
	       (* Aw1 (expt Bx1 2)))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* 3 (expt Ay1 2)
	      (expt Bx2 2))
           (* -4 Ax1 Ay1 Bx2 By2)
           (* (expt Ax1 2)
	      (expt By2 2)))
          (expt Cw1 2)))
	Cw2)
       (*
	(+
	 (* -1 Ay1 Ay2 (expt Bx1 2))
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* Ax1 Ay2))
          Bx1 By1)
	 (* -2 Ax1 Ax2 (expt By1 2)))
	Cw1 (expt Cw2 2)))
      Cx1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -3 Ay1 (expt Bw2 2) Bx1)
           (* 2 Ay1 Bw1 Bw2 Bx2))
          By1)
	 (*
          (+ (* 3 Ax1 (expt Bw2 2))
	     (* -2 Aw1 Bw2 Bx2))
          (expt By1 2))
	 (*
          (+ (* 2 Ay1 Bw1 Bw2 Bx1)
	     (* -1 Ay1 (expt Bw1 2) Bx2)
	     (*
	      (+ (* -4 Ax1 Bw1 Bw2)
		 (* 2 Aw1 Bw2 Bx1)
		 (* Aw1 Bw1 Bx2))
	      By1))
          By2)
	 (*
          (+ (* Ax1 (expt Bw1 2))
	     (* -1 Aw1 Bw1 Bx1))
          (expt By2 2))
	 (*
          (+
           (* -6 (expt Ay1 2) Bw2 Bx2)
           (*
            (+ (* 4 Ax1 Ay1 Bw2)
	       (* 4 Aw1 Ay1 Bx2))
            By2)
           (* -2 Aw1 Ax1 (expt By2 2)))
          Cw1))
	Cw2)
       (*
	(+ (* Ay1 Ay2 Bw1 Bx1)
	   (*
	    (+
	     (*
	      (+ (* Ax2 Ay1)
		 (* -2 Ax1 Ay2))
	      Bw1)
	     (*
	      (+ (* -3 Aw2 Ay1)
		 (* Aw1 Ay2))
	      Bx1))
	    By1)
	   (*
	    (+ (* 3 Aw2 Ax1)
	       (* -1 Aw1 Ax2))
	    (expt By1 2))
	   (*
	    (+ (* -3 Ax2 (expt Ay1 2))
	       (* 2 Ax1 Ay1 Ay2))
	    Cw1))
	(expt Cw2 2)))
      (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (* 3 (expt Ay1 2)
	    (expt Bw2 2))
	 (* -4 Aw1 Ay1 Bw2 By2)
	 (* (expt Aw1 2)
	    (expt By2 2)))
	Cw2)
       (*
	(+ (* 3 Aw2 (expt Ay1 2))
	   (* -2 Aw1 Ay1 Ay2))
	(expt Cw2 2)))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (*
          (+ (* -2 Ay1 Bw2 Bx1 Bx2)
	     (* 3 Ay1 Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+ (* 2 Ax1 Bw2 Bx2)
	     (* -3 Aw1 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* Ay1 Bw2 (expt Bx1 2))
           (* -2 Ay1 Bw1 Bx1 Bx2)
           (*
            (+ (* -1 Ax1 Bw2 Bx1)
	       (*
		(+ (* -2 Ax1 Bw1)
		   (* 4 Aw1 Bx1))
		Bx2))
            By1))
          By2)
	 (*
          (+ (* Ax1 Bw1 Bx1)
	     (* -1 Aw1 (expt Bx1 2)))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (* -3 (expt Ay1 2)
	    (expt Bx2 2))
	 (* 4 Ax1 Ay1 Bx2 By2)
	 (* -1 (expt Ax1 2)
	    (expt By2 2)))
	(expt Cw1 3))
       (*
	(+
	 (* Ay1 Ay2 (expt Bx1 2))
	 (*
          (+ (* -2 Ax2 Ay1)
	     (* -1 Ax1 Ay2))
          Bx1 By1)
	 (* 2 Ax1 Ax2 (expt By1 2)))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 2 Ay1 (expt Bw2 2) Bx1)
             (* -4 Ay1 Bw1 Bw2 Bx2))
            By1)
           (*
            (+
             (* -2 Ax1 (expt Bw2 2))
             (* 4 Aw1 Bw2 Bx2))
            (expt By1 2))
           (*
            (+
             (* 2 Ay1 (expt Bw1 2) Bx2)
             (*
              (+ (* 3 Ax1 Bw1 Bw2)
		 (* -3 Aw1 Bw2 Bx1)
		 (* -2 Aw1 Bw1 Bx2))
              By1))
            By2)
           (*
            (+
             (* -1 Ax1 (expt Bw1 2))
             (* Aw1 Bw1 Bx1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* 6 (expt Ay1 2) Bw2 Bx2)
           (*
            (+ (* -4 Ax1 Ay1 Bw2)
	       (* -4 Aw1 Ay1 Bx2))
            By2)
           (* 2 Aw1 Ax1 (expt By2 2)))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (*
		(+ (* -4 Ax2 Ay1)
		   (* 3 Ax1 Ay2))
		Bw1)
               (*
		(+ (* 4 Aw2 Ay1)
		   (* -3 Aw1 Ay2))
		Bx1))
              By1)
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              (expt By1 2)))
            Cw1)
           (*
            (+
             (* 6 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            (expt Cw1 2)))
          Cw2))
	Cx1)
       (*
	(+
	 (* Ay1 Bw1 (expt Bw2 2) By1)
	 (* -1 Aw1 (expt Bw2 2)
	    (expt By1 2))
	 (*
          (+
           (* -1 Ay1 (expt Bw1 2) Bw2)
           (* Aw1 Bw1 Bw2 By1))
          By2)
	 (*
          (+
           (* -3 (expt Ay1 2)
	      (expt Bw2 2))
           (* 4 Aw1 Ay1 Bw2 By2)
           (* -1 (expt Aw1 2)
	      (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -1 Ay1 Ay2 (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ay1)
	       (* Aw1 Ay2))
            Bw1 By1)
           (* -2 Aw1 Aw2 (expt By1 2))
           (*
            (+
             (* -6 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Cw1))
          Cw2))
	(expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+ (* -1 Ay1 Ay2 Bw1 Bx1)
	   (*
	    (+
	     (*
	      (+ (* 3 Ax2 Ay1)
		 (* -1 Ax1 Ay2))
	      Bw1)
	     (*
	      (+ (* -1 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
	      Bx1))
	    By1)
	   (*
	    (+ (* Aw2 Ax1)
	       (* -3 Aw1 Ax2))
	    (expt By1 2)))
	(expt Cw1 2))
       (*
	(+ (* -3 Ax2 (expt Ay1 2))
	   (* 2 Ax1 Ay1 Ay2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (* Ay1 Ay2 (expt Bw1 2))
           (*
            (+ (* -2 Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            Bw1 By1)
           (* 2 Aw1 Aw2 (expt By1 2)))
          Cw1)
	 (*
          (+ (* 3 Aw2 (expt Ay1 2))
	     (* -2 Aw1 Ay1 Ay2))
          (expt Cw1 2)))
	Cx1))
      (expt Cx2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -2 Ay1 Bw2 (expt Bx1 2)
	      Bx2)
           (* 2 Ay1 Bw1 Bx1 (expt Bx2 2))
           (*
            (+ (* 2 Ax1 Bw2 Bx1 Bx2)
	       (*
		(+ (* -1 Ax1 Bw1)
		   (* -1 Aw1 Bx1))
		(expt Bx2 2)))
            By1)
           (*
            (+ (* -1 Ax1 Bw1 Bx1)
	       (* Aw1 (expt Bx1 2)))
            Bx2 By2))
          Cw1)
	 (*
          (+
           (* -2 Ax1 Ay1 (expt Bx2 2))
           (* 2 (expt Ax1 2) Bx2 By2))
          (expt Cw1 2)))
	Cw2)
       (*
	(+
	 (* -1 Ax2 Ay1 (expt Bx1 2))
	 (* Ax1 Ax2 Bx1 By1))
	Cw1 (expt Cw2 2))
       (*
	(+
	 (*
          (+
           (* 3 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* -4 Ay1 Bw1 Bw2 Bx1 Bx2)
           (* Ay1 (expt Bw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* -3 Ax1 (expt Bw2 2) Bx1)
             (*
              (+ (* 2 Ax1 Bw1 Bw2)
		 (* 2 Aw1 Bw2 Bx1))
              Bx2)
             (* -1 Aw1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* 2 Ax1 Bw1 Bw2 Bx1)
	       (* -2 Aw1 Bw2 (expt Bx1 2))
	       (*
		(+
		 (* -1 Ax1 (expt Bw1 2))
		 (* Aw1 Bw1 Bx1))
		Bx2))
            By2)
           (*
            (+ (* 8 Ax1 Ay1 Bw2 Bx2)
	       (* -4 Aw1 Ay1 (expt Bx2 2))
	       (* -4 (expt Ax1 2) Bw2 By2))
            Cw1))
          Cw2)
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* 3 Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            (expt Bx1 2))
           (*
            (+ (* Ax1 Ax2 Bw1)
	       (*
		(+ (* -3 Aw2 Ax1)
		   (* Aw1 Ax2))
		Bx1))
            By1)
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            Cw1))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (*
          (+
           (* -6 Ax1 Ay1 (expt Bw2 2))
           (* 4 Aw1 Ay1 Bw2 Bx2)
           (*
            (+ (* 4 Aw1 Ax1 Bw2)
	       (* -2 (expt Aw1 2) Bx2))
            By2))
          Cw2)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
	       (* 2 Aw1 Ax2))
            Ay1)
           (* 2 Aw1 Ax1 Ay2))
          (expt Cw2 2)))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (* -1 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* 4 Ay1 Bw1 Bw2 Bx1 Bx2)
           (* -3 Ay1 (expt Bw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* Ax1 (expt Bw2 2) Bx1)
             (*
              (+ (* -2 Ax1 Bw1 Bw2)
		 (* -2 Aw1 Bw2 Bx1))
              Bx2)
             (* 3 Aw1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* -1 Ax1 Bw1 Bw2 Bx1)
	       (* Aw1 Bw2 (expt Bx1 2))
	       (*
		(+
		 (* 2 Ax1 (expt Bw1 2))
		 (* -2 Aw1 Bw1 Bx1))
		Bx2))
            By2))
          Cw1)
	 (*
          (+ (* -4 Ax1 Ay1 Bw2 Bx2)
	     (* 6 Aw1 Ay1 (expt Bx2 2))
	     (*
	      (+
	       (* 2 (expt Ax1 2) Bw2)
	       (* -4 Aw1 Ax1 Bx2))
	      By2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* -1 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -2 Aw2 Ay1)
		 (* Aw1 Ay2))
              (expt Bx1 2))
             (*
              (+ (* -2 Ax1 Ax2 Bw1)
		 (*
		  (+ (* 2 Aw2 Ax1)
		     (* -2 Aw1 Ax2))
		  Bx1))
              By1))
            Cw1)
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            (expt Cw1 2)))
          Cw2)
	 (*
          (+
           (* -2 Ay1 Bw1 (expt Bw2 2)
	      Bx1)
           (* 2 Ay1 (expt Bw1 2) Bw2 Bx2)
           (*
            (+
             (* Ax1 Bw1 (expt Bw2 2))
             (* Aw1 (expt Bw2 2) Bx1)
             (* -2 Aw1 Bw1 Bw2 Bx2))
            By1)
           (*
            (+
             (* -1 Ax1 (expt Bw1 2) Bw2)
             (* Aw1 Bw1 Bw2 Bx1))
            By2)
           (*
            (+
             (* 4 Ax1 Ay1 (expt Bw2 2))
             (* -8 Aw1 Ay1 Bw2 Bx2)
             (* 4 (expt Aw1 2) Bx2 By2))
            Cw1)
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -1 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* -4 Aw2 Ay1)
		 (* Aw1 Ay2))
              Bw1 Bx1)
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bw1)
               (* 2 Aw1 Aw2 Bx1))
              By1)
             (*
              (+ (* 8 Aw2 Ax1)
		 (* -8 Aw1 Ax2))
              Ay1 Cw1))
            Cw2))
          Cx1)
	 (*
          (+
           (* 2 Aw1 Ay1 (expt Bw2 2))
           (* -2 (expt Aw1 2) Bw2 By2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            Cw2))
          (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -3 Ax2 Ay1)
	       (* Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              Bw1)
             (* -1 Aw1 Aw2 Bx1))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
	       (* 6 Aw1 Ax2))
            Ay1)
           (* -2 Aw1 Ax1 Ay2))
          (expt Cw1 2))
	 (*
          (+
           (* Aw2 Ay1 (expt Bw1 2))
           (* -1 Aw1 Aw2 Bw1 By1)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            Cw1))
          Cx1))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -2 (expt Ax1 2) Bw2 Bx2)
	 (* 2 Aw1 Ax1 (expt Bx2 2)))
	Cw1 Cw2)
       (* -1 (expt Ax1 2) Ax2 Cw1
	  (expt Cw2 2))
       (*
	(+
	 (*
          (+
           (* 3 (expt Ax1 2)
	      (expt Bw2 2))
           (* -4 Aw1 Ax1 Bw2 Bx2)
           (* (expt Aw1 2)
	      (expt Bx2 2)))
          Cw2)
	 (*
          (+ (* 3 Aw2 (expt Ax1 2))
	     (* -2 Aw1 Ax1 Ax2))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (*
          (+
           (* -1 (expt Ax1 2)
	      (expt Bw2 2))
           (* 4 Aw1 Ax1 Bw2 Bx2)
           (* -3 (expt Aw1 2)
	      (expt Bx2 2)))
          Cw1)
	 (*
          (+ (* -2 Aw2 (expt Ax1 2))
	     (* 4 Aw1 Ax1 Ax2))
          Cw1 Cw2)
	 (*
          (+
           (* -2 Aw1 Ax1 (expt Bw2 2))
           (* 2 (expt Aw1 2) Bw2 Bx2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Cw2))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* 2 Aw1 Aw2 Ax1)
	     (* -3 (expt Aw1 2) Ax2))
          Cw1)
	 (* (expt Aw1 2) Aw2 Cx1))
	(expt Cx2 2)))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (* Ay1 Bw2 (expt Bx1 2) Bx2)
	 (* -1 Ay1 Bw1 Bx1 (expt Bx2 2))
	 (*
          (+ (* -1 Ax1 Bw2 Bx1 Bx2)
	     (*
	      (+ (* -1 Ax1 Bw1)
		 (* 2 Aw1 Bx1))
	      (expt Bx2 2)))
          By1)
	 (*
          (+ (* 2 Ax1 Bw1 Bx1)
	     (* -2 Aw1 (expt Bx1 2)))
          Bx2 By2))
	(expt Cw1 2))
       (*
	(+
	 (* 2 Ax1 Ay1 (expt Bx2 2))
	 (* -2 (expt Ax1 2) Bx2 By2))
	(expt Cw1 3))
       (*
	(+
	 (* Ax2 Ay1 (expt Bx1 2))
	 (* -1 Ax1 Ax2 Bx1 By1))
	(expt Cw1 2) Cw2)
       (*
	(+
	 (*
          (+
           (* -1 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* Ay1 (expt Bw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* Ax1 (expt Bw2 2) Bx1)
             (*
              (+ (* 3 Ax1 Bw1 Bw2)
		 (* -3 Aw1 Bw2 Bx1))
              Bx2)
             (* -1 Aw1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* -2 Ax1 Bw1 Bw2 Bx1)
	       (* 2 Aw1 Bw2 (expt Bx1 2))
	       (*
		(+
		 (* -2 Ax1 (expt Bw1 2))
		 (* 2 Aw1 Bw1 Bx1))
		Bx2))
            By2))
          Cw1)
	 (*
          (+ (* -4 Ax1 Ay1 Bw2 Bx2)
	     (* -2 Aw1 Ay1 (expt Bx2 2))
	     (*
	      (+
	       (* 2 (expt Ax1 2) Bw2)
	       (* 4 Aw1 Ax1 Bx2))
	      By2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* -2 Ax1 Ay2 Bw1 Bx1)
	       (*
		(+ (* -2 Aw2 Ay1)
		   (* 2 Aw1 Ay2))
		(expt Bx1 2))
	       (*
		(+ (* 3 Ax1 Ax2 Bw1)
		   (*
		    (+ (* 2 Aw2 Ax1)
		       (* -3 Aw1 Ax2))
		    Bx1))
		By1))
            Cw1)
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            (expt Cw1 2)))
          Cw2))
	Cx1)
       (*
	(+
	 (* Ay1 Bw1 (expt Bw2 2) Bx1)
	 (* -1 Ay1 (expt Bw1 2) Bw2 Bx2)
	 (*
          (+
           (* -2 Ax1 Bw1 (expt Bw2 2))
           (* Aw1 (expt Bw2 2) Bx1)
           (* Aw1 Bw1 Bw2 Bx2))
          By1)
	 (*
          (+
           (* 2 Ax1 (expt Bw1 2) Bw2)
           (* -2 Aw1 Bw1 Bw2 Bx1))
          By2)
	 (*
          (+
           (* 2 Ax1 Ay1 (expt Bw2 2))
           (* 4 Aw1 Ay1 Bw2 Bx2)
           (*
            (+ (* -4 Aw1 Ax1 Bw2)
	       (* -2 (expt Aw1 2) Bx2))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* Aw1 Ax2))
              Bw1)
             (* 2 Aw1 Aw2 Bx1))
            By1)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Cw1))
          Cw2))
	(expt Cx1 2))
       (*
	(+
	 (* -2 Aw1 Ay1 (expt Bw2 2))
	 (* 2 (expt Aw1 2) Bw2 By2)
	 (*
          (+ (* -4 Aw1 Aw2 Ay1)
	     (* 2 (expt Aw1 2) Ay2))
          Cw2))
	(expt Cx1 3))
       (*
	(+
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            (expt Bx1 2))
           (*
            (+ (* -2 Ax1 Ax2 Bw1)
	       (*
		(+ (* -1 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Bx1))
            By1))
          (expt Cw1 2))
	 (*
          (+ (* 4 Ax1 Ax2 Ay1)
	     (* -2 (expt Ax1 2) Ay2))
          (expt Cw1 3))
	 (*
          (+
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (* 2 Aw1 Ay2 Bw1 Bx1)
             (*
              (+
               (*
		(+ (* 3 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bw1)
               (* -3 Aw1 Aw2 Bx1))
              By1))
            Cw1)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            (expt Cw1 2)))
          Cx1)
	 (*
          (+
           (* -1 Aw2 Ay1 (expt Bw1 2))
           (* Aw1 Aw2 Bw1 By1)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            Cw1))
          (expt Cx1 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -1 Ax1 Bw1 Bw2 Bx1)
	       (* Aw1 Bw2 (expt Bx1 2)))
            Bx2)
           (*
            (+ (* Ax1 (expt Bw1 2))
	       (* -1 Aw1 Bw1 Bx1))
            (expt Bx2 2)))
          Cw1)
	 (*
          (+
           (* 2 (expt Ax1 2) Bw2 Bx2)
           (* -2 Aw1 Ax1 (expt Bx2 2)))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* -1 Ax1 Ax2 Bw1 Bx1)
	       (* Aw1 Ax2 (expt Bx1 2)))
            Cw1)
           (* 2 (expt Ax1 2) Ax2
	      (expt Cw1 2)))
          Cw2)
	 (*
          (+
           (* Ax1 Bw1 (expt Bw2 2) Bx1)
           (* -1 Aw1 (expt Bw2 2)
	      (expt Bx1 2))
           (*
            (+
             (* -1 Ax1 (expt Bw1 2) Bw2)
             (* Aw1 Bw1 Bw2 Bx1))
            Bx2)
           (*
            (+
             (* -2 (expt Ax1 2)
		(expt Bw2 2))
             (* 2 (expt Aw1 2)
		(expt Bx2 2)))
            Cw1)
           (*
            (+
             (* -1 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* 2 Aw2 Ax1)
		 (* Aw1 Ax2))
              Bw1 Bx1)
             (* -2 Aw1 Aw2 (expt Bx1 2))
             (* -4 Aw2 (expt Ax1 2) Cw1))
            Cw2))
          Cx1)
	 (*
          (+
           (* 2 Aw1 Ax1 (expt Bw2 2))
           (* -2 (expt Aw1 2) Bw2 Bx2)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            Cw2))
          (expt Cx1 2))
	 (*
          (+
           (*
            (+
             (* 2 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw1 Bx1)
             (* Aw1 Aw2 (expt Bx1 2)))
            Cw1)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            (expt Cw1 2))
           (*
            (+
             (* -1 Aw2 Ax1 (expt Bw1 2))
             (* Aw1 Aw2 Bw1 Bx1)
             (* 4 (expt Aw1 2) Ax2 Cw1))
            Cx1)
           (* -2 (expt Aw1 2) Aw2
	      (expt Cx1 2)))
          Cx2))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+ (* Ax1 Ax2 Bw1 Bx1)
	   (* -1 Aw1 Ax2 (expt Bx1 2)))
	(expt Cw1 2))
       (* -1 (expt Ax1 2) Ax2
	  (expt Cw1 3))
       (*
	(+
	 (*
          (+
           (* -1 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -1 Aw2 Ax1)
	       (* Aw1 Ax2))
            Bw1 Bx1)
           (* Aw1 Aw2 (expt Bx1 2)))
          Cw1)
	 (*
          (+ (* Aw2 (expt Ax1 2))
	     (* 2 Aw1 Ax1 Ax2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (* Aw2 Ax1 (expt Bw1 2))
	 (* -1 Aw1 Aw2 Bw1 Bx1)
	 (*
          (+ (* -2 Aw1 Aw2 Ax1)
	     (* -1 (expt Aw1 2) Ax2))
          Cw1))
	(expt Cx1 2))
       (* (expt Aw1 2) Aw2
	  (expt Cx1 3)))
      (expt Cy2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -4 Ay1 Bw2 (expt Bx1 2)
	      Bx2)
           (* 4 Ay1 Bw1 Bx1
	      (expt Bx2 2)))
          By1)
	 (*
          (+ (* 4 Ax1 Bw2 Bx1 Bx2)
	     (*
	      (+ (* -2 Ax1 Bw1)
		 (* -2 Aw1 Bx1))
	      (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* 4 Ay1 Bw2 (expt Bx1 3))
           (* -4 Ay1 Bw1 (expt Bx1 2)
	      Bx2)
           (*
            (+
             (* -4 Ax1 Bw2 (expt Bx1 2))
             (* 4 Aw1 (expt Bx1 2) Bx2))
            By1))
          By2)
	 (*
          (+
           (* 2 Ax1 Bw1 (expt Bx1 2))
           (* -2 Aw1 (expt Bx1 3)))
          (expt By2 2))
	 (*
          (+
           (* -3 (expt Ay1 2) Bx1
	      (expt Bx2 2))
           (* Ax1 Ay1 (expt Bx2 2) By1)
           (*
            (+ (* 5 Ax1 Ay1 Bx1 Bx2)
	       (* -1 (expt Ax1 2) Bx2 By1))
            By2)
           (* -2 (expt Ax1 2) Bx1
	      (expt By2 2)))
          Cw1))
	Cw2)
       (*
	(+
	 (* 2 Ay1 Ay2 (expt Bx1 3))
	 (*
          (+ (* -2 Ax2 Ay1)
	     (* -2 Ax1 Ay2))
          (expt Bx1 2) By1)
	 (* 2 Ax1 Ax2 Bx1 (expt By1 2)))
	(expt Cw2 2))
       (*
	(+
	 (*
          (+
           (* 6 (expt Ay1 2) Bw2 Bx1 Bx2)
           (* -3 (expt Ay1 2) Bw1
	      (expt Bx2 2))
           (*
            (+ (* -2 Ax1 Ay1 Bw2 Bx2)
	       (* Aw1 Ay1 (expt Bx2 2)))
            By1)
           (*
            (+ (* -12 Ax1 Ay1 Bw2 Bx1)
	       (* 7 Ax1 Ay1 Bw1 Bx2)
	       (*
		(+
		 (* 8 (expt Ax1 2) Bw2)
		 (* -7 Aw1 Ax1 Bx2))
		By1))
            By2)
           (*
            (+
             (* -4 (expt Ax1 2) Bw1)
             (* 6 Aw1 Ax1 Bx1))
            (expt By2 2)))
          Cw2)
	 (*
          (+
           (*
            (+
             (* 3 Ax2 (expt Ay1 2))
             (* -6 Ax1 Ay1 Ay2))
            Bx1)
           (*
            (+ (* -1 Ax1 Ax2 Ay1)
	       (* 4 (expt Ax1 2) Ay2))
            By1))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (*
          (+
           (* -2 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* 8 Ay1 Bw1 Bw2 Bx1 Bx2)
           (* -6 Ay1 (expt Bw1 2)
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* 2 Ax1 (expt Bw2 2) Bx1)
           (*
            (+ (* -4 Ax1 Bw1 Bw2)
	       (* -4 Aw1 Bw2 Bx1))
            Bx2)
           (* 6 Aw1 Bw1 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* -4 Ay1 Bw1 Bw2
	      (expt Bx1 2))
           (* 4 Ay1 (expt Bw1 2) Bx1 Bx2)
           (*
            (+
             (* 4 Aw1 Bw2 (expt Bx1 2))
             (*
              (+
               (* 4 Ax1 (expt Bw1 2))
               (* -8 Aw1 Bw1 Bx1))
              Bx2))
            By1))
          By2)
	 (*
          (+
           (* -2 Ax1 (expt Bw1 2) Bx1)
           (* 2 Aw1 Bw1 (expt Bx1 2)))
          (expt By2 2))
	 (*
          (+
           (* -6 (expt Ay1 2) Bw2 Bx1
	      Bx2)
           (* 9 (expt Ay1 2) Bw1
	      (expt Bx2 2))
           (*
            (+ (* 2 Ax1 Ay1 Bw2 Bx2)
	       (* -3 Aw1 Ay1 (expt Bx2 2)))
            By1)
           (*
            (+ (* 5 Ax1 Ay1 Bw2 Bx1)
	       (*
		(+ (* -12 Ax1 Ay1 Bw1)
		   (* 2 Aw1 Ay1 Bx1))
		Bx2)
	       (*
		(+
		 (* -1 (expt Ax1 2) Bw2)
		 (* 2 Aw1 Ax1 Bx2))
		By1))
            By2)
           (*
            (+
             (* 3 (expt Ax1 2) Bw1)
             (* -1 Aw1 Ax1 Bx1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -4 Ay1 Ay2 Bw1
	      (expt Bx1 2))
           (*
            (+ (* 8 Ax2 Ay1 Bw1 Bx1)
	       (*
		(+ (* -4 Aw2 Ay1)
		   (* 4 Aw1 Ay2))
		(expt Bx1 2)))
            By1)
           (*
            (+ (* -4 Ax1 Ax2 Bw1)
	       (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Bx1))
            (expt By1 2))
           (*
            (+
             (*
              (+
               (* -6 Ax2 (expt Ay1 2))
               (* 5 Ax1 Ay1 Ay2))
              Bx1)
             (*
              (+ (* 2 Ax1 Ax2 Ay1)
		 (* -1 (expt Ax1 2) Ay2))
              By1))
            Cw1))
          Cw2)
	 (*
          (+
           (* 3 (expt Ay1 2)
	      (expt Bw2 2) Bx1)
           (* -6 (expt Ay1 2) Bw1 Bw2
	      Bx2)
           (*
            (+
             (* -1 Ax1 Ay1 (expt Bw2 2))
             (* 2 Aw1 Ay1 Bw2 Bx2))
            By1)
           (*
            (+ (* 7 Ax1 Ay1 Bw1 Bw2)
	       (* -2 Aw1 Ay1 Bw1 Bx2)
	       (*
		(+ (* -7 Aw1 Ax1 Bw2)
		   (* 6 (expt Aw1 2) Bx2))
		By1))
            By2)
           (*
            (+ (* Aw1 Ax1 Bw1)
	       (* -3 (expt Aw1 2) Bx1))
            (expt By2 2))
           (*
            (+
             (*
              (+
               (* -6 Ax2 (expt Ay1 2))
               (* 7 Ax1 Ay1 Ay2))
              Bw1)
             (* 6 Aw2 (expt Ay1 2) Bx1)
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -7 Aw1 Ax1 Ay2))
              By1))
            Cw2))
          Cx1))
	Cx2)
       (*
	(+
	 (* 2 Ay1 Ay2 (expt Bw1 2) Bx1)
	 (*
          (+
           (*
            (+ (* -6 Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            Bw1 Bx1))
          By1)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
	       (* 6 Aw1 Ax2))
            Bw1)
           (* -2 Aw1 Aw2 Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* 9 Ax2 (expt Ay1 2))
             (* -6 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -3 Aw2 (expt Ay1 2))
             (* Aw1 Ay1 Ay2))
            Bx1)
           (*
            (+
             (*
              (+ (* Aw2 Ax1)
		 (* -3 Aw1 Ax2))
              Ay1)
             (* Aw1 Ax1 Ay2))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -3 Aw2 (expt Ay1 2))
             (* -1 Aw1 Ay1 Ay2))
            Bw1)
           (*
            (+ (* Aw1 Aw2 Ay1)
	       (* 3 (expt Aw1 2) Ay2))
            By1))
          Cx1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+
           (* 2 Ax1 Ay1 Bw2 Bx1 Bx2)
           (*
            (+ (* -1 Ax1 Ay1 Bw1)
	       (* -1 Aw1 Ay1 Bx1))
            (expt Bx2 2))
           (*
            (+
             (* -6 (expt Ax1 2) Bw2 Bx2)
             (* 6 Aw1 Ax1 (expt Bx2 2)))
            By1)
           (*
            (+
             (* 4 (expt Ax1 2) Bw2 Bx1)
             (*
              (+
               (* (expt Ax1 2) Bw1)
               (* -5 Aw1 Ax1 Bx1))
              Bx2))
            By2))
          Cw2)
	 (*
          (+
           (*
            (+ (* Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            Bx1)
           (* -3 (expt Ax1 2) Ax2 By1))
          (expt Cw2 2))
	 (*
          (+
           (* Ax1 Ay1 (expt Bw2 2) Bx1)
           (*
            (+ (* -2 Ax1 Ay1 Bw1 Bw2)
	       (* -2 Aw1 Ay1 Bw2 Bx1))
            Bx2)
           (* 3 Aw1 Ay1 Bw1 (expt Bx2 2))
           (*
            (+
             (* -3 (expt Ax1 2)
		(expt Bw2 2))
             (* 12 Aw1 Ax1 Bw2 Bx2)
             (* -9 (expt Aw1 2)
		(expt Bx2 2)))
            By1)
           (*
            (+
             (* (expt Ax1 2) Bw1 Bw2)
             (* -5 Aw1 Ax1 Bw2 Bx1)
             (*
              (+ (* -2 Aw1 Ax1 Bw1)
		 (* 6 (expt Aw1 2) Bx1))
              Bx2))
            By2)
           (*
            (+
             (*
              (+ (* -2 Ax1 Ax2 Ay1)
		 (* (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* -5 Aw1 Ax1 Ay2))
              Bx1)
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 12 Aw1 Ax1 Ax2))
              By1))
            Cw2))
          Cx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              Ay1)
             (* -1 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -1 Aw1 Aw2 Ay1)
	       (* 3 (expt Aw1 2) Ay2))
            Bx1)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
	       (* -9 (expt Aw1 2) Ax2))
            By1))
          (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (* 2 Ay1 (expt Bw2 2)
	    (expt Bx1 3))
	 (* -4 Ay1 Bw1 Bw2 (expt Bx1 2)
	    Bx2)
	 (* 2 Ay1 (expt Bw1 2) Bx1
	    (expt Bx2 2))
	 (*
          (+
           (* -2 Ax1 (expt Bw2 2)
	      (expt Bx1 2))
           (* 4 Aw1 Bw2 (expt Bx1 2) Bx2)
           (*
            (+
             (* 2 Ax1 (expt Bw1 2))
             (* -4 Aw1 Bw1 Bx1))
            (expt Bx2 2)))
          By1)
	 (*
          (+
           (* 4 Ax1 Bw1 Bw2 (expt Bx1 2))
           (* -4 Aw1 Bw2 (expt Bx1 3))
           (*
            (+
             (* -4 Ax1 (expt Bw1 2) Bx1)
             (* 4 Aw1 Bw1 (expt Bx1 2)))
            Bx2))
          By2)
	 (*
          (+
           (* 5 Ax1 Ay1 Bw2 Bx1 Bx2)
           (*
            (+ (* -6 Ax1 Ay1 Bw1)
	       (* Aw1 Ay1 Bx1))
            (expt Bx2 2))
           (*
            (+
             (* -1 (expt Ax1 2) Bw2 Bx2)
             (* Aw1 Ax1 (expt Bx2 2)))
            By1)
           (*
            (+
             (* -4 (expt Ax1 2) Bw2 Bx1)
             (*
              (+
               (* 6 (expt Ax1 2) Bw1)
               (* -2 Aw1 Ax1 Bx1))
              Bx2))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 (expt Bx1 2))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            (expt Bx1 3))
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            (expt Bx1 2) By1)
           (*
            (+
             (*
              (+ (* 5 Ax1 Ax2 Ay1)
		 (* -4 (expt Ax1 2) Ay2))
              Bx1)
             (* -1 (expt Ax1 2) Ax2 By1))
            Cw1))
          Cw2)
	 (*
          (+
           (* -6 Ax1 Ay1 (expt Bw2 2)
	      Bx1)
           (* 7 Ax1 Ay1 Bw1 Bw2 Bx2)
           (* -1 Aw1 Ay1 Bw1
	      (expt Bx2 2))
           (*
            (+
             (* 4 (expt Ax1 2)
		(expt Bw2 2))
             (* -7 Aw1 Ax1 Bw2 Bx2)
             (* 3 (expt Aw1 2)
		(expt Bx2 2)))
            By1)
           (*
            (+
             (* -8 (expt Ax1 2) Bw1 Bw2)
             (* 12 Aw1 Ax1 Bw2 Bx1)
             (*
              (+ (* 2 Aw1 Ax1 Bw1)
		 (* -6 (expt Aw1 2) Bx1))
              Bx2))
            By2)
           (*
            (+
             (*
              (+ (* 7 Ax1 Ax2 Ay1)
		 (* -8 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+ (* -12 Aw2 Ax1 Ay1)
		 (* 12 Aw1 Ax1 Ay2))
              Bx1)
             (*
              (+
               (* 8 Aw2 (expt Ax1 2))
               (* -7 Aw1 Ax1 Ax2))
              By1))
            Cw2))
          Cx1)
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
	       (* -4 Ax1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* 4 Aw1 Ay2))
            Bw1 (expt Bx1 2))
           (*
            (+
             (* 4 Ax1 Ax2 (expt Bw1 2))
             (* -8 Aw1 Ax2 Bw1 Bx1)
             (* 4 Aw1 Aw2 (expt Bx1 2)))
            By1)
           (*
            (+
             (*
              (+ (* -12 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* 5 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx1)
             (*
              (+
               (* -1 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              By1))
            Cw1)
           (*
            (+
             (*
              (+
               (*
		(+ (* 7 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (* -6 (expt Aw1 2) Ay2 Bx1)
             (*
              (+ (* -7 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              By1))
            Cx1))
          Cx2)
	 (*
          (+
           (* 2 (expt Ax1 2)
	      (expt Bw2 2) Bx1)
           (*
            (+
             (* (expt Ax1 2) Bw1 Bw2)
             (* -5 Aw1 Ax1 Bw2 Bx1))
            Bx2)
           (*
            (+ (* -1 Aw1 Ax1 Bw1)
	       (* 3 (expt Aw1 2) Bx1))
            (expt Bx2 2))
           (*
            (+
             (* (expt Ax1 2) Ax2 Bw1)
             (*
              (+
               (* 4 Aw2 (expt Ax1 2))
               (* -5 Aw1 Ax1 Ax2))
              Bx1))
            Cw2)
           (*
            (+
             (*
              (+
               (* Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* -5 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Bx1))
            Cx2))
          Cy1))
	Cy2)
       (*
	(+
	 (* -2 Ax1 Ax2 (expt Bw1 2) Bx1)
	 (*
          (+ (* 2 Aw2 Ax1)
	     (* 2 Aw1 Ax2))
          Bw1 (expt Bx1 2))
	 (* -2 Aw1 Aw2 (expt Bx1 3))
	 (*
          (+
           (* 3 (expt Ax1 2) Ax2 Bw1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            Bx1))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -4 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
	       (* -3 (expt Aw1 2) Ax2))
            Bx1))
          Cx1))
	(expt Cy2 2)))
      Dw1)
     (*
      (+
       (*
	(+
	 (* 3 Ax1 (expt Ay1 2)
	    (expt Bx2 2))
	 (* -6 (expt Ax1 2) Ay1 Bx2 By2)
	 (* 3 (expt Ax1 3)
	    (expt By2 2)))
	Cw2)
       (*
	(+
	 (* 6 Ax1 (expt Ay1 2) Bw2 Bx2)
	 (* -9 Aw1 (expt Ay1 2)
	    (expt Bx2 2))
	 (*
          (+
           (* -6 (expt Ax1 2) Ay1 Bw2)
           (* 12 Aw1 Ax1 Ay1 Bx2))
          By2)
	 (* -3 Aw1 (expt Ax1 2)
	    (expt By2 2))
	 (*
          (+
           (* 6 Ax1 Ax2 (expt Ay1 2))
           (* -6 (expt Ax1 2) Ay1 Ay2))
          Cw2))
	Cx2)
       (*
	(+
	 (*
          (+ (* 3 Aw2 Ax1)
	     (* -9 Aw1 Ax2))
          (expt Ay1 2))
	 (* 6 Aw1 Ax1 Ay1 Ay2))
	(expt Cx2 2))
       (*
	(+
	 (* -6 (expt Ax1 2) Ay1 Bw2 Bx2)
	 (* 6 Aw1 Ax1 Ay1 (expt Bx2 2))
	 (*
          (+ (* 6 (expt Ax1 3) Bw2)
	     (* -6 Aw1 (expt Ax1 2) Bx2))
          By2)
	 (*
          (+
           (* -6 (expt Ax1 2) Ax2 Ay1)
           (* 6 (expt Ax1 3) Ay2))
          Cw2)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 12 Aw1 Ax1 Ax2))
            Ay1)
           (* -6 Aw1 (expt Ax1 2) Ay2))
          Cx2))
	Cy2)
       (*
	(+ (* 3 Aw2 (expt Ax1 3))
	   (* -3 Aw1 (expt Ax1 2) Ax2))
	(expt Cy2 2)))
      (expt Dw1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 6 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* -8 Ay1 Bw1 Bw2 Bx1 Bx2)
           (* 2 Ay1 (expt Bw1 2)
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -6 Ax1 (expt Bw2 2) Bx1)
           (*
            (+ (* 4 Ax1 Bw1 Bw2)
	       (* 4 Aw1 Bw2 Bx1))
            Bx2)
           (* -2 Aw1 Bw1 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* -4 Ay1 Bw1 Bw2
	      (expt Bx1 2))
           (* 4 Ay1 (expt Bw1 2) Bx1 Bx2)
           (*
            (+ (* 8 Ax1 Bw1 Bw2 Bx1)
	       (* -4 Aw1 Bw2 (expt Bx1 2))
	       (* -4 Ax1 (expt Bw1 2) Bx2))
            By1))
          By2)
	 (*
          (+
           (* -2 Ax1 (expt Bw1 2) Bx1)
           (* 2 Aw1 Bw1 (expt Bx1 2)))
          (expt By2 2))
	 (*
          (+
           (* 6 (expt Ay1 2) Bw2 Bx1 Bx2)
           (* -3 (expt Ay1 2) Bw1
	      (expt Bx2 2))
           (*
            (+ (* -2 Ax1 Ay1 Bw2 Bx2)
	       (* Aw1 Ay1 (expt Bx2 2)))
            By1)
           (*
            (+ (* 2 Ax1 Ay1 Bw2 Bx1)
	       (* -7 Aw1 Ay1 Bx1 Bx2)
	       (*
		(+
		 (* -6 (expt Ax1 2) Bw2)
		 (* 7 Aw1 Ax1 Bx2))
		By1))
            By2)
           (*
            (+
             (* 3 (expt Ax1 2) Bw1)
             (* -1 Aw1 Ax1 Bx1))
            (expt By2 2)))
          Cw1))
	Cw2)
       (*
	(+
	 (* -2 Ay1 Ay2 Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* 6 Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            (expt Bx1 2)))
          By1)
	 (*
          (+ (* 2 Ax1 Ax2 Bw1)
	     (*
	      (+ (* -6 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
	      Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* 3 Ax2 (expt Ay1 2))
             (* Ax1 Ay1 Ay2))
            Bx1)
           (*
            (+ (* -1 Ax1 Ax2 Ay1)
	       (* -3 (expt Ax1 2) Ay2))
            By1))
          Cw1))
	(expt Cw2 2))
       (*
	(+
	 (*
          (+
           (* -9 (expt Ay1 2)
	      (expt Bw2 2) Bx1)
           (* 6 (expt Ay1 2) Bw1 Bw2 Bx2)
           (*
            (+
             (* 3 Ax1 Ay1 (expt Bw2 2))
             (* -2 Aw1 Ay1 Bw2 Bx2))
            By1)
           (*
            (+ (* -2 Ax1 Ay1 Bw1 Bw2)
	       (* 12 Aw1 Ay1 Bw2 Bx1)
	       (* -5 Aw1 Ay1 Bw1 Bx2)
	       (*
		(+ (* -2 Aw1 Ax1 Bw2)
		   (* (expt Aw1 2) Bx2))
		By1))
            By2)
           (*
            (+ (* Aw1 Ax1 Bw1)
	       (* -3 (expt Aw1 2) Bx1))
            (expt By2 2)))
          Cw2)
	 (*
          (+
           (*
            (+
             (* 3 Ax2 (expt Ay1 2))
             (* -1 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -9 Aw2 (expt Ay1 2))
             (* 6 Aw1 Ay1 Ay2))
            Bx1)
           (*
            (+
             (*
              (+ (* 3 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay1)
             (* -1 Aw1 Ax1 Ay2))
            By1))
          (expt Cw2 2)))
	Cx1)
       (*
	(+
	 (*
          (+
           (* -4 Ay1 Bw1 (expt Bw2 2)
	      Bx1)
           (* 4 Ay1 (expt Bw1 2) Bw2
	      Bx2))
          By1)
	 (*
          (+
           (* 2 Ax1 Bw1 (expt Bw2 2))
           (* 2 Aw1 (expt Bw2 2) Bx1)
           (* -4 Aw1 Bw1 Bw2 Bx2))
          (expt By1 2))
	 (*
          (+
           (* 4 Ay1 (expt Bw1 2) Bw2 Bx1)
           (* -4 Ay1 (expt Bw1 3) Bx2)
           (*
            (+
             (* -4 Ax1 (expt Bw1 2) Bw2)
             (* 4 Aw1 (expt Bw1 2) Bx2))
            By1))
          By2)
	 (*
          (+ (* 2 Ax1 (expt Bw1 3))
	     (* -2 Aw1 (expt Bw1 2) Bx1))
          (expt By2 2))
	 (*
          (+
           (* 3 (expt Ay1 2)
	      (expt Bw2 2) Bx1)
           (* -6 (expt Ay1 2) Bw1 Bw2
	      Bx2)
           (*
            (+
             (* -1 Ax1 Ay1 (expt Bw2 2))
             (* 2 Aw1 Ay1 Bw2 Bx2))
            By1)
           (*
            (+ (* -7 Aw1 Ay1 Bw2 Bx1)
	       (* 12 Aw1 Ay1 Bw1 Bx2)
	       (*
		(+ (* 7 Aw1 Ax1 Bw2)
		   (* -8 (expt Aw1 2) Bx2))
		By1))
            By2)
           (*
            (+ (* -6 Aw1 Ax1 Bw1)
	       (* 4 (expt Aw1 2) Bx1))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* 4 Ay1 Ay2 (expt Bw1 2) Bx1)
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              (expt Bw1 2))
             (* -8 Aw2 Ay1 Bw1 Bx1))
            By1)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Bw1)
             (* 4 Aw1 Aw2 Bx1))
            (expt By1 2))
           (*
            (+
             (* -6 Ax2 (expt Ay1 2) Bw1)
             (*
              (+
               (* 6 Aw2 (expt Ay1 2))
               (* -7 Aw1 Ay1 Ay2))
              Bx1)
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* 7 Aw1 Ax1 Ay2))
              By1))
            Cw1))
          Cw2)
	 (*
          (+
           (* 3 (expt Ay1 2) Bw1
	      (expt Bw2 2))
           (* -1 Aw1 Ay1 (expt Bw2 2)
	      By1)
           (*
            (+ (* -5 Aw1 Ay1 Bw1 Bw2)
	       (* (expt Aw1 2) Bw2 By1))
            By2)
           (* 2 (expt Aw1 2) Bw1
	      (expt By2 2))
           (*
            (+
             (*
              (+
               (* 6 Aw2 (expt Ay1 2))
               (* -5 Aw1 Ay1 Ay2))
              Bw1)
             (*
              (+ (* -2 Aw1 Aw2 Ay1)
		 (* (expt Aw1 2) Ay2))
              By1))
            Cw2))
          Cx1))
	Cx2)
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bw1 3))
	 (*
          (+ (* 2 Aw2 Ay1)
	     (* 2 Aw1 Ay2))
          (expt Bw1 2) By1)
	 (* -2 Aw1 Aw2 Bw1 (expt By1 2))
	 (*
          (+
           (*
            (+
             (* -3 Aw2 (expt Ay1 2))
             (* 6 Aw1 Ay1 Ay2))
            Bw1)
           (*
            (+ (* Aw1 Aw2 Ay1)
	       (* -4 (expt Aw1 2) Ay2))
            By1))
          Cw1))
	(expt Cx2 2))
       (*
	(+
	 (*
          (+
           (* -3 Ax1 Ay1 (expt Bw2 2)
	      Bx1)
           (*
            (+ (* 2 Ax1 Ay1 Bw1 Bw2)
	       (* 2 Aw1 Ay1 Bw2 Bx1))
            Bx2)
           (* -1 Aw1 Ay1 Bw1
	      (expt Bx2 2))
           (*
            (+
             (* 9 (expt Ax1 2)
		(expt Bw2 2))
             (* -12 Aw1 Ax1 Bw2 Bx2)
             (* 3 (expt Aw1 2)
		(expt Bx2 2)))
            By1)
           (*
            (+
             (* -6 (expt Ax1 2) Bw1 Bw2)
             (* 2 Aw1 Ax1 Bw2 Bx1)
             (*
              (+ (* 5 Aw1 Ax1 Bw1)
		 (* -1 (expt Aw1 2) Bx1))
              Bx2))
            By2))
          Cw2)
	 (*
          (+
           (*
            (+ (* Ax1 Ax2 Ay1)
	       (* -3 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -3 Aw2 Ax1)
		 (* Aw1 Ax2))
              Ay1)
             (* Aw1 Ax1 Ay2))
            Bx1)
           (*
            (+
             (* 9 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            By1))
          (expt Cw2 2))
	 (*
          (+
           (* Ax1 Ay1 Bw1 (expt Bw2 2))
           (* Aw1 Ay1 (expt Bw2 2) Bx1)
           (* -2 Aw1 Ay1 Bw1 Bw2 Bx2)
           (*
            (+
             (* -6 Aw1 Ax1 (expt Bw2 2))
             (* 6 (expt Aw1 2) Bw2 Bx2))
            By1)
           (*
            (+ (* 5 Aw1 Ax1 Bw1 Bw2)
	       (* -1 (expt Aw1 2) Bw2 Bx1)
	       (* -4 (expt Aw1 2) Bw1 Bx2))
            By2)
           (*
            (+
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 5 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 2 Aw1 Aw2 Ay1)
		 (* -1 (expt Aw1 2) Ay2))
              Bx1)
             (*
              (+ (* -12 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              By1))
            Cw2))
          Cx2)
	 (*
          (+
           (*
            (+ (* -1 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            Bw1)
           (* 3 (expt Aw1 2) Aw2 By1))
          (expt Cx2 2)))
	Cy1)
       (*
	(+
	 (* -2 Ay1 Bw1 (expt Bw2 2)
	    (expt Bx1 2))
	 (* 4 Ay1 (expt Bw1 2) Bw2 Bx1
	    Bx2)
	 (* -2 Ay1 (expt Bw1 3)
	    (expt Bx2 2))
	 (*
          (+
           (* 4 Ax1 Bw1 (expt Bw2 2) Bx1)
           (* -2 Aw1 (expt Bw2 2)
	      (expt Bx1 2))
           (* -4 Ax1 (expt Bw1 2) Bw2
	      Bx2)
           (* 2 Aw1 (expt Bw1 2)
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -4 Ax1 (expt Bw1 2) Bw2
	      Bx1)
           (* 4 Aw1 Bw1 Bw2 (expt Bx1 2))
           (*
            (+
             (* 4 Ax1 (expt Bw1 3))
             (* -4 Aw1 (expt Bw1 2) Bx1))
            Bx2))
          By2)
	 (*
          (+
           (* Ax1 Ay1 (expt Bw2 2) Bx1)
           (* -7 Aw1 Ay1 Bw2 Bx1 Bx2)
           (* 6 Aw1 Ay1 Bw1 (expt Bx2 2))
           (*
            (+
             (* -3 (expt Ax1 2)
		(expt Bw2 2))
             (* 7 Aw1 Ax1 Bw2 Bx2)
             (* -4 (expt Aw1 2)
		(expt Bx2 2)))
            By1)
           (*
            (+
             (* 6 (expt Ax1 2) Bw1 Bw2)
             (* -2 Aw1 Ax1 Bw2 Bx1)
             (*
              (+ (* -12 Aw1 Ax1 Bw1)
		 (* 8 (expt Aw1 2) Bx1))
              Bx2))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
	       (* -4 Ax1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* 4 Aw1 Ay2))
            Bw1 (expt Bx1 2))
           (*
            (+
             (* -4 Ax1 Ax2 (expt Bw1 2))
             (* 8 Aw2 Ax1 Bw1 Bx1)
             (* -4 Aw1 Aw2 (expt Bx1 2)))
            By1)
           (*
            (+
             (* 6 (expt Ax1 2) Ay2 Bw1)
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -7 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx1)
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 7 Aw1 Ax1 Ax2))
              By1))
            Cw1))
          Cw2)
	 (*
          (+
           (* -1 Ax1 Ay1 Bw1
	      (expt Bw2 2))
           (* 6 Aw1 Ay1 (expt Bw2 2) Bx1)
           (* -5 Aw1 Ay1 Bw1 Bw2 Bx2)
           (*
            (+
             (* -1 Aw1 Ax1 (expt Bw2 2))
             (* (expt Aw1 2) Bw2 Bx2))
            By1)
           (*
            (+ (* 2 Aw1 Ax1 Bw1 Bw2)
	       (* -6 (expt Aw1 2) Bw2 Bx1)
	       (* 4 (expt Aw1 2) Bw1 Bx2))
            By2)
           (*
            (+
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* -5 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 12 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              Bx1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* (expt Aw1 2) Ax2))
              By1))
            Cw2))
          Cx1)
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            (expt Bw1 3))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            (expt Bw1 2) By1)
           (*
            (+
             (*
              (+ (* 12 Aw1 Ax2 Ay1)
		 (* -12 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* -7 Aw1 Aw2 Ay1)
		 (* 8 (expt Aw1 2) Ay2))
              Bx1)
             (*
              (+ (* 7 Aw1 Aw2 Ax1)
		 (* -8 (expt Aw1 2) Ax2))
              By1))
            Cw1)
           (*
            (+
             (*
              (+ (* -5 Aw1 Aw2 Ay1)
		 (* 4 (expt Aw1 2) Ay2))
              Bw1)
             (* (expt Aw1 2) Aw2 By1))
            Cx1))
          Cx2)
	 (*
          (+
           (* -3 (expt Ax1 2) Bw1
	      (expt Bw2 2))
           (* Aw1 Ax1 (expt Bw2 2) Bx1)
           (*
            (+ (* 5 Aw1 Ax1 Bw1 Bw2)
	       (* -1 (expt Aw1 2) Bw2 Bx1))
            Bx2)
           (* -2 (expt Aw1 2) Bw1
	      (expt Bx2 2))
           (*
            (+
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 5 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* -1 (expt Aw1 2) Ax2))
              Bx1))
            Cw2)
           (*
            (+
             (*
              (+ (* 5 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              Bw1)
             (* -1 (expt Aw1 2) Aw2 Bx1))
            Cx2))
          Cy1))
	Cy2)
       (*
	(+
	 (* 2 Ax1 Ax2 (expt Bw1 3))
	 (*
          (+ (* -2 Aw2 Ax1)
	     (* -2 Aw1 Ax2))
          (expt Bw1 2) Bx1)
	 (* 2 Aw1 Aw2 Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
	       (* 4 (expt Aw1 2) Ax2))
            Bx1))
          Cw1)
	 (*
          (+
           (*
            (+ (* Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Bw1)
           (* -3 (expt Aw1 2) Aw2 Bx1))
          Cx1))
	(expt Cy2 2))
       (*
	(+
	 (*
          (+
           (* -12 Ax1 (expt Ay1 2) Bw2
	      Bx2)
           (* 6 Aw1 (expt Ay1 2)
	      (expt Bx2 2))
           (* 12 (expt Ax1 2) Ay1 Bw2
	      By2)
           (* -6 Aw1 (expt Ax1 2)
	      (expt By2 2)))
          Cw2)
	 (*
          (+
           (* -6 Ax1 Ax2 (expt Ay1 2))
           (* 6 (expt Ax1 2) Ay1 Ay2))
          (expt Cw2 2))
	 (*
          (+
           (* -6 Ax1 (expt Ay1 2)
	      (expt Bw2 2))
           (* 12 Aw1 (expt Ay1 2) Bw2
	      Bx2)
           (* -12 (expt Aw1 2) Ay1 Bx2
	      By2)
           (* 6 (expt Aw1 2) Ax1
	      (expt By2 2))
           (*
            (+ (* -12 Aw2 Ax1)
	       (* 12 Aw1 Ax2))
            (expt Ay1 2) Cw2))
          Cx2)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ay1 2))
           (* -6 (expt Aw1 2) Ay1 Ay2))
          (expt Cx2 2))
	 (*
          (+
           (* 6 (expt Ax1 2) Ay1
	      (expt Bw2 2))
           (* -6 (expt Aw1 2) Ay1
	      (expt Bx2 2))
           (*
            (+
             (* -12 Aw1 (expt Ax1 2) Bw2)
             (* 12 (expt Aw1 2) Ax1 Bx2))
            By2)
           (*
            (+
             (* 12 Aw2 (expt Ax1 2) Ay1)
             (* -12 Aw1 (expt Ax1 2) Ay2))
            Cw2)
           (*
            (+
             (* -12 (expt Aw1 2) Ax2 Ay1)
             (* 12 (expt Aw1 2) Ax1 Ay2))
            Cx2))
          Cy2)
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ax1 2))
           (* 6 (expt Aw1 2) Ax1 Ax2))
          (expt Cy2 2)))
	Dw1))
      Dx1)
     (*
      (+
       (*
	(+
	 (* 9 Ax1 (expt Ay1 2)
	    (expt Bw2 2))
	 (* -6 Aw1 (expt Ay1 2) Bw2 Bx2)
	 (*
          (+ (* -12 Aw1 Ax1 Ay1 Bw2)
	     (* 6 (expt Aw1 2) Ay1 Bx2))
          By2)
	 (* 3 (expt Aw1 2) Ax1
	    (expt By2 2)))
	Cw2)
       (*
	(+
	 (*
          (+ (* 9 Aw2 Ax1)
	     (* -3 Aw1 Ax2))
          (expt Ay1 2))
	 (* -6 Aw1 Ax1 Ay1 Ay2))
	(expt Cw2 2))
       (*
	(+
	 (* -3 Aw1 (expt Ay1 2)
	    (expt Bw2 2))
	 (* 6 (expt Aw1 2) Ay1 Bw2 By2)
	 (* -3 (expt Aw1 3)
	    (expt By2 2))
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ay1 2))
           (* 6 (expt Aw1 2) Ay1 Ay2))
          Cw2))
	Cx2)
       (*
	(+
	 (* -6 Aw1 Ax1 Ay1 (expt Bw2 2))
	 (* 6 (expt Aw1 2) Ay1 Bw2 Bx2)
	 (*
          (+
           (* 6 (expt Aw1 2) Ax1 Bw2)
           (* -6 (expt Aw1 3) Bx2))
          By2)
	 (*
          (+
           (*
            (+ (* -12 Aw1 Aw2 Ax1)
	       (* 6 (expt Aw1 2) Ax2))
            Ay1)
           (* 6 (expt Aw1 2) Ax1 Ay2))
          Cw2)
	 (*
          (+
           (* 6 (expt Aw1 2) Aw2 Ay1)
           (* -6 (expt Aw1 3) Ay2))
          Cx2))
	Cy2)
       (*
	(+
	 (* 3 (expt Aw1 2) Aw2 Ax1)
	 (* -3 (expt Aw1 3) Ax2))
	(expt Cy2 2)))
      (expt Dx1 2)))
    Dy1)
   (*
    (+
     (*
      (+
       (* -3 Ay1 (expt Bw2 2)
	  (expt Bx1 3))
       (* 6 Ay1 Bw1 Bw2 (expt Bx1 2)
	  Bx2)
       (* -3 Ay1 (expt Bw1 2) Bx1
	  (expt Bx2 2))
       (*
	(+
	 (* 3 Ax1 (expt Bw2 2)
	    (expt Bx1 2))
	 (*
          (+ (* -4 Ax1 Bw1 Bw2 Bx1)
	     (* -2 Aw1 Bw2 (expt Bx1 2)))
          Bx2)
	 (*
          (+ (* Ax1 (expt Bw1 2))
	     (* 2 Aw1 Bw1 Bx1))
          (expt Bx2 2)))
	By1)
       (*
	(+
	 (* -2 Ax1 Bw1 Bw2 (expt Bx1 2))
	 (* 2 Aw1 Bw2 (expt Bx1 3))
	 (*
          (+
           (* 2 Ax1 (expt Bw1 2) Bx1)
           (* -2 Aw1 Bw1 (expt Bx1 2)))
          Bx2))
	By2)
       (*
	(+
	 (* -6 Ax1 Ay1 Bw2 Bx1 Bx2)
	 (*
          (+ (* 3 Ax1 Ay1 Bw1)
	     (* 3 Aw1 Ay1 Bx1))
          (expt Bx2 2))
	 (*
          (+
           (* 4 (expt Ax1 2) Bw2 Bx2)
           (* -4 Aw1 Ax1 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* 2 (expt Ax1 2) Bw2 Bx1)
           (*
            (+
             (* -3 (expt Ax1 2) Bw1)
             (* Aw1 Ax1 Bx1))
            Bx2))
          By2))
	Cw1))
      Cw2)
     (*
      (+
       (*
	(+ (* 3 Ax2 Ay1)
	   (* -1 Ax1 Ay2))
	Bw1 (expt Bx1 2))
       (*
	(+ (* -3 Aw2 Ay1)
	   (* Aw1 Ay2))
	(expt Bx1 3))
       (*
	(+ (* -2 Ax1 Ax2 Bw1 Bx1)
	   (*
	    (+ (* 3 Aw2 Ax1)
	       (* -1 Aw1 Ax2))
	    (expt Bx1 2)))
	By1)
       (*
	(+
	 (*
          (+ (* -3 Ax1 Ax2 Ay1)
	     (* (expt Ax1 2) Ay2))
          Bx1)
	 (* 2 (expt Ax1 2) Ax2 By1))
	Cw1))
      (expt Cw2 2))
     (*
      (+
       (*
	(+
	 (* 9 Ax1 Ay1 (expt Bw2 2) Bx1)
	 (*
          (+ (* -6 Ax1 Ay1 Bw1 Bw2)
	     (* -6 Aw1 Ay1 Bw2 Bx1))
          Bx2)
	 (* 3 Aw1 Ay1 Bw1 (expt Bx2 2))
	 (*
          (+
           (* -6 (expt Ax1 2)
	      (expt Bw2 2))
           (* 8 Aw1 Ax1 Bw2 Bx2)
           (* -2 (expt Aw1 2)
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* 4 (expt Ax1 2) Bw1 Bw2)
           (* -6 Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* -1 Aw1 Ax1 Bw1)
	       (* 3 (expt Aw1 2) Bx1))
            Bx2))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+ (* -3 Ax1 Ax2 Ay1)
	     (* 2 (expt Ax1 2) Ay2))
          Bw1)
	 (*
          (+
           (*
            (+ (* 9 Aw2 Ax1)
	       (* -3 Aw1 Ax2))
            Ay1)
           (* -3 Aw1 Ax1 Ay2))
          Bx1)
	 (*
          (+ (* -6 Aw2 (expt Ax1 2))
	     (* 4 Aw1 Ax1 Ax2))
          By1))
	(expt Cw2 2)))
      Cx1)
     (*
      (+
       (* 3 Ay1 Bw1 (expt Bw2 2)
	  (expt Bx1 2))
       (* -6 Ay1 (expt Bw1 2) Bw2 Bx1
	  Bx2)
       (* 3 Ay1 (expt Bw1 3)
	  (expt Bx2 2))
       (*
	(+
	 (* -2 Ax1 Bw1 (expt Bw2 2) Bx1)
	 (* -1 Aw1 (expt Bw2 2)
	    (expt Bx1 2))
	 (*
          (+
           (* 2 Ax1 (expt Bw1 2) Bw2)
           (* 4 Aw1 Bw1 Bw2 Bx1))
          Bx2)
	 (* -3 Aw1 (expt Bw1 2)
	    (expt Bx2 2)))
	By1)
       (*
	(+
	 (* 2 Ax1 (expt Bw1 2) Bw2 Bx1)
	 (* -2 Aw1 Bw1 Bw2 (expt Bx1 2))
	 (*
          (+ (* -2 Ax1 (expt Bw1 3))
	     (* 2 Aw1 (expt Bw1 2) Bx1))
          Bx2))
	By2)
       (*
	(+
	 (* -3 Ax1 Ay1 (expt Bw2 2) Bx1)
	 (*
          (+ (* 6 Ax1 Ay1 Bw1 Bw2)
	     (* 6 Aw1 Ay1 Bw2 Bx1))
          Bx2)
	 (* -9 Aw1 Ay1 Bw1 (expt Bx2 2))
	 (*
          (+
           (* 2 (expt Ax1 2)
	      (expt Bw2 2))
           (* -8 Aw1 Ax1 Bw2 Bx2)
           (* 6 (expt Aw1 2)
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -3 (expt Ax1 2) Bw1 Bw2)
           (* Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* 6 Aw1 Ax1 Bw1)
	       (* -4 (expt Aw1 2) Bx1))
            Bx2))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+ (* -6 Ax2 Ay1)
	     (* 2 Ax1 Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* 6 Aw2 Ay1)
	     (* -2 Aw1 Ay2))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (* 2 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            Bw1 Bx1)
           (* -2 Aw1 Aw2 (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+ (* 6 Ax1 Ax2 Ay1)
	       (* -3 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -6 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
              Ay1)
             (* Aw1 Ax1 Ay2))
            Bx1)
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -8 Aw1 Ax1 Ax2))
            By1))
          Cw1))
	Cw2)
       (*
	(+
	 (* -3 Ax1 Ay1 Bw1 (expt Bw2 2))
	 (* -3 Aw1 Ay1 (expt Bw2 2) Bx1)
	 (* 6 Aw1 Ay1 Bw1 Bw2 Bx2)
	 (*
          (+
           (* 4 Aw1 Ax1 (expt Bw2 2))
           (* -4 (expt Aw1 2) Bw2 Bx2))
          By1)
	 (*
          (+ (* -1 Aw1 Ax1 Bw1 Bw2)
	     (* 3 (expt Aw1 2) Bw2 Bx1)
	     (* -2 (expt Aw1 2) Bw1 Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -6 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
              Ay1)
             (* -1 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -6 Aw1 Aw2 Ay1)
	       (* 3 (expt Aw1 2) Ay2))
            Bx1)
           (*
            (+ (* 8 Aw1 Aw2 Ax1)
	       (* -4 (expt Aw1 2) Ax2))
            By1))
          Cw2))
	Cx1))
      Cx2)
     (*
      (+
       (*
	(+ (* 3 Ax2 Ay1)
	   (* -1 Ax1 Ay2))
	(expt Bw1 3))
       (*
	(+ (* -3 Aw2 Ay1)
	   (* Aw1 Ay2))
	(expt Bw1 2) Bx1)
       (*
	(+
	 (*
          (+ (* Aw2 Ax1)
	     (* -3 Aw1 Ax2))
          (expt Bw1 2))
	 (* 2 Aw1 Aw2 Bw1 Bx1))
	By1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 3 Aw2 Ax1)
	       (* -9 Aw1 Ax2))
            Ay1)
           (* 3 Aw1 Ax1 Ay2))
          Bw1)
	 (*
          (+ (* 3 Aw1 Aw2 Ay1)
	     (* -2 (expt Aw1 2) Ay2))
          Bx1)
	 (*
          (+ (* -4 Aw1 Aw2 Ax1)
	     (* 6 (expt Aw1 2) Ax2))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+ (* 3 Aw1 Aw2 Ay1)
	     (* -1 (expt Aw1 2) Ay2))
          Bw1)
	 (* -2 (expt Aw1 2) Aw2 By1))
	Cx1))
      (expt Cx2 2))
     (*
      (+
       (*
	(+
	 (* -3 (expt Ax1 2)
	    (expt Bw2 2) Bx1)
	 (*
          (+
           (* 2 (expt Ax1 2) Bw1 Bw2)
           (* 4 Aw1 Ax1 Bw2 Bx1))
          Bx2)
	 (*
          (+ (* -2 Aw1 Ax1 Bw1)
	     (* -1 (expt Aw1 2) Bx1))
          (expt Bx2 2)))
	Cw2)
       (*
	(+
	 (* (expt Ax1 2) Ax2 Bw1)
	 (*
          (+ (* -3 Aw2 (expt Ax1 2))
	     (* 2 Aw1 Ax1 Ax2))
          Bx1))
	(expt Cw2 2))
       (*
	(+
	 (* (expt Ax1 2) Bw1
	    (expt Bw2 2))
	 (* 2 Aw1 Ax1 (expt Bw2 2) Bx1)
	 (*
          (+ (* -4 Aw1 Ax1 Bw1 Bw2)
	     (* -2 (expt Aw1 2) Bw2 Bx1))
          Bx2)
	 (* 3 (expt Aw1 2) Bw1
	    (expt Bx2 2))
	 (*
          (+
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            Bx1))
          Cw2))
	Cx2)
       (*
	(+
	 (*
          (+ (* -2 Aw1 Aw2 Ax1)
	     (* 3 (expt Aw1 2) Ax2))
          Bw1)
	 (* -1 (expt Aw1 2) Aw2 Bx1))
	(expt Cx2 2)))
      Cy1)
     (*
      (+
       (* -1 Ax1 Bw1 (expt Bw2 2)
	  (expt Bx1 2))
       (* Aw1 (expt Bw2 2)
	  (expt Bx1 3))
       (*
	(+
	 (* 2 Ax1 (expt Bw1 2) Bw2 Bx1)
	 (* -2 Aw1 Bw1 Bw2 (expt Bx1 2)))
	Bx2)
       (*
	(+ (* -1 Ax1 (expt Bw1 3))
	   (* Aw1 (expt Bw1 2) Bx1))
	(expt Bx2 2))
       (*
	(+
	 (* (expt Ax1 2)
	    (expt Bw2 2) Bx1)
	 (*
          (+
           (* -3 (expt Ax1 2) Bw1 Bw2)
           (* Aw1 Ax1 Bw2 Bx1))
          Bx2)
	 (*
          (+ (* 3 Aw1 Ax1 Bw1)
	     (* -2 (expt Aw1 2) Bx1))
          (expt Bx2 2)))
	Cw1)
       (*
	(+
	 (* 2 Ax1 Ax2 (expt Bw1 2) Bx1)
	 (*
          (+ (* -2 Aw2 Ax1)
	     (* -2 Aw1 Ax2))
          Bw1 (expt Bx1 2))
	 (* 2 Aw1 Aw2 (expt Bx1 3))
	 (*
          (+
           (* -3 (expt Ax1 2) Ax2 Bw1)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            Bx1))
          Cw1))
	Cw2)
       (*
	(+
	 (* 2 (expt Ax1 2) Bw1
	    (expt Bw2 2))
	 (* -3 Aw1 Ax1 (expt Bw2 2) Bx1)
	 (*
          (+ (* -1 Aw1 Ax1 Bw1 Bw2)
	     (* 3 (expt Aw1 2) Bw2 Bx1))
          Bx2)
	 (* -1 (expt Aw1 2) Bw1
	    (expt Bx2 2))
	 (*
          (+
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
	       (* 3 (expt Aw1 2) Ax2))
            Bx1))
          Cw2))
	Cx1)
       (*
	(+
	 (* -2 Ax1 Ax2 (expt Bw1 3))
	 (*
          (+ (* 2 Aw2 Ax1)
	     (* 2 Aw1 Ax2))
          (expt Bw1 2) Bx1)
	 (* -2 Aw1 Aw2 Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -3 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* Aw1 Aw2 Ax1)
	       (* -4 (expt Aw1 2) Ax2))
            Bx1))
          Cw1)
	 (*
          (+
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            Bw1)
           (* 3 (expt Aw1 2) Aw2 Bx1))
          Cx1))
	Cx2))
      Cy2)
     (*
      (+
       (*
	(+
	 (* 6 (expt Ax1 2) Ay1 Bw2 Bx2)
	 (* -6 Aw1 Ax1 Ay1 (expt Bx2 2))
	 (*
          (+ (* -6 (expt Ax1 3) Bw2)
	     (* 6 Aw1 (expt Ax1 2) Bx2))
          By2))
	Cw2)
       (*
	(+
	 (* 3 (expt Ax1 2) Ax2 Ay1)
	 (* -3 (expt Ax1 3) Ay2))
	(expt Cw2 2))
       (*
	(+
	 (* 3 (expt Ax1 2) Ay1
	    (expt Bw2 2))
	 (* -12 Aw1 Ax1 Ay1 Bw2 Bx2)
	 (* 9 (expt Aw1 2) Ay1
	    (expt Bx2 2))
	 (*
          (+
           (* 6 Aw1 (expt Ax1 2) Bw2)
           (* -6 (expt Aw1 2) Ax1 Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -12 Aw1 Ax1 Ax2))
            Ay1)
           (* 6 Aw1 (expt Ax1 2) Ay2))
          Cw2))
	Cx2)
       (*
	(+
	 (*
          (+ (* -6 Aw1 Aw2 Ax1)
	     (* 9 (expt Aw1 2) Ax2))
          Ay1)
	 (* -3 (expt Aw1 2) Ax1 Ay2))
	(expt Cx2 2))
       (*
	(+
	 (* -3 (expt Ax1 3)
	    (expt Bw2 2))
	 (* 6 Aw1 (expt Ax1 2) Bw2 Bx2)
	 (* -3 (expt Aw1 2) Ax1
	    (expt Bx2 2))
	 (*
          (+ (* -6 Aw2 (expt Ax1 3))
	     (* 6 Aw1 (expt Ax1 2) Ax2))
          Cw2)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Cx2))
	Cy2))
      Dw1)
     (*
      (+
       (*
	(+
	 (* -9 (expt Ax1 2) Ay1
	    (expt Bw2 2))
	 (* 12 Aw1 Ax1 Ay1 Bw2 Bx2)
	 (* -3 (expt Aw1 2) Ay1
	    (expt Bx2 2))
	 (*
          (+
           (* 6 Aw1 (expt Ax1 2) Bw2)
           (* -6 (expt Aw1 2) Ax1 Bx2))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+ (* -9 Aw2 (expt Ax1 2))
	     (* 6 Aw1 Ax1 Ax2))
          Ay1)
	 (* 3 Aw1 (expt Ax1 2) Ay2))
	(expt Cw2 2))
       (*
	(+
	 (* 6 Aw1 Ax1 Ay1 (expt Bw2 2))
	 (* -6 (expt Aw1 2) Ay1 Bw2 Bx2)
	 (*
          (+
           (* -6 (expt Aw1 2) Ax1 Bw2)
           (* 6 (expt Aw1 3) Bx2))
          By2)
	 (*
          (+
           (*
            (+ (* 12 Aw1 Aw2 Ax1)
	       (* -6 (expt Aw1 2) Ax2))
            Ay1)
           (* -6 (expt Aw1 2) Ax1 Ay2))
          Cw2))
	Cx2)
       (*
	(+
	 (* -3 (expt Aw1 2) Aw2 Ay1)
	 (* 3 (expt Aw1 3) Ay2))
	(expt Cx2 2))
       (*
	(+
	 (* 3 Aw1 (expt Ax1 2)
	    (expt Bw2 2))
	 (* -6 (expt Aw1 2) Ax1 Bw2 Bx2)
	 (* 3 (expt Aw1 3)
	    (expt Bx2 2))
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Cw2)
	 (*
          (+
           (* -6 (expt Aw1 2) Aw2 Ax1)
           (* 6 (expt Aw1 3) Ax2))
          Cx2))
	Cy2))
      Dx1))
    (expt Dy1 2))
   (*
    (+
     (*
      (+
       (* 3 (expt Ax1 3)
	  (expt Bw2 2))
       (* -6 Aw1 (expt Ax1 2) Bw2 Bx2)
       (* 3 (expt Aw1 2) Ax1
	  (expt Bx2 2)))
      Cw2)
     (*
      (+ (* 3 Aw2 (expt Ax1 3))
	 (* -3 Aw1 (expt Ax1 2) Ax2))
      (expt Cw2 2))
     (*
      (+
       (* -3 Aw1 (expt Ax1 2)
	  (expt Bw2 2))
       (* 6 (expt Aw1 2) Ax1 Bw2 Bx2)
       (* -3 (expt Aw1 3)
	  (expt Bx2 2))
       (*
	(+
	 (* -6 Aw1 Aw2 (expt Ax1 2))
	 (* 6 (expt Aw1 2) Ax1 Ax2))
	Cw2))
      Cx2)
     (*
      (+
       (* 3 (expt Aw1 2) Aw2 Ax1)
       (* -3 (expt Aw1 3) Ax2))
      (expt Cx2 2)))
    (expt Dy1 3))))

(defun intersection-rational-power-basis-cubic/quadratic-c3
    (Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1 Ax2 Bx2 Cx2 Ay2 By2 Cy2 Aw2 Bw2 Cw2)
  (+
   (*
    (+
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* -1 Ay1 Bw2 Bx1 Bx2)
	       (* Ay1 Bw1 (expt Bx2 2)))
            By1)
           (*
            (+ (* Ax1 Bw2 Bx2)
	       (* -1 Aw1 (expt Bx2 2)))
            (expt By1 2)))
          By2)
	 (*
          (+
           (* Ay1 Bw2 (expt Bx1 2))
           (* -1 Ay1 Bw1 Bx1 Bx2)
           (*
            (+ (* -1 Ax1 Bw2 Bx1)
	       (*
		(+ (* -1 Ax1 Bw1)
		   (* 2 Aw1 Bx1))
		Bx2))
            By1))
          (expt By2 2))
	 (*
          (+ (* Ax1 Bw1 Bx1)
	     (* -1 Aw1 (expt Bx1 2)))
          (expt By2 3)))
	Cw1)
       (*
	(+
	 (* -1 (expt Ay1 2)
	    (expt Bx2 2) By2)
	 (* 2 Ax1 Ay1 Bx2 (expt By2 2))
	 (* -1 (expt Ax1 2)
	    (expt By2 3)))
	(expt Cw1 2))
       (*
	(+
	 (* -1 Ay1 Ay2 Bx1 Bx2 By1)
	 (* Ax1 Ay2 Bx2 (expt By1 2))
	 (*
          (+
           (* 2 Ay1 Ay2 (expt Bx1 2))
           (*
            (+ (* -1 Ax2 Ay1)
	       (* -2 Ax1 Ay2))
            Bx1 By1)
           (* Ax1 Ax2 (expt By1 2)))
          By2))
	Cw1 Cw2))
      Cx1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* Ay1 (expt Bw2 2) Bx1)
           (* -1 Ay1 Bw1 Bw2 Bx2))
          By1)
	 (*
          (+ (* -1 Ax1 (expt Bw2 2))
	     (* Aw1 Bw2 Bx2))
          (expt By1 2)))
	By2)
       (*
	(+ (* -1 Ay1 Bw1 Bw2 Bx1)
	   (* Ay1 (expt Bw1 2) Bx2)
	   (*
	    (+ (* 2 Ax1 Bw1 Bw2)
	       (* -1 Aw1 Bw2 Bx1)
	       (* -1 Aw1 Bw1 Bx2))
	    By1))
	(expt By2 2))
       (*
	(+ (* -1 Ax1 (expt Bw1 2))
	   (* Aw1 Bw1 Bx1))
	(expt By2 3))
       (*
	(+
	 (* 2 (expt Ay1 2) Bw2 Bx2 By2)
	 (*
          (+ (* -2 Ax1 Ay1 Bw2)
	     (* -2 Aw1 Ay1 Bx2))
          (expt By2 2))
	 (* 2 Aw1 Ax1 (expt By2 3)))
	Cw1)
       (*
	(+
	 (*
          (+ (* 2 Ay1 Ay2 Bw2 Bx1)
	     (* -1 Ay1 Ay2 Bw1 Bx2))
          By1)
	 (*
          (+ (* -2 Ax1 Ay2 Bw2)
	     (* Aw1 Ay2 Bx2))
          (expt By1 2))
	 (*
          (+ (* -2 Ay1 Ay2 Bw1 Bx1)
	     (*
	      (+
	       (*
		(+ (* -1 Ax2 Ay1)
		   (* 4 Ax1 Ay2))
		Bw1)
	       (*
		(+ (* 2 Aw2 Ay1)
		   (* -2 Aw1 Ay2))
		Bx1))
	      By1)
	     (*
	      (+ (* -2 Aw2 Ax1)
		 (* Aw1 Ax2))
	      (expt By1 2)))
          By2)
	 (*
          (+
           (* 2 (expt Ay1 2) Ay2 Bx2)
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            By2))
          Cw1))
	Cw2))
      (expt Cx1 2))
     (*
      (+
       (* -1 (expt Ay1 2)
	  (expt Bw2 2) By2)
       (* 2 Aw1 Ay1 Bw2 (expt By2 2))
       (* -1 (expt Aw1 2)
	  (expt By2 3))
       (*
	(+
	 (* -2 (expt Ay1 2) Ay2 Bw2)
	 (*
          (+ (* -2 Aw2 (expt Ay1 2))
	     (* 4 Aw1 Ay1 Ay2))
          By2))
	Cw2))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* -1 Ay1 Ay2 Bw2 Bx1)
	       (* 2 Ay1 Ay2 Bw1 Bx2))
            By1)
           (*
            (+ (* Ax1 Ay2 Bw2)
	       (* -2 Aw1 Ay2 Bx2))
            (expt By1 2))
           (*
            (+ (* -2 Ay1 Ay2 Bw1 Bx1)
	       (*
		(+
		 (*
		  (+ (* 2 Ax2 Ay1)
		     (* -2 Ax1 Ay2))
		  Bw1)
		 (*
		  (+ (* -1 Aw2 Ay1)
		     (* 4 Aw1 Ay2))
		  Bx1))
		By1)
	       (*
		(+ (* Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		(expt By1 2)))
            By2))
          Cw1)
	 (*
          (+
           (* -2 (expt Ay1 2) Ay2 Bx2)
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            By2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (* -1 Ay1 Ay2 Bw1 Bw2 By1)
	 (* Aw1 Ay2 Bw2 (expt By1 2))
	 (*
          (+
           (* 2 Ay1 Ay2 (expt Bw1 2))
           (*
            (+ (* -1 Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            Bw1 By1)
           (* Aw1 Aw2 (expt By1 2)))
          By2)
	 (*
          (+
           (* 2 (expt Ay1 2) Ay2 Bw2)
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            By2))
          Cw1))
	(expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* Ay1 Bw2 Bx1 (expt Bx2 2))
           (* -1 Ay1 Bw1 (expt Bx2 3)))
          By1)
	 (*
          (+
           (* -1 Ax1 Bw2 (expt Bx2 2))
           (* Aw1 (expt Bx2 3)))
          (expt By1 2))
	 (*
          (+
           (* -1 Ay1 Bw2 (expt Bx1 2)
	      Bx2)
           (* Ay1 Bw1 Bx1 (expt Bx2 2))
           (*
            (+ (* Ax1 Bw2 Bx1 Bx2)
	       (*
		(+ (* Ax1 Bw1)
		   (* -2 Aw1 Bx1))
		(expt Bx2 2)))
            By1))
          By2)
	 (*
          (+ (* -1 Ax1 Bw1 Bx1)
	     (* Aw1 (expt Bx1 2)))
          Bx2 (expt By2 2)))
	Cw1)
       (*
	(+
	 (* (expt Ay1 2)
	    (expt Bx2 3))
	 (* -2 Ax1 Ay1 (expt Bx2 2) By2)
	 (* (expt Ax1 2) Bx2
	    (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (* -1 Ay1 Ay2 (expt Bx1 2) Bx2)
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* Ax1 Ay2))
          Bx1 Bx2 By1)
	 (* -2 Ax1 Ax2 Bx2 (expt By1 2))
	 (*
          (+
           (* -1 Ax2 Ay1 (expt Bx1 2))
           (* Ax1 Ax2 Bx1 By1))
          By2))
	Cw1 Cw2)
       (*
	(+
	 (*
          (+
           (* -1 Ay1 (expt Bw2 2) Bx1
	      Bx2)
           (* Ay1 Bw1 Bw2 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* Ax1 (expt Bw2 2) Bx2)
           (* -1 Aw1 Bw2 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* -1 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* 3 Ay1 Bw1 Bw2 Bx1 Bx2)
           (* -2 Ay1 (expt Bw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* Ax1 (expt Bw2 2) Bx1)
             (* -3 Ax1 Bw1 Bw2 Bx2)
             (* 2 Aw1 Bw1 (expt Bx2 2)))
            By1))
          By2)
	 (*
          (+ (* -1 Ax1 Bw1 Bw2 Bx1)
	     (* Aw1 Bw2 (expt Bx1 2))
	     (*
	      (+
	       (* 2 Ax1 (expt Bw1 2))
	       (* -2 Aw1 Bw1 Bx1))
	      Bx2))
          (expt By2 2))
	 (*
          (+
           (* -2 (expt Ay1 2) Bw2
	      (expt Bx2 2))
           (* 4 Aw1 Ay1 (expt Bx2 2) By2)
           (*
            (+
             (* 2 (expt Ax1 2) Bw2)
             (* -4 Aw1 Ax1 Bx2))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -2 Ay1 Ay2 Bw2
	      (expt Bx1 2))
           (* 3 Ay1 Ay2 Bw1 Bx1 Bx2)
           (*
            (+
             (*
              (+ (* -2 Ax2 Ay1)
		 (* 2 Ax1 Ay2))
              Bw2 Bx1)
             (*
              (+
               (*
		(+ (* 2 Ax2 Ay1)
		   (* -3 Ax1 Ay2))
		Bw1)
               (* -2 Aw2 Ay1 Bx1))
              Bx2))
            By1)
           (*
            (+ (* 2 Ax1 Ax2 Bw2)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* 3 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -2 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              (expt Bx1 2))
             (*
              (+ (* -3 Ax1 Ax2 Bw1)
		 (* 2 Aw2 Ax1 Bx1))
              By1))
            By2)
           (*
            (+
             (* -4 Ax2 (expt Ay1 2) Bx2)
             (* 4 (expt Ax1 2) Ay2 By2))
            Cw1))
          Cw2))
	Cx1)
       (*
	(+
	 (* (expt Ay1 2)
	    (expt Bw2 2) Bx2)
	 (*
          (+
           (* 2 Ax1 Ay1 (expt Bw2 2))
           (* -4 Aw1 Ay1 Bw2 Bx2))
          By2)
	 (*
          (+ (* -2 Aw1 Ax1 Bw2)
	     (* 3 (expt Aw1 2) Bx2))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            Bx2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            By2))
          Cw2))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (* -1 Ay1 Ay2 Bw2
	      (expt Bx1 2))
           (* 2 Ay1 Ay2 Bw1 Bx1 Bx2)
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* Ax1 Ay2))
              Bw2 Bx1)
             (*
              (+
               (*
		(+ (* -6 Ax2 Ay1)
		   (* 2 Ax1 Ay2))
		Bw1)
               (*
		(+ (* 2 Aw2 Ay1)
		   (* -4 Aw1 Ay2))
		Bx1))
              Bx2))
            By1)
           (*
            (+ (* -2 Ax1 Ax2 Bw2)
	       (*
		(+ (* -2 Aw2 Ax1)
		   (* 6 Aw1 Ax2))
		Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -1 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              (expt Bx1 2))
             (*
              (+ (* 2 Ax1 Ax2 Bw1)
		 (*
		  (+ (* Aw2 Ax1)
		     (* -4 Aw1 Ax2))
		  Bx1))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* 6 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            Bx2)
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            By2))
          (expt Cw1 2))
	 (*
          (+
           (* 3 Ay1 Ay2 Bw1 Bw2 Bx1)
           (* -4 Ay1 Ay2 (expt Bw1 2)
	      Bx2)
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -3 Ax1 Ay2))
              Bw1 Bw2)
             (* -2 Aw2 Ay1 Bw2 Bx1)
             (*
              (+ (* 2 Aw2 Ay1)
		 (* 4 Aw1 Ay2))
              Bw1 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw2)
             (* -2 Aw1 Aw2 Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* -4 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* 3 Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -3 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Bw1 By1))
            By2)
           (*
            (+
             (* -4 Ax2 (expt Ay1 2) Bw2)
             (*
              (+
               (* -4 Aw2 (expt Ay1 2))
               (* 8 Aw1 Ay1 Ay2))
              Bx2)
             (*
              (+ (* 8 Aw1 Ax2 Ay1)
		 (* -8 Aw1 Ax1 Ay2))
              By2))
            Cw1))
          Cx1)
	 (*
          (+
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            Bw2)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 6 (expt Aw1 2) Ay2))
            By2))
          (expt Cx1 2)))
	Cx2))
      Cy1)
     (*
      (+
       (* Ay1 (expt Bw2 2)
	  (expt Bx1 2) Bx2)
       (* -2 Ay1 Bw1 Bw2 Bx1
	  (expt Bx2 2))
       (* Ay1 (expt Bw1 2)
	  (expt Bx2 3))
       (*
	(+
	 (* -1 Ax1 (expt Bw2 2) Bx1 Bx2)
	 (*
          (+ (* Ax1 Bw1 Bw2)
	     (* Aw1 Bw2 Bx1))
          (expt Bx2 2))
	 (* -1 Aw1 Bw1 (expt Bx2 3)))
	By1)
       (*
	(+
	 (*
          (+ (* Ax1 Bw1 Bw2 Bx1)
	     (* -1 Aw1 Bw2 (expt Bx1 2)))
          Bx2)
	 (*
          (+ (* -1 Ax1 (expt Bw1 2))
	     (* Aw1 Bw1 Bx1))
          (expt Bx2 2)))
	By2)
       (*
	(+
	 (* 2 Ax1 Ay1 Bw2 (expt Bx2 2))
	 (* -2 Aw1 Ay1 (expt Bx2 3))
	 (*
          (+
           (* -2 (expt Ax1 2) Bw2 Bx2)
           (* 2 Aw1 Ax1 (expt Bx2 2)))
          By2))
	Cw1)
       (*
	(+
	 (* 2 Ax2 Ay1 Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            (expt Bx1 2)))
          Bx2)
	 (*
          (+ (* -2 Ax1 Ax2 Bw2 Bx1)
	     (*
	      (+ (* 2 Ax1 Ax2 Bw1)
		 (*
		  (+ (* -2 Aw2 Ax1)
		     (* 2 Aw1 Ax2))
		  Bx1))
	      Bx2))
          By1)
	 (*
          (+ (* Ax1 Ax2 Bw1 Bx1)
	     (* -1 Aw1 Ax2 (expt Bx1 2)))
          By2)
	 (*
          (+
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            Bx2)
           (* -2 (expt Ax1 2) Ax2 By2))
          Cw1))
	Cw2)
       (*
	(+
	 (* -2 Ax1 Ay1 (expt Bw2 2) Bx2)
	 (* 2 Aw1 Ay1 Bw2 (expt Bx2 2))
	 (*
          (+
           (* -1 (expt Ax1 2)
	      (expt Bw2 2))
           (* 4 Aw1 Ax1 Bw2 Bx2)
           (* -3 (expt Aw1 2)
	      (expt Bx2 2)))
          By2)
	 (*
          (+
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Bx2)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            By2))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1)
	     (* Ax1 Ay2))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* 2 Aw2 Ay1)
	     (* -1 Aw1 Ay2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 6 Ax2 Ay1)
	       (* -2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -4 Aw2 Ay1)
	       (* 2 Aw1 Ay2))
            Bw1 Bx1))
          Bx2)
	 (*
          (+ (* 2 Ax1 Ax2 Bw1 Bw2)
	     (*
	      (+ (* -2 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
	      Bw2 Bx1)
	     (*
	      (+
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -6 Aw1 Ax2))
		Bw1)
	       (* 2 Aw1 Aw2 Bx1))
	      Bx2))
          By1)
	 (*
          (+
           (* -2 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* Aw2 Ax1)
	       (* 2 Aw1 Ax2))
            Bw1 Bx1)
           (* -1 Aw1 Aw2 (expt Bx1 2)))
          By2)
	 (*
          (+
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -12 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Bx2)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -6 (expt Aw1 2) Ay2))
            Bx2)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -6 (expt Aw1 2) Ax2))
            By2))
          Cx1))
	Cx2))
      (expt Cy1 2))
     (*
      (+
       (* (expt Ax1 2)
	  (expt Bw2 2) Bx2)
       (* -2 Aw1 Ax1 Bw2 (expt Bx2 2))
       (* (expt Aw1 2)
	  (expt Bx2 3))
       (*
	(+
	 (* 2 (expt Ax1 2) Ax2 Bw2)
	 (*
          (+ (* 2 Aw2 (expt Ax1 2))
	     (* -4 Aw1 Ax1 Ax2))
          Bx2))
	Cw2)
       (*
	(+
	 (*
          (+ (* 2 Aw2 (expt Ax1 2))
	     (* -4 Aw1 Ax1 Ax2))
          Bw2)
	 (*
          (+ (* -4 Aw1 Aw2 Ax1)
	     (* 6 (expt Aw1 2) Ax2))
          Bx2))
	Cx2))
      (expt Cy1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 2 Ay1 Ay2 Bw2 (expt Bx1 2))
           (* -2 Ay1 Ay2 Bw1 Bx1 Bx2)
           (*
            (+
             (*
              (+ (* -1 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw2 Bx1)
             (*
              (+
               (*
		(+ (* 2 Ax2 Ay1)
		   (* -2 Ax1 Ay2))
		Bw1)
               (*
		(+ (* -1 Aw2 Ay1)
		   (* 4 Aw1 Ay2))
		Bx1))
              Bx2))
            By1)
           (*
            (+ (* Ax1 Ax2 Bw2)
	       (*
		(+ (* Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* -2 Ax2 Ay1)
		 (* 6 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* 2 Aw2 Ay1)
		 (* -6 Aw1 Ay2))
              (expt Bx1 2))
             (*
              (+ (* -2 Ax1 Ax2 Bw1)
		 (*
		  (+ (* -2 Aw2 Ax1)
		     (* 4 Aw1 Ax2))
		  Bx1))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            Bx2)
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -6 (expt Ax1 2) Ay2))
            By2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (* -2 Ay1 Ay2 Bw1 Bw2 Bx1)
	 (* 2 Ay1 Ay2 (expt Bw1 2) Bx2)
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            Bw2 Bx1)
           (*
            (+ (* -1 Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            Bw1 Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
	       (* Aw1 Ax2))
            Bw2)
           (* Aw1 Aw2 Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1)
	       (* -6 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -2 Aw2 Ay1)
	       (* 6 Aw1 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw1)
             (* -2 Aw1 Aw2 Bx1))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            Bx2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 12 Aw1 Ax1 Ay2))
            By2))
          Cw1))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+ (* -2 Aw2 (expt Ay1 2))
	     (* 4 Aw1 Ay1 Ay2))
          Bw2)
	 (*
          (+ (* 4 Aw1 Aw2 Ay1)
	     (* -6 (expt Aw1 2) Ay2))
          By2))
	(expt Cx1 3))
       (*
	(+
	 (*
          (+
           (* -1 Ax2 Ay1 Bw2
	      (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -1 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              (expt Bx1 2)))
            Bx2)
           (*
            (+ (* Ax1 Ax2 Bw2 Bx1)
	       (*
		(+ (* 2 Ax1 Ax2 Bw1)
		   (*
		    (+ (* Aw2 Ax1)
		       (* -4 Aw1 Ax2))
		    Bx1))
		Bx2))
            By1)
           (*
            (+ (* -2 Ax1 Ax2 Bw1 Bx1)
	       (* 2 Aw1 Ax2 (expt Bx1 2)))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            Bx2)
           (* 2 (expt Ax1 2) Ax2 By2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* 3 Ax2 Ay1)
	       (* -2 Ax1 Ay2))
            Bw1 Bw2 Bx1)
           (*
            (+ (* -2 Aw2 Ay1)
	       (* 2 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* -4 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* 3 Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              Bw1 Bx1))
            Bx2)
           (*
            (+ (* -3 Ax1 Ax2 Bw1 Bw2)
	       (* 2 Aw2 Ax1 Bw2 Bx1)
	       (*
		(+ (* -3 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Bw1 Bx2))
            By1)
           (*
            (+
             (* 4 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* -2 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Bw1 Bx1)
             (* 2 Aw1 Aw2 (expt Bx1 2)))
            By2)
           (*
            (+
             (* 4 (expt Ax1 2) Ay2 Bw2)
             (*
              (+ (* 8 Aw1 Ax2 Ay1)
		 (* -8 Aw1 Ax1 Ay2))
              Bx2)
             (*
              (+
               (* 4 Aw2 (expt Ax1 2))
               (* -8 Aw1 Ax1 Ax2))
              By2))
            Cw1))
          Cx1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 6 (expt Aw1 2) Ay2))
            Bx2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 6 (expt Aw1 2) Ax2))
            By2))
          (expt Cx1 2)))
	Cy1)
       (*
	(+ (* Ax1 Ax2 Bw1 Bw2 Bx1)
	   (* -1 Aw1 Ax2 Bw2 (expt Bx1 2))
	   (*
	    (+
	     (* -2 Ax1 Ax2 (expt Bw1 2))
	     (*
	      (+ (* Aw2 Ax1)
		 (* 2 Aw1 Ax2))
	      Bw1 Bx1)
	     (* -1 Aw1 Aw2 (expt Bx1 2)))
	    Bx2)
	   (*
	    (+
	     (* -2 (expt Ax1 2) Ax2 Bw2)
	     (*
	      (+
	       (* -2 Aw2 (expt Ax1 2))
	       (* 4 Aw1 Ax1 Ax2))
	      Bx2))
	    Cw1)
	   (*
	    (+
	     (*
	      (+
	       (* -2 Aw2 (expt Ax1 2))
	       (* 4 Aw1 Ax1 Ax2))
	      Bw2)
	     (*
	      (+ (* 4 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
	      Bx2))
	    Cx1))
	(expt Cy1 2)))
      Cy2))
    Dw1)
   (*
    (+
     (*
      (+
       (* -1 Ay1 Bw2 Bx1 (expt Bx2 2))
       (* Ay1 Bw1 (expt Bx2 3)))
      (expt By1 2))
     (*
      (+ (* Ax1 Bw2 (expt Bx2 2))
	 (* -1 Aw1 (expt Bx2 3)))
      (expt By1 3))
     (*
      (+
       (*
	(+
	 (* 2 Ay1 Bw2 (expt Bx1 2) Bx2)
	 (* -2 Ay1 Bw1 Bx1 (expt Bx2 2)))
	By1)
       (*
	(+ (* -2 Ax1 Bw2 Bx1 Bx2)
	   (*
	    (+ (* -1 Ax1 Bw1)
	       (* 3 Aw1 Bx1))
	    (expt Bx2 2)))
	(expt By1 2)))
      By2)
     (*
      (+
       (* -1 Ay1 Bw2 (expt Bx1 3))
       (* Ay1 Bw1 (expt Bx1 2) Bx2)
       (*
	(+
	 (* Ax1 Bw2 (expt Bx1 2))
	 (*
          (+ (* 2 Ax1 Bw1 Bx1)
	     (* -3 Aw1 (expt Bx1 2)))
          Bx2))
	By1))
      (expt By2 2))
     (*
      (+
       (* -1 Ax1 Bw1 (expt Bx1 2))
       (* Aw1 (expt Bx1 3)))
      (expt By2 3))
     (*
      (+
       (* -1 (expt Ay1 2)
	  (expt Bx2 3) By1)
       (*
	(+
	 (* (expt Ay1 2) Bx1
	    (expt Bx2 2))
	 (* 2 Ax1 Ay1 (expt Bx2 2) By1))
	By2)
       (*
	(+ (* -2 Ax1 Ay1 Bx1 Bx2)
	   (* -1 (expt Ax1 2) Bx2 By1))
	(expt By2 2))
       (* (expt Ax1 2) Bx1
	  (expt By2 3)))
      Cw1)
     (*
      (+
       (* 2 Ay1 Ay2 (expt Bx1 2) Bx2
	  By1)
       (*
	(+ (* -2 Ax2 Ay1)
	   (* -2 Ax1 Ay2))
	Bx1 Bx2 (expt By1 2))
       (* 2 Ax1 Ax2 Bx2 (expt By1 3))
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bx1 3))
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* 2 Ax1 Ay2))
          (expt Bx1 2) By1)
	 (* -2 Ax1 Ax2 Bx1 (expt By1 2)))
	By2))
      Cw2)
     (*
      (+
       (* (expt Ay1 2) Bw2
	  (expt Bx2 2) By1)
       (*
	(+
	 (* -3 (expt Ay1 2) Bw2 Bx1 Bx2)
	 (* 2 (expt Ay1 2) Bw1
	    (expt Bx2 2))
	 (*
          (+ (* Ax1 Ay1 Bw2 Bx2)
	     (* -3 Aw1 Ay1 (expt Bx2 2)))
          By1))
	By2)
       (*
	(+ (* 3 Ax1 Ay1 Bw2 Bx1)
	   (*
	    (+ (* -4 Ax1 Ay1 Bw1)
	       (* 3 Aw1 Ay1 Bx1))
	    Bx2)
	   (*
	    (+ (* -2 (expt Ax1 2) Bw2)
	       (* 3 Aw1 Ax1 Bx2))
	    By1))
	(expt By2 2))
       (*
	(+ (* 2 (expt Ax1 2) Bw1)
	   (* -3 Aw1 Ax1 Bx1))
	(expt By2 3))
       (*
	(+
	 (* -3 (expt Ay1 2) Ay2 Bx1 Bx2)
	 (*
          (+ (* 2 Ax2 (expt Ay1 2))
	     (* Ax1 Ay1 Ay2))
          Bx2 By1)
	 (*
          (+
           (*
            (+
             (* -3 Ax2 (expt Ay1 2))
             (* 6 Ax1 Ay1 Ay2))
            Bx1)
           (*
            (+ (* Ax1 Ax2 Ay1)
	       (* -4 (expt Ax1 2) Ay2))
            By1))
          By2))
	Cw2))
      Cx1)
     (*
      (+
       (*
	(+
	 (* 2 Ay1 Ay2 Bw2 (expt Bx1 2))
	 (* -4 Ay1 Ay2 Bw1 Bx1 Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
	     (* -2 Ax1 Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* 6 Ax2 Ay1)
	       (* -2 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -2 Aw2 Ay1)
	       (* 6 Aw1 Ay2))
            Bx1))
          Bx2))
	(expt By1 2))
       (*
	(+ (* 2 Ax1 Ax2 Bw2)
	   (*
	    (+ (* 2 Aw2 Ax1)
	       (* -6 Aw1 Ax2))
	    Bx2))
	(expt By1 3))
       (*
	(+
	 (* 2 Ay1 Ay2 Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -6 Aw1 Ay2))
            (expt Bx1 2)))
          By1)
	 (*
          (+ (* -2 Ax1 Ax2 Bw1)
	     (*
	      (+ (* -2 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
	      Bx1))
          (expt By1 2)))
	By2)
       (*
	(+
	 (* 2 (expt Ay1 2) Ay2 Bx1 Bx2)
	 (*
          (+ (* -6 Ax2 (expt Ay1 2))
	     (* 4 Ax1 Ay1 Ay2))
          Bx2 By1)
	 (*
          (+
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            Bx1)
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            By1))
          By2))
	Cw1)
       (*
	(+
	 (* -3 (expt Ay1 2) Ay2 Bw2 Bx1)
	 (* 4 (expt Ay1 2) Ay2 Bw1 Bx2)
	 (*
          (+
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* -6 Aw1 Ay1 Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* 4 Ax2 (expt Ay1 2))
             (* -8 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -3 Aw2 (expt Ay1 2))
             (* 6 Aw1 Ay1 Ay2))
            Bx1)
           (*
            (+
             (*
              (+ (* Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            By1))
          By2))
	Cx1))
      Cx2)
     (*
      (+
       (* 2 (expt Ay1 2) Bw2 Bx1
	  (expt Bx2 2))
       (* -2 (expt Ay1 2) Bw1
	  (expt Bx2 3))
       (*
	(+
	 (* -3 Ax1 Ay1 Bw2 (expt Bx2 2))
	 (* 3 Aw1 Ay1 (expt Bx2 3)))
	By1)
       (*
	(+
	 (* -1 Ax1 Ay1 Bw2 Bx1 Bx2)
	 (*
          (+ (* 4 Ax1 Ay1 Bw1)
	     (* -3 Aw1 Ay1 Bx1))
          (expt Bx2 2))
	 (*
          (+
           (* 3 (expt Ax1 2) Bw2 Bx2)
           (* -3 Aw1 Ax1 (expt Bx2 2)))
          By1))
	By2)
       (*
	(+
	 (* -1 (expt Ax1 2) Bw2 Bx1)
	 (*
          (+ (* -2 (expt Ax1 2) Bw1)
	     (* 3 Aw1 Ax1 Bx1))
          Bx2))
	(expt By2 2))
       (*
	(+
	 (*
          (+ (* 4 Ax2 (expt Ay1 2))
	     (* -1 Ax1 Ay1 Ay2))
          Bx1 Bx2)
	 (*
          (+ (* -6 Ax1 Ax2 Ay1)
	     (* 3 (expt Ax1 2) Ay2))
          Bx2 By1)
	 (*
          (+
           (*
            (+ (* -1 Ax1 Ax2 Ay1)
	       (* -2 (expt Ax1 2) Ay2))
            Bx1)
           (* 3 (expt Ax1 2) Ax2 By1))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+ (* 4 Ax2 (expt Ay1 2))
	     (* -1 Ax1 Ay1 Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* -12 Ax2 (expt Ay1 2))
             (* 8 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* 4 Aw2 (expt Ay1 2))
             (* -6 Aw1 Ay1 Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+ (* -6 Ax1 Ax2 Ay1)
	       (* 3 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* -6 Aw2 Ax1)
		 (* 18 Aw1 Ax2))
              Ay1)
             (* -6 Aw1 Ax1 Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* 8 Ax1 Ax2 Ay1)
	       (* -4 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            Bx1)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            By1))
          By2))
	Cx2))
      Cy1)
     (*
      (+
       (* -2 Ay1 Ay2 Bw2 (expt Bx1 3))
       (* 2 Ay1 Ay2 Bw1 (expt Bx1 2)
	  Bx2)
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* 2 Ax1 Ay2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -6 Aw1 Ay2))
            (expt Bx1 2)))
          Bx2))
	By1)
       (*
	(+ (* -2 Ax1 Ax2 Bw2 Bx1)
	   (*
	    (+ (* -2 Ax1 Ax2 Bw1)
	       (*
		(+ (* -2 Aw2 Ax1)
		   (* 6 Aw1 Ax2))
		Bx1))
	    Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* -6 Ax1 Ay2))
          Bw1 (expt Bx1 2))
	 (*
          (+ (* -2 Aw2 Ay1)
	     (* 6 Aw1 Ay2))
          (expt Bx1 3))
	 (*
          (+ (* 4 Ax1 Ax2 Bw1 Bx1)
	     (*
	      (+ (* 2 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
	      (expt Bx1 2)))
          By1))
	By2)
       (*
	(+
	 (*
          (+ (* 2 Ax2 (expt Ay1 2))
	     (* -4 Ax1 Ay1 Ay2))
          Bx1 Bx2)
	 (*
          (+ (* 4 Ax1 Ax2 Ay1)
	     (* -2 (expt Ax1 2) Ay2))
          Bx2 By1)
	 (*
          (+
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 6 (expt Ax1 2) Ay2))
            Bx1)
           (* -2 (expt Ax1 2) Ax2 By1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+ (* -3 Ax2 (expt Ay1 2))
	     (* 6 Ax1 Ay1 Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* 4 Ax2 (expt Ay1 2))
             (* -8 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -3 Aw2 (expt Ay1 2))
             (* 6 Aw1 Ay1 Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+ (* Ax1 Ax2 Ay1)
	       (* -4 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* -8 Ax1 Ax2 Ay1)
	       (* 12 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* 6 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
              Ay1)
             (* -18 Aw1 Ax1 Ay2))
            Bx1)
           (*
            (+
             (* -4 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            By1))
          By2))
	Cx1)
       (*
	(+
	 (*
          (+ (* -1 Ax1 Ax2 Ay1)
	     (* -2 (expt Ax1 2) Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* 8 Ax1 Ax2 Ay1)
	       (* -4 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (* 3 (expt Ax1 2) Ax2 Bw2)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            Bx2))
          By1)
	 (*
          (+
           (* -4 (expt Ax1 2) Ax2 Bw1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Bx1))
          By2))
	Cy1))
      Cy2))
    (expt Dw1 2))
   (*
    (+
     (* (expt Ay1 3)
	(expt Bx2 3))
     (* -3 Ax1 (expt Ay1 2)
	(expt Bx2 2) By2)
     (* 3 (expt Ax1 2) Ay1 Bx2
	(expt By2 2))
     (* -1 (expt Ax1 3)
	(expt By2 3))
     (*
      (+
       (*
	(+ (* 6 Ax2 (expt Ay1 3))
	   (* -6 Ax1 (expt Ay1 2) Ay2))
	Bx2)
       (*
	(+
	 (* -6 Ax1 Ax2 (expt Ay1 2))
	 (* 6 (expt Ax1 2) Ay1 Ay2))
	By2))
      Cx2)
     (*
      (+
       (*
	(+
	 (* -6 Ax1 Ax2 (expt Ay1 2))
	 (* 6 (expt Ax1 2) Ay1 Ay2))
	Bx2)
       (*
	(+
	 (* 6 (expt Ax1 2) Ax2 Ay1)
	 (* -6 (expt Ax1 3) Ay2))
	By2))
      Cy2))
    (expt Dw1 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (*
          (+ (* Ay1 Bw2 Bx1 Bx2)
	     (* -1 Ay1 Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+ (* -1 Ax1 Bw2 Bx2)
	     (* Aw1 (expt Bx2 2)))
          (expt By1 2)))
	By2)
       (*
	(+
	 (* -1 Ay1 Bw2 (expt Bx1 2))
	 (* Ay1 Bw1 Bx1 Bx2)
	 (*
          (+ (* Ax1 Bw2 Bx1)
	     (*
	      (+ (* Ax1 Bw1)
		 (* -2 Aw1 Bx1))
	      Bx2))
          By1))
	(expt By2 2))
       (*
	(+ (* -1 Ax1 Bw1 Bx1)
	   (* Aw1 (expt Bx1 2)))
	(expt By2 3)))
      (expt Cw1 2))
     (*
      (+
       (* (expt Ay1 2)
	  (expt Bx2 2) By2)
       (* -2 Ax1 Ay1 Bx2 (expt By2 2))
       (* (expt Ax1 2)
	  (expt By2 3)))
      (expt Cw1 3))
     (*
      (+ (* Ay1 Ay2 Bx1 Bx2 By1)
	 (* -1 Ax1 Ay2 Bx2 (expt By1 2))
	 (*
	  (+
	   (* -2 Ay1 Ay2 (expt Bx1 2))
	   (*
            (+ (* Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            Bx1 By1)
	   (* -1 Ax1 Ax2 (expt By1 2)))
	  By2))
      (expt Cw1 2) Cw2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1 Ay1 (expt Bw2 2) Bx1)
             (* Ay1 Bw1 Bw2 Bx2))
            By1)
           (*
            (+ (* Ax1 (expt Bw2 2))
	       (* -1 Aw1 Bw2 Bx2))
            (expt By1 2)))
          By2)
	 (*
          (+ (* Ay1 Bw1 Bw2 Bx1)
	     (* -1 Ay1 (expt Bw1 2) Bx2)
	     (*
	      (+ (* -2 Ax1 Bw1 Bw2)
		 (* Aw1 Bw2 Bx1)
		 (* Aw1 Bw1 Bx2))
	      By1))
          (expt By2 2))
	 (*
          (+ (* Ax1 (expt Bw1 2))
	     (* -1 Aw1 Bw1 Bx1))
          (expt By2 3)))
	Cw1)
       (*
	(+
	 (* -2 (expt Ay1 2) Bw2 Bx2 By2)
	 (*
          (+ (* 2 Ax1 Ay1 Bw2)
	     (* 2 Aw1 Ay1 Bx2))
          (expt By2 2))
	 (* -2 Aw1 Ax1 (expt By2 3)))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* -2 Ay1 Ay2 Bw2 Bx1)
	       (* Ay1 Ay2 Bw1 Bx2))
            By1)
           (*
            (+ (* 2 Ax1 Ay2 Bw2)
	       (* -1 Aw1 Ay2 Bx2))
            (expt By1 2))
           (*
            (+ (* 2 Ay1 Ay2 Bw1 Bx1)
	       (*
		(+
		 (*
		  (+ (* Ax2 Ay1)
		     (* -4 Ax1 Ay2))
		  Bw1)
		 (*
		  (+ (* -2 Aw2 Ay1)
		     (* 2 Aw1 Ay2))
		  Bx1))
		By1)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -1 Aw1 Ax2))
		(expt By1 2)))
            By2))
          Cw1)
	 (*
          (+
           (* -2 (expt Ay1 2) Ay2 Bx2)
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            By2))
          (expt Cw1 2)))
	Cw2))
      Cx1)
     (*
      (+
       (*
	(+
	 (* (expt Ay1 2)
	    (expt Bw2 2) By2)
	 (* -2 Aw1 Ay1 Bw2 (expt By2 2))
	 (* (expt Aw1 2)
	    (expt By2 3)))
	Cw1)
       (*
	(+
	 (* 2 (expt Ay1 2) Ay2 Bw2)
	 (*
          (+ (* 2 Aw2 (expt Ay1 2))
	     (* -4 Aw1 Ay1 Ay2))
          By2))
	Cw1 Cw2))
      (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (*
          (+ (* Ay1 Ay2 Bw2 Bx1)
	     (* -2 Ay1 Ay2 Bw1 Bx2))
          By1)
	 (*
          (+ (* -1 Ax1 Ay2 Bw2)
	     (* 2 Aw1 Ay2 Bx2))
          (expt By1 2))
	 (*
          (+ (* 2 Ay1 Ay2 Bw1 Bx1)
	     (*
	      (+
	       (*
		(+ (* -2 Ax2 Ay1)
		   (* 2 Ax1 Ay2))
		Bw1)
	       (*
		(+ (* Aw2 Ay1)
		   (* -4 Aw1 Ay2))
		Bx1))
	      By1)
	     (*
	      (+ (* -1 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
	      (expt By1 2)))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (* 2 (expt Ay1 2) Ay2 Bx2)
	 (*
          (+ (* 2 Ax2 (expt Ay1 2))
	     (* -4 Ax1 Ay1 Ay2))
          By2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (* Ay1 Ay2 Bw1 Bw2 By1)
           (* -1 Aw1 Ay2 Bw2
	      (expt By1 2))
           (*
            (+
             (* -2 Ay1 Ay2 (expt Bw1 2))
             (*
              (+ (* Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 By1)
             (* -1 Aw1 Aw2 (expt By1 2)))
            By2))
          Cw1)
	 (*
          (+
           (* -2 (expt Ay1 2) Ay2 Bw2)
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            By2))
          (expt Cw1 2)))
	Cx1))
      Cx2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1 Ay1 (expt Bw2 2) Bx1
	      Bx2)
           (* Ay1 Bw1 Bw2 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* Ax1 (expt Bw2 2) Bx2)
           (* -1 Aw1 Bw2 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* 2 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* -3 Ay1 Bw1 Bw2 Bx1 Bx2)
           (* Ay1 (expt Bw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* -2 Ax1 (expt Bw2 2) Bx1)
             (* 3 Aw1 Bw2 Bx1 Bx2)
             (* -1 Aw1 Bw1 (expt Bx2 2)))
            By1))
          By2)
	 (*
          (+ (* 2 Ax1 Bw1 Bw2 Bx1)
	     (* -2 Aw1 Bw2 (expt Bx1 2))
	     (*
	      (+
	       (* -1 Ax1 (expt Bw1 2))
	       (* Aw1 Bw1 Bx1))
	      Bx2))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* -1 (expt Ay1 2) Bw2
	    (expt Bx2 2))
	 (*
          (+ (* 4 Ax1 Ay1 Bw2 Bx2)
	     (* -2 Aw1 Ay1 (expt Bx2 2)))
          By2)
	 (*
          (+ (* -3 (expt Ax1 2) Bw2)
	     (* 2 Aw1 Ax1 Bx2))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (* 4 Ay1 Ay2 Bw2 (expt Bx1 2))
           (* -3 Ay1 Ay2 Bw1 Bx1 Bx2)
           (*
            (+
             (*
              (+ (* -2 Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              Bw2 Bx1)
             (*
              (+ (* 2 Ax2 Ay1 Bw1)
		 (*
		  (+ (* -2 Aw2 Ay1)
		     (* 3 Aw1 Ay2))
		  Bx1))
              Bx2))
            By1)
           (*
            (+ (* 2 Ax1 Ax2 Bw2)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* -3 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* 4 Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              (expt Bx1 2))
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              Bx1 By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            Bx2)
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -6 (expt Ax1 2) Ay2))
            By2))
          (expt Cw1 2)))
	Cw2)
       (*
	(+
	 (*
          (+
           (* Ay1 (expt Bw2 3) Bx1)
           (* -1 Ay1 Bw1 (expt Bw2 2)
	      Bx2))
          By1)
	 (*
          (+ (* -1 Ax1 (expt Bw2 3))
	     (* Aw1 (expt Bw2 2) Bx2))
          (expt By1 2))
	 (*
          (+
           (* -1 Ay1 Bw1 (expt Bw2 2)
	      Bx1)
           (* Ay1 (expt Bw1 2) Bw2 Bx2)
           (*
            (+
             (* 2 Ax1 Bw1 (expt Bw2 2))
             (* -1 Aw1 (expt Bw2 2) Bx1)
             (* -1 Aw1 Bw1 Bw2 Bx2))
            By1))
          By2)
	 (*
          (+
           (* -1 Ax1 (expt Bw1 2) Bw2)
           (* Aw1 Bw1 Bw2 Bx1))
          (expt By2 2))
	 (*
          (+
           (* 2 (expt Ay1 2)
	      (expt Bw2 2) Bx2)
           (* -4 Ax1 Ay1 (expt Bw2 2)
	      By2)
           (*
            (+ (* 4 Aw1 Ax1 Bw2)
	       (* -2 (expt Aw1 2) Bx2))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (* -2 Ay1 Ay2 Bw1 Bw2 Bx1)
           (* Ay1 Ay2 (expt Bw1 2) Bx2)
           (*
            (+
             (*
              (+ (* -2 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              Bw1 Bw2)
             (*
              (+ (* 6 Aw2 Ay1)
		 (* -2 Aw1 Ay2))
              Bw2 Bx1)
             (*
              (+ (* -2 Aw2 Ay1)
		 (* -1 Aw1 Ay2))
              Bw1 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* -6 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Bw2)
             (* 2 Aw1 Aw2 Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* -2 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 Bx1)
             (*
              (+
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -1 Aw1 Ax2))
		Bw1)
               (* -2 Aw1 Aw2 Bx1))
              By1))
            By2)
           (*
            (+
             (*
              (+
               (* 4 Ax2 (expt Ay1 2))
               (* -8 Ax1 Ay1 Ay2))
              Bw2)
             (* 4 Aw2 (expt Ay1 2) Bx2)
             (*
              (+ (* -8 Aw2 Ax1 Ay1)
		 (* 8 Aw1 Ax1 Ay2))
              By2))
            Cw1))
          Cw2))
	Cx1)
       (*
	(+
	 (* -1 (expt Ay1 2)
	    (expt Bw2 3))
	 (* 2 Aw1 Ay1 (expt Bw2 2) By2)
	 (* -1 (expt Aw1 2) Bw2
	    (expt By2 2))
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            By2))
          Cw2))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (* -3 Ay1 Ay2 Bw1 Bw2 Bx1)
           (* 2 Ay1 Ay2 (expt Bw1 2) Bx2)
           (*
            (+ (* 2 Ax2 Ay1 Bw1 Bw2)
	       (*
		(+ (* -2 Aw2 Ay1)
		   (* 3 Aw1 Ay2))
		Bw2 Bx1)
	       (*
		(+ (* 2 Aw2 Ay1)
		   (* -2 Aw1 Ay2))
		Bw1 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw2)
             (* -2 Aw1 Aw2 Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* -3 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -2 Aw1 Ax2 Bw1)
		 (* 3 Aw1 Aw2 Bx1))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            Bx2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            By2))
          (expt Cw1 2))
	 (*
          (+
           (* Ay1 Ay2 (expt Bw1 2) Bw2)
           (*
            (+ (* -2 Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            Bw1 Bw2 By1)
           (* 2 Aw1 Aw2 Bw2 (expt By1 2))
           (*
            (+
             (* Aw2 Ay1 (expt Bw1 2))
             (* -1 Aw1 Aw2 Bw1 By1))
            By2)
           (*
            (+
             (* 4 Aw2 (expt Ay1 2) Bw2)
             (* -4 (expt Aw1 2) Ay2 By2))
            Cw1))
          Cx1))
	Cx2))
      Cy1)
     (*
      (+
       (* -1 Ay1 (expt Bw2 3)
	  (expt Bx1 2))
       (* 2 Ay1 Bw1 (expt Bw2 2) Bx1
	  Bx2)
       (* -1 Ay1 (expt Bw1 2) Bw2
	  (expt Bx2 2))
       (*
	(+
	 (* Ax1 (expt Bw2 3) Bx1)
	 (*
          (+
           (* -1 Ax1 Bw1 (expt Bw2 2))
           (* -1 Aw1 (expt Bw2 2) Bx1))
          Bx2)
	 (* Aw1 Bw1 Bw2 (expt Bx2 2)))
	By1)
       (*
	(+
	 (* -1 Ax1 Bw1 (expt Bw2 2) Bx1)
	 (* Aw1 (expt Bw2 2)
	    (expt Bx1 2))
	 (*
          (+
           (* Ax1 (expt Bw1 2) Bw2)
           (* -1 Aw1 Bw1 Bw2 Bx1))
          Bx2))
	By2)
       (*
	(+
	 (* -2 Ax1 Ay1 (expt Bw2 2) Bx2)
	 (* 2 Aw1 Ay1 Bw2 (expt Bx2 2))
	 (*
          (+
           (* 3 (expt Ax1 2)
	      (expt Bw2 2))
           (* -4 Aw1 Ax1 Bw2 Bx2)
           (* (expt Aw1 2)
	      (expt Bx2 2)))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+ (* 4 Ax2 Ay1)
	     (* -2 Ax1 Ay2))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* -6 Aw2 Ay1)
	     (* 2 Aw1 Ay2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -1 Aw1 Ay2))
            Bw1 Bx1))
          Bx2)
	 (*
          (+ (* -2 Ax1 Ax2 Bw1 Bw2)
	     (*
	      (+ (* 6 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
	      Bw2 Bx1)
	     (*
	      (+
	       (*
		(+ (* -2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Bw1)
	       (* -2 Aw1 Aw2 Bx1))
	      Bx2))
          By1)
	 (*
          (+
           (* Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -2 Aw2 Ax1)
	       (* -1 Aw1 Ax2))
            Bw1 Bx1)
           (* 2 Aw1 Aw2 (expt Bx1 2)))
          By2)
	 (*
          (+
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 6 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Bx2)
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            By2))
          Cw1))
	Cw2)
       (*
	(+
	 (* 2 Ax1 Ay1 (expt Bw2 3))
	 (* -2 Aw1 Ay1 (expt Bw2 2) Bx2)
	 (*
          (+
           (* -2 Aw1 Ax1 (expt Bw2 2))
           (* 2 (expt Aw1 2) Bw2 Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 12 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            Bx2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            By2))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
	     (* Ax1 Ay2))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* 4 Aw2 Ay1)
	     (* -1 Aw1 Ay2))
          Bw1 Bw2 Bx1)
	 (* -2 Aw2 Ay1 (expt Bw1 2) Bx2)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
	       (* 2 Aw1 Ax2))
            Bw1 Bw2)
           (* -2 Aw1 Aw2 Bw2 Bx1)
           (* 2 Aw1 Aw2 Bw1 Bx2))
          By1)
	 (*
          (+
           (* Aw2 Ax1 (expt Bw1 2))
           (* -1 Aw1 Aw2 Bw1 Bx1))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            Bx2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            Bw2)
           (* 2 (expt Aw1 2) Aw2 By2))
          Cx1))
	Cx2))
      (expt Cy1 2))
     (*
      (+
       (* -1 (expt Ax1 2)
	  (expt Bw2 3))
       (* 2 Aw1 Ax1 (expt Bw2 2) Bx2)
       (* -1 (expt Aw1 2) Bw2
	  (expt Bx2 2))
       (*
	(+
	 (*
          (+ (* -6 Aw2 (expt Ax1 2))
	     (* 4 Aw1 Ax1 Ax2))
          Bw2)
	 (*
          (+ (* 4 Aw1 Aw2 Ax1)
	     (* -2 (expt Aw1 2) Ax2))
          Bx2))
	Cw2)
       (*
	(+
	 (*
          (+ (* 4 Aw1 Aw2 Ax1)
	     (* -2 (expt Aw1 2) Ax2))
          Bw2)
	 (* -2 (expt Aw1 2) Aw2 Bx2))
	Cx2))
      (expt Cy1 3))
     (*
      (+
       (*
	(+
	 (* -2 Ay1 Ay2 Bw2 (expt Bx1 2))
	 (* 2 Ay1 Ay2 Bw1 Bx1 Bx2)
	 (*
          (+
           (*
            (+ (* Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* -2 Ax2 Ay1)
		 (* 2 Ax1 Ay2))
              Bw1)
             (*
              (+ (* Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              Bx1))
            Bx2))
          By1)
	 (*
          (+ (* -1 Ax1 Ax2 Bw2)
	     (*
	      (+ (* -1 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
	      Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1)
	       (* -6 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* -2 Aw2 Ay1)
	       (* 6 Aw1 Ay2))
            (expt Bx1 2))
           (*
            (+ (* 2 Ax1 Ax2 Bw1)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Bx1))
            By1))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+ (* 2 Ax2 (expt Ay1 2))
	     (* -4 Ax1 Ay1 Ay2))
          Bx2)
	 (*
          (+ (* -4 Ax1 Ax2 Ay1)
	     (* 6 (expt Ax1 2) Ay2))
          By2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (* 2 Ay1 Ay2 Bw1 Bw2 Bx1)
           (* -2 Ay1 Ay2 (expt Bw1 2)
	      Bx2)
           (*
            (+
             (*
              (+ (* Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              Bw1 Bw2)
             (*
              (+ (* -2 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw2 Bx1)
             (*
              (+ (* Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Bw2)
             (* -1 Aw1 Aw2 Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* -2 Ax2 Ay1)
		 (* 6 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* 2 Aw2 Ay1)
		 (* -6 Aw1 Ay2))
              Bw1 Bx1)
             (*
              (+
               (*
		(+ (* -4 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Bw1)
               (* 2 Aw1 Aw2 Bx1))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Bx2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* -12 Aw1 Ax1 Ay2))
            By2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (*
          (+ (* 2 Aw2 (expt Ay1 2))
	     (* -4 Aw1 Ay1 Ay2))
          Bw2)
	 (*
          (+ (* -4 Aw1 Aw2 Ay1)
	     (* 6 (expt Aw1 2) Ay2))
          By2))
	Cw1 (expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* -3 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 Bw2 Bx1)
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* -3 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              Bw2 Bx1)
             (*
              (+ (* -2 Aw1 Ax2 Bw1)
		 (* 3 Aw1 Aw2 Bx1))
              Bx2))
            By1)
           (*
            (+
             (* -2 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* 4 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Bw1 Bx1)
             (* -4 Aw1 Aw2 (expt Bx1 2)))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
	       (* -6 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Bx2)
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            By2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* Ax2 Ay1)
	       (* -2 Ax1 Ay2))
            (expt Bw1 2) Bw2)
           (*
            (+ (* -2 Aw2 Ay1)
	       (* 2 Aw1 Ay2))
            Bw1 Bw2 Bx1)
           (* Aw2 Ay1 (expt Bw1 2) Bx2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Bw1 Bw2)
             (* -2 Aw1 Aw2 Bw2 Bx1)
             (* -1 Aw1 Aw2 Bw1 Bx2))
            By1)
           (*
            (+
             (* -2 Aw2 Ax1 (expt Bw1 2))
             (* 2 Aw1 Aw2 Bw1 Bx1))
            By2)
           (*
            (+
             (*
              (+ (* -8 Aw2 Ax1 Ay1)
		 (* 8 Aw1 Ax1 Ay2))
              Bw2)
             (* -4 (expt Aw1 2) Ay2 Bx2)
             (*
              (+ (* 8 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              By2))
            Cw1))
          Cx1)
	 (*
          (+
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            Bw2)
           (* -2 (expt Aw1 2) Aw2 By2))
          (expt Cx1 2)))
	Cy1)
       (*
	(+
	 (* Ax1 Ax2 (expt Bw1 2) Bw2)
	 (*
          (+ (* -2 Aw2 Ax1)
	     (* -1 Aw1 Ax2))
          Bw1 Bw2 Bx1)
	 (* 2 Aw1 Aw2 Bw2 (expt Bx1 2))
	 (*
          (+
           (* Aw2 Ax1 (expt Bw1 2))
           (* -1 Aw1 Aw2 Bw1 Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Bw2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Bx2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Bw2)
           (* 2 (expt Aw1 2) Aw2 Bx2))
          Cx1))
	(expt Cy1 2)))
      Cy2)
     (*
      (+
       (*
	(+
	 (* 2 Ay1 (expt Bw2 2) Bx1 Bx2)
	 (* -2 Ay1 Bw1 Bw2 (expt Bx2 2)))
	(expt By1 2))
       (*
	(+
	 (* -2 Ax1 (expt Bw2 2) Bx2)
	 (* 2 Aw1 Bw2 (expt Bx2 2)))
	(expt By1 3))
       (*
	(+
	 (*
          (+
           (* -2 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* 2 Ay1 (expt Bw1 2)
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* 2 Ax1 (expt Bw2 2) Bx1)
           (*
            (+ (* 4 Ax1 Bw1 Bw2)
	       (* -4 Aw1 Bw2 Bx1))
            Bx2)
           (* -2 Aw1 Bw1 (expt Bx2 2)))
          (expt By1 2)))
	By2)
       (*
	(+
	 (* 2 Ay1 Bw1 Bw2 (expt Bx1 2))
	 (* -2 Ay1 (expt Bw1 2) Bx1 Bx2)
	 (*
          (+ (* -4 Ax1 Bw1 Bw2 Bx1)
	     (* 2 Aw1 Bw2 (expt Bx1 2))
	     (*
	      (+
	       (* -2 Ax1 (expt Bw1 2))
	       (* 4 Aw1 Bw1 Bx1))
	      Bx2))
          By1))
	(expt By2 2))
       (*
	(+
	 (* 2 Ax1 (expt Bw1 2) Bx1)
	 (* -2 Aw1 Bw1 (expt Bx1 2)))
	(expt By2 3))
       (*
	(+
	 (* 2 (expt Ay1 2) Bw2
	    (expt Bx2 2) By1)
	 (*
          (+
           (* (expt Ay1 2) Bw2 Bx1 Bx2)
           (* -3 (expt Ay1 2) Bw1
	      (expt Bx2 2))
           (*
            (+ (* -5 Ax1 Ay1 Bw2 Bx2)
	       (* Aw1 Ay1 (expt Bx2 2)))
            By1))
          By2)
	 (*
          (+ (* -1 Ax1 Ay1 Bw2 Bx1)
	     (*
	      (+ (* 6 Ax1 Ay1 Bw1)
		 (* -1 Aw1 Ay1 Bx1))
	      Bx2)
	     (*
	      (+
	       (* 3 (expt Ax1 2) Bw2)
	       (* -1 Aw1 Ax1 Bx2))
	      By1))
          (expt By2 2))
	 (*
          (+ (* -3 (expt Ax1 2) Bw1)
	     (* Aw1 Ax1 Bx1))
          (expt By2 3)))
	Cw1)
       (*
	(+
	 (* -4 Ay1 Ay2 Bw2 (expt Bx1 2)
	    By1)
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* -4 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 4 Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              Bx1))
            Bx2))
          (expt By1 2))
	 (*
          (+ (* -4 Ax1 Ax2 Bw2)
	     (*
	      (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
	      Bx2))
          (expt By1 3))
	 (*
          (+
           (* 4 Ay1 Ay2 Bw1 (expt Bx1 2))
           (*
            (+ (* -8 Ax1 Ay2 Bw1 Bx1)
	       (*
		(+ (* -4 Aw2 Ay1)
		   (* 4 Aw1 Ay2))
		(expt Bx1 2)))
            By1)
           (*
            (+ (* 4 Ax1 Ax2 Bw1)
	       (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Bx1))
            (expt By1 2)))
          By2)
	 (*
          (+
           (* (expt Ay1 2) Ay2 Bx1 Bx2)
           (*
            (+
             (* 4 Ax2 (expt Ay1 2))
             (* -5 Ax1 Ay1 Ay2))
            Bx2 By1)
           (*
            (+
             (*
              (+
               (* Ax2 (expt Ay1 2))
               (* -2 Ax1 Ay1 Ay2))
              Bx1)
             (*
              (+ (* -5 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              By1))
            By2))
          Cw1))
	Cw2)
       (*
	(+
	 (* -2 (expt Ay1 2)
	    (expt Bw2 2) Bx2 By1)
	 (*
          (+
           (* 3 (expt Ay1 2)
	      (expt Bw2 2) Bx1)
           (* -1 (expt Ay1 2) Bw1 Bw2
	      Bx2)
           (*
            (+
             (* -1 Ax1 Ay1 (expt Bw2 2))
             (* 5 Aw1 Ay1 Bw2 Bx2))
            By1))
          By2)
	 (*
          (+ (* Ax1 Ay1 Bw1 Bw2)
	     (* -6 Aw1 Ay1 Bw2 Bx1)
	     (* Aw1 Ay1 Bw1 Bx2)
	     (*
	      (+ (* Aw1 Ax1 Bw2)
		 (* -3 (expt Aw1 2) Bx2))
	      By1))
          (expt By2 2))
	 (*
          (+ (* -1 Aw1 Ax1 Bw1)
	     (* 3 (expt Aw1 2) Bx1))
          (expt By2 3))
	 (*
          (+
           (* 6 (expt Ay1 2) Ay2 Bw2 Bx1)
           (* -1 (expt Ay1 2) Ay2 Bw1
	      Bx2)
           (*
            (+
             (*
              (+
               (* -4 Ax2 (expt Ay1 2))
               (* -2 Ax1 Ay1 Ay2))
              Bw2)
             (*
              (+
               (* -4 Aw2 (expt Ay1 2))
               (* 5 Aw1 Ay1 Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (* -1 Ax2 (expt Ay1 2))
               (* 2 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* 6 Aw2 (expt Ay1 2))
               (* -12 Aw1 Ay1 Ay2))
              Bx1)
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 5 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              By1))
            By2))
          Cw2))
	Cx1)
       (*
	(+
	 (* 4 Ay1 Ay2 (expt Bw1 2) Bx2
	    By1)
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            Bw2 Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            Bw1 Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            Bw2)
           (* 4 Aw1 Aw2 Bx2))
          (expt By1 3))
	 (*
          (+
           (* -4 Ay1 Ay2 (expt Bw1 2)
	      Bx1)
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              (expt Bw1 2))
             (* 8 Aw1 Ay2 Bw1 Bx1))
            By1)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Bw1)
             (* -4 Aw1 Aw2 Bx1))
            (expt By1 2)))
          By2)
	 (*
          (+
           (* (expt Ay1 2) Ay2 Bw2 Bx1)
           (* -6 (expt Ay1 2) Ay2 Bw1
	      Bx2)
           (*
            (+
             (*
              (+
               (* 4 Ax2 (expt Ay1 2))
               (* -5 Ax1 Ay1 Ay2))
              Bw2)
             (*
              (+
               (* 4 Aw2 (expt Ay1 2))
               (* 2 Aw1 Ay1 Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (* -6 Ax2 (expt Ay1 2))
               (* 12 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* Aw2 (expt Ay1 2))
               (* -2 Aw1 Ay1 Ay2))
              Bx1)
             (*
              (+
               (*
		(+ (* -5 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (* -1 (expt Ay1 2) Ay2 Bw1
	      Bw2)
           (*
            (+
             (* -4 Aw2 (expt Ay1 2))
             (* 5 Aw1 Ay1 Ay2))
            Bw2 By1)
           (*
            (+
             (*
              (+
               (* -1 Aw2 (expt Ay1 2))
               (* 2 Aw1 Ay1 Ay2))
              Bw1)
             (*
              (+ (* 5 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              By1))
            By2))
          Cx1))
	Cx2)
       (*
	(+
	 (* -4 (expt Ay1 2)
	    (expt Bw2 2) Bx1 Bx2)
	 (* 4 (expt Ay1 2) Bw1 Bw2
	    (expt Bx2 2))
	 (*
          (+
           (* 6 Ax1 Ay1 (expt Bw2 2) Bx2)
           (* -6 Aw1 Ay1 Bw2
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* Ax1 Ay1 (expt Bw2 2) Bx1)
           (*
            (+ (* -7 Ax1 Ay1 Bw1 Bw2)
	       (* 7 Aw1 Ay1 Bw2 Bx1))
            Bx2)
           (* -1 Aw1 Ay1 Bw1
	      (expt Bx2 2))
           (*
            (+
             (* -3 (expt Ax1 2)
		(expt Bw2 2))
             (* 3 (expt Aw1 2)
		(expt Bx2 2)))
            By1))
          By2)
	 (*
          (+
           (* 3 (expt Ax1 2) Bw1 Bw2)
           (* -1 Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* Aw1 Ax1 Bw1)
	       (* -3 (expt Aw1 2) Bx1))
            Bx2))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* -8 Ax2 (expt Ay1 2))
             (* 2 Ax1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* 8 Ax2 (expt Ay1 2))
               (* -7 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* -8 Aw2 (expt Ay1 2))
               (* 7 Aw1 Ay1 Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* 12 Ax1 Ax2 Ay1)
		 (* -6 (expt Ax1 2) Ay2))
              Bw2)
             (*
              (+ (* 12 Aw2 Ax1)
		 (* -12 Aw1 Ax2))
              Ay1 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* -7 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* 7 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx1)
             (* -6 Aw2 (expt Ax1 2) By1))
            By2))
          Cw2)
	 (*
          (+
           (*
            (+
             (* 8 Ax2 (expt Ay1 2))
             (* -7 Ax1 Ay1 Ay2))
            Bw1 Bw2)
           (*
            (+
             (* -8 Aw2 (expt Ay1 2))
             (* 7 Aw1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (* 8 Aw2 (expt Ay1 2))
             (* -2 Aw1 Ay1 Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+ (* 12 Aw2 Ax1)
		 (* -12 Aw1 Ax2))
              Ay1 Bw2)
             (*
              (+ (* -12 Aw1 Aw2 Ay1)
		 (* 6 (expt Aw1 2) Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (*
		(+ (* -7 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 7 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              Bx1)
             (* 6 (expt Aw1 2) Ax2 By1))
            By2))
          Cx2))
	Cy1)
       (*
	(+
	 (* 4 Ay1 Ay2 Bw1 Bw2
	    (expt Bx1 2))
	 (* -4 Ay1 Ay2 (expt Bw1 2) Bx1
	    Bx2)
	 (*
          (+
           (* -8 Ax1 Ay2 Bw1 Bw2 Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* 4 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              (expt Bw1 2))
             (* 8 Aw1 Ay2 Bw1 Bx1))
            Bx2))
          By1)
	 (*
          (+ (* 4 Ax1 Ax2 Bw1 Bw2)
	     (*
	      (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
	      Bw2 Bx1)
	     (*
	      (+
	       (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Bw1)
	       (* -4 Aw1 Aw2 Bx1))
	      Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 12 Ax1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -12 Aw1 Ay2))
            Bw1 (expt Bx1 2))
           (*
            (+
             (* -4 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* -8 Aw2 Ax1)
		 (* 8 Aw1 Ax2))
              Bw1 Bx1)
             (* 4 Aw1 Aw2 (expt Bx1 2)))
            By1))
          By2)
	 (*
          (+
           (*
            (+ (* Ax2 (expt Ay1 2))
	       (* -2 Ax1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* -6 Ax2 (expt Ay1 2))
               (* 12 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* Aw2 (expt Ay1 2))
               (* -2 Aw1 Ay1 Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* -5 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              Bw2)
             (*
              (+
               (*
		(+ (* -5 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 12 Ax1 Ax2 Ay1)
		 (* -18 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 6 Aw1 Ax1 Ay2))
              Bx1)
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -1 Ax2 (expt Ay1 2))
             (* 2 Ax1 Ay1 Ay2))
            Bw1 Bw2)
           (*
            (+
             (* 6 Aw2 (expt Ay1 2))
             (* -12 Aw1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (* -1 Aw2 (expt Ay1 2))
             (* 2 Aw1 Ay1 Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 5 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw2)
             (*
              (+ (* 5 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -6 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* -12 Aw1 Aw2 Ay1)
		 (* 18 (expt Aw1 2) Ay2))
              Bx1)
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              By1))
            By2))
          Cx1)
	 (*
          (+
           (*
            (+ (* -7 Ax1 Ax2 Ay1)
	       (* 6 (expt Ax1 2) Ay2))
            Bw1 Bw2)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* 7 Aw1 Ax2))
              Ay1)
             (* -2 Aw1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (*
		(+ (* -7 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 7 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (* -6 Aw2 (expt Ax1 2) Bw2)
             (* 6 (expt Aw1 2) Ax2 Bx2))
            By1)
           (*
            (+
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              Bx1))
            By2))
          Cy1))
	Cy2))
      Dw1)
     (*
      (+
       (* -3 (expt Ay1 3) Bw2
	  (expt Bx2 2))
       (*
	(+
	 (* 6 Ax1 (expt Ay1 2) Bw2 Bx2)
	 (* 3 Aw1 (expt Ay1 2)
	    (expt Bx2 2)))
	By2)
       (*
	(+
	 (* -3 (expt Ax1 2) Ay1 Bw2)
	 (* -6 Aw1 Ax1 Ay1 Bx2))
	(expt By2 2))
       (* 3 Aw1 (expt Ax1 2)
	  (expt By2 3))
       (*
	(+
	 (*
          (+ (* -6 Ax2 (expt Ay1 3))
	     (* 6 Ax1 (expt Ay1 2) Ay2))
          Bx2)
	 (*
          (+
           (* 6 Ax1 Ax2 (expt Ay1 2))
           (* -6 (expt Ax1 2) Ay1 Ay2))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+ (* -6 Ax2 (expt Ay1 3))
	     (* 6 Ax1 (expt Ay1 2) Ay2))
          Bw2)
	 (*
          (+ (* -6 Aw2 (expt Ay1 3))
	     (* 6 Aw1 (expt Ay1 2) Ay2))
          Bx2)
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
	       (* 6 Aw1 Ax2))
            (expt Ay1 2))
           (* -12 Aw1 Ax1 Ay1 Ay2))
          By2))
	Cx2)
       (*
	(+
	 (*
          (+
           (* 6 Ax1 Ax2 (expt Ay1 2))
           (* -6 (expt Ax1 2) Ay1 Ay2))
          Bw2)
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
	       (* 6 Aw1 Ax2))
            (expt Ay1 2))
           (* -12 Aw1 Ax1 Ay1 Ay2))
          Bx2)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* -12 Aw1 Ax1 Ax2))
            Ay1)
           (* 18 Aw1 (expt Ax1 2) Ay2))
          By2))
	Cy2))
      (expt Dw1 2)))
    Dx1)
   (*
    (+
     (*
      (+
       (* -1 Ay1 (expt Bw2 3) Bx1)
       (* Ay1 Bw1 (expt Bw2 2) Bx2))
      (expt By1 2))
     (*
      (+ (* Ax1 (expt Bw2 3))
	 (* -1 Aw1 (expt Bw2 2) Bx2))
      (expt By1 3))
     (*
      (+
       (*
	(+
	 (* 2 Ay1 Bw1 (expt Bw2 2) Bx1)
	 (* -2 Ay1 (expt Bw1 2) Bw2 Bx2))
	By1)
       (*
	(+
	 (* -3 Ax1 Bw1 (expt Bw2 2))
	 (* Aw1 (expt Bw2 2) Bx1)
	 (* 2 Aw1 Bw1 Bw2 Bx2))
	(expt By1 2)))
      By2)
     (*
      (+
       (* -1 Ay1 (expt Bw1 2) Bw2 Bx1)
       (* Ay1 (expt Bw1 3) Bx2)
       (*
	(+
	 (* 3 Ax1 (expt Bw1 2) Bw2)
	 (* -2 Aw1 Bw1 Bw2 Bx1)
	 (* -1 Aw1 (expt Bw1 2) Bx2))
	By1))
      (expt By2 2))
     (*
      (+ (* -1 Ax1 (expt Bw1 3))
	 (* Aw1 (expt Bw1 2) Bx1))
      (expt By2 3))
     (*
      (+
       (* -1 (expt Ay1 2)
	  (expt Bw2 2) Bx2 By1)
       (*
	(+
	 (* -2 (expt Ay1 2)
	    (expt Bw2 2) Bx1)
	 (* 3 (expt Ay1 2) Bw1 Bw2 Bx2)
	 (*
          (+
           (* 3 Ax1 Ay1 (expt Bw2 2))
           (* -1 Aw1 Ay1 Bw2 Bx2))
          By1))
	By2)
       (*
	(+ (* -3 Ax1 Ay1 Bw1 Bw2)
	   (* 4 Aw1 Ay1 Bw2 Bx1)
	   (* -3 Aw1 Ay1 Bw1 Bx2)
	   (*
	    (+ (* -3 Aw1 Ax1 Bw2)
	       (* 2 (expt Aw1 2) Bx2))
	    By1))
	(expt By2 2))
       (*
	(+ (* 3 Aw1 Ax1 Bw1)
	   (* -2 (expt Aw1 2) Bx1))
	(expt By2 3)))
      Cw1)
     (*
      (+
       (*
	(+
	 (* 4 Ay1 Ay2 Bw1 Bw2 Bx1)
	 (* -2 Ay1 Ay2 (expt Bw1 2) Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* -6 Ax1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -6 Aw2 Ay1)
	     (* 2 Aw1 Ay2))
          Bw2 Bx1)
	 (*
          (+ (* 2 Aw2 Ay1)
	     (* 2 Aw1 Ay2))
          Bw1 Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* 6 Aw2 Ax1)
	     (* -2 Aw1 Ax2))
          Bw2)
	 (* -2 Aw1 Aw2 Bx2))
	(expt By1 3))
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bw1 2) Bx1)
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* 6 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            Bw1 Bx1))
          By1)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
	       (* 2 Aw1 Ax2))
            Bw1)
           (* 2 Aw1 Aw2 Bx1))
          (expt By1 2)))
	By2)
       (*
	(+
	 (* -4 (expt Ay1 2) Ay2 Bw2 Bx1)
	 (* 3 (expt Ay1 2) Ay2 Bw1 Bx2)
	 (*
          (+
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 6 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* -1 Aw1 Ay1 Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* 3 Ax2 (expt Ay1 2))
             (* -6 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -4 Aw2 (expt Ay1 2))
             (* 8 Aw1 Ay1 Ay2))
            Bx1)
           (*
            (+
             (*
              (+ (* 6 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay1)
             (* -6 Aw1 Ax1 Ay2))
            By1))
          By2))
	Cw1))
      Cw2)
     (*
      (+
       (* (expt Ay1 2)
	  (expt Bw2 3) By1)
       (*
	(+
	 (* -1 (expt Ay1 2) Bw1
	    (expt Bw2 2))
	 (* -2 Aw1 Ay1 (expt Bw2 2) By1))
	By2)
       (*
	(+ (* 2 Aw1 Ay1 Bw1 Bw2)
	   (* (expt Aw1 2) Bw2 By1))
	(expt By2 2))
       (* -1 (expt Aw1 2) Bw1
	  (expt By2 3))
       (*
	(+
	 (* -2 (expt Ay1 2) Ay2 Bw1 Bw2)
	 (*
          (+ (* 6 Aw2 (expt Ay1 2))
	     (* -4 Aw1 Ay1 Ay2))
          Bw2 By1)
	 (*
          (+
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Bw1)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            By1))
          By2))
	Cw2))
      Cx1)
     (*
      (+
       (* -2 Ay1 Ay2 (expt Bw1 2) Bw2
	  By1)
       (*
	(+ (* 2 Aw2 Ay1)
	   (* 2 Aw1 Ay2))
	Bw1 Bw2 (expt By1 2))
       (* -2 Aw1 Aw2 Bw2 (expt By1 3))
       (*
	(+
	 (* 2 Ay1 Ay2 (expt Bw1 3))
	 (*
          (+ (* -2 Aw2 Ay1)
	     (* -2 Aw1 Ay2))
          (expt Bw1 2) By1)
	 (* 2 Aw1 Aw2 Bw1 (expt By1 2)))
	By2)
       (*
	(+
	 (* 3 (expt Ay1 2) Ay2 Bw1 Bw2)
	 (*
          (+ (* -2 Aw2 (expt Ay1 2))
	     (* -1 Aw1 Ay1 Ay2))
          Bw2 By1)
	 (*
          (+
           (*
            (+
             (* 3 Aw2 (expt Ay1 2))
             (* -6 Aw1 Ay1 Ay2))
            Bw1)
           (*
            (+ (* -1 Aw1 Aw2 Ay1)
	       (* 4 (expt Aw1 2) Ay2))
            By1))
          By2))
	Cw1))
      Cx2)
     (*
      (+
       (* 2 (expt Ay1 2)
	  (expt Bw2 3) Bx1)
       (* -2 (expt Ay1 2) Bw1
	  (expt Bw2 2) Bx2)
       (*
	(+
	 (* -3 Ax1 Ay1 (expt Bw2 3))
	 (* 3 Aw1 Ay1 (expt Bw2 2) Bx2))
	By1)
       (*
	(+
	 (* 3 Ax1 Ay1 Bw1 (expt Bw2 2))
	 (* -4 Aw1 Ay1 (expt Bw2 2) Bx1)
	 (* Aw1 Ay1 Bw1 Bw2 Bx2)
	 (*
          (+
           (* 3 Aw1 Ax1 (expt Bw2 2))
           (* -3 (expt Aw1 2) Bw2 Bx2))
          By1))
	By2)
       (*
	(+ (* -3 Aw1 Ax1 Bw1 Bw2)
	   (* 2 (expt Aw1 2) Bw2 Bx1)
	   (* (expt Aw1 2) Bw1 Bx2))
	(expt By2 2))
       (*
	(+
	 (*
          (+ (* -4 Ax2 (expt Ay1 2))
	     (* 6 Ax1 Ay1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* 12 Aw2 (expt Ay1 2))
	     (* -8 Aw1 Ay1 Ay2))
          Bw2 Bx1)
	 (*
          (+ (* -4 Aw2 (expt Ay1 2))
	     (* Aw1 Ay1 Ay2))
          Bw1 Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -18 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* 6 Aw1 Aw2 Ay1)
	       (* -3 (expt Aw1 2) Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 6 Aw2 Ax1)
		 (* Aw1 Ax2))
              Ay1)
             (* -6 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -8 Aw1 Aw2 Ay1)
	       (* 4 (expt Aw1 2) Ay2))
            Bx1)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
	       (* -3 (expt Aw1 2) Ax2))
            By1))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+ (* -4 Aw2 (expt Ay1 2))
	     (* Aw1 Ay1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* 6 Aw1 Aw2 Ay1)
	     (* -3 (expt Aw1 2) Ay2))
          Bw2 By1)
	 (*
          (+
           (*
            (+ (* Aw1 Aw2 Ay1)
	       (* 2 (expt Aw1 2) Ay2))
            Bw1)
           (* -3 (expt Aw1 2) Aw2 By1))
          By2))
	Cx2))
      Cy1)
     (*
      (+
       (* -2 Ay1 Ay2 (expt Bw1 2) Bw2
	  Bx1)
       (* 2 Ay1 Ay2 (expt Bw1 3) Bx2)
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
	     (* 6 Ax1 Ay2))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* 4 Aw2 Ay1)
	     (* -4 Aw1 Ay2))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* -2 Aw2 Ay1)
	     (* -2 Aw1 Ay2))
          (expt Bw1 2) Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* -6 Aw2 Ax1)
	     (* 2 Aw1 Ax2))
          Bw1 Bw2)
	 (* 2 Aw1 Aw2 Bw2 Bx1)
	 (* 2 Aw1 Aw2 Bw1 Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1)
	     (* -6 Ax1 Ay2))
          (expt Bw1 3))
	 (*
          (+ (* -2 Aw2 Ay1)
	     (* 6 Aw1 Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
	       (* -2 Aw1 Ax2))
            (expt Bw1 2))
           (* -4 Aw1 Aw2 Bw1 Bx1))
          By1))
	By2)
       (*
	(+
	 (*
          (+ (* 3 Ax2 (expt Ay1 2))
	     (* -6 Ax1 Ay1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -4 Aw2 (expt Ay1 2))
	     (* 8 Aw1 Ay1 Ay2))
          Bw2 Bx1)
	 (*
          (+ (* 3 Aw2 (expt Ay1 2))
	     (* -6 Aw1 Ay1 Ay2))
          Bw1 Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 6 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay1)
             (* -6 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* -1 Aw1 Aw2 Ay1)
	       (* 4 (expt Aw1 2) Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -6 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 18 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* 8 Aw1 Aw2 Ay1)
	       (* -12 (expt Aw1 2) Ay2))
            Bx1)
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
	       (* 4 (expt Aw1 2) Ax2))
            By1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+ (* -2 Aw2 (expt Ay1 2))
	     (* 4 Aw1 Ay1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -4 Aw1 Aw2 Ay1)
	     (* 2 (expt Aw1 2) Ay2))
          Bw2 By1)
	 (*
          (+
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -6 (expt Aw1 2) Ay2))
            Bw1)
           (* 2 (expt Aw1 2) Aw2 By1))
          By2))
	Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
	       (* Aw1 Ax2))
            Ay1)
           (* -6 Aw1 Ax1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -8 Aw1 Aw2 Ay1)
	     (* 4 (expt Aw1 2) Ay2))
          Bw2 Bx1)
	 (*
          (+ (* Aw1 Aw2 Ay1)
	     (* 2 (expt Aw1 2) Ay2))
          Bw1 Bx2)
	 (*
          (+
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
	       (* -3 (expt Aw1 2) Ax2))
            Bw2)
           (* -3 (expt Aw1 2) Aw2 Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Bw1)
           (* 4 (expt Aw1 2) Aw2 Bx1))
          By2))
	Cy1))
      Cy2)
     (*
      (+
       (* 3 (expt Ay1 3)
	  (expt Bw2 2) Bx2)
       (*
	(+
	 (* -3 Ax1 (expt Ay1 2)
	    (expt Bw2 2))
	 (* -6 Aw1 (expt Ay1 2) Bw2 Bx2))
	By2)
       (*
	(+ (* 6 Aw1 Ax1 Ay1 Bw2)
	   (* 3 (expt Aw1 2) Ay1 Bx2))
	(expt By2 2))
       (* -3 (expt Aw1 2) Ax1
	  (expt By2 3))
       (*
	(+
	 (*
          (+ (* 6 Ax2 (expt Ay1 3))
	     (* -6 Ax1 (expt Ay1 2) Ay2))
          Bw2)
	 (*
          (+ (* 6 Aw2 (expt Ay1 3))
	     (* -6 Aw1 (expt Ay1 2) Ay2))
          Bx2)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
	       (* -6 Aw1 Ax2))
            (expt Ay1 2))
           (* 12 Aw1 Ax1 Ay1 Ay2))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+ (* 6 Aw2 (expt Ay1 3))
	     (* -6 Aw1 (expt Ay1 2) Ay2))
          Bw2)
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ay1 2))
           (* 6 (expt Aw1 2) Ay1 Ay2))
          By2))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
	       (* -6 Aw1 Ax2))
            (expt Ay1 2))
           (* 12 Aw1 Ax1 Ay1 Ay2))
          Bw2)
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ay1 2))
           (* 6 (expt Aw1 2) Ay1 Ay2))
          Bx2)
	 (*
          (+
           (*
            (+ (* 12 Aw1 Aw2 Ax1)
	       (* 6 (expt Aw1 2) Ax2))
            Ay1)
           (* -18 (expt Aw1 2) Ax1 Ay2))
          By2))
	Cy2))
      Dw1))
    (expt Dx1 2))
   (*
    (+
     (* -1 (expt Ay1 3)
	(expt Bw2 3))
     (* 3 Aw1 (expt Ay1 2)
	(expt Bw2 2) By2)
     (* -3 (expt Aw1 2) Ay1 Bw2
	(expt By2 2))
     (* (expt Aw1 3)
	(expt By2 3))
     (*
      (+
       (*
	(+ (* -6 Aw2 (expt Ay1 3))
	   (* 6 Aw1 (expt Ay1 2) Ay2))
	Bw2)
       (*
	(+
	 (* 6 Aw1 Aw2 (expt Ay1 2))
	 (* -6 (expt Aw1 2) Ay1 Ay2))
	By2))
      Cw2)
     (*
      (+
       (*
	(+
	 (* 6 Aw1 Aw2 (expt Ay1 2))
	 (* -6 (expt Aw1 2) Ay1 Ay2))
	Bw2)
       (*
	(+
	 (* -6 (expt Aw1 2) Aw2 Ay1)
	 (* 6 (expt Aw1 3) Ay2))
	By2))
      Cy2))
    (expt Dx1 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -1 Ay1 Bw2 Bx1 (expt Bx2 2))
	 (* Ay1 Bw1 (expt Bx2 3)))
	By1)
       (*
	(+
	 (* Ax1 Bw2 (expt Bx2 2))
	 (* -1 Aw1 (expt Bx2 3)))
	(expt By1 2))
       (*
	(+
	 (* Ay1 Bw2 (expt Bx1 2) Bx2)
	 (* -1 Ay1 Bw1 Bx1 (expt Bx2 2))
	 (*
          (+ (* -1 Ax1 Bw2 Bx1 Bx2)
	     (*
	      (+ (* -1 Ax1 Bw1)
		 (* 2 Aw1 Bx1))
	      (expt Bx2 2)))
          By1))
	By2)
       (*
	(+ (* Ax1 Bw1 Bx1)
	   (* -1 Aw1 (expt Bx1 2)))
	Bx2 (expt By2 2)))
      (expt Cw1 2))
     (*
      (+
       (* -1 (expt Ay1 2)
	  (expt Bx2 3))
       (* 2 Ax1 Ay1 (expt Bx2 2) By2)
       (* -1 (expt Ax1 2) Bx2
	  (expt By2 2)))
      (expt Cw1 3))
     (*
      (+
       (* Ay1 Ay2 (expt Bx1 2) Bx2)
       (*
	(+ (* -2 Ax2 Ay1)
	   (* -1 Ax1 Ay2))
	Bx1 Bx2 By1)
       (* 2 Ax1 Ax2 Bx2 (expt By1 2))
       (*
	(+
	 (* Ax2 Ay1 (expt Bx1 2))
	 (* -1 Ax1 Ax2 Bx1 By1))
	By2))
      (expt Cw1 2) Cw2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 2 Ay1 (expt Bw2 2) Bx1 Bx2)
           (* -2 Ay1 Bw1 Bw2
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -2 Ax1 (expt Bw2 2) Bx2)
           (* 2 Aw1 Bw2 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* -1 Ay1 (expt Bw2 2)
	      (expt Bx1 2))
           (* Ay1 (expt Bw1 2)
	      (expt Bx2 2))
           (*
            (+
             (* Ax1 (expt Bw2 2) Bx1)
             (*
              (+ (* 3 Ax1 Bw1 Bw2)
		 (* -3 Aw1 Bw2 Bx1))
              Bx2)
             (* -1 Aw1 Bw1 (expt Bx2 2)))
            By1))
          By2)
	 (*
          (+ (* -1 Ax1 Bw1 Bw2 Bx1)
	     (* Aw1 Bw2 (expt Bx1 2))
	     (*
	      (+
	       (* -1 Ax1 (expt Bw1 2))
	       (* Aw1 Bw1 Bx1))
	      Bx2))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* 3 (expt Ay1 2) Bw2
	    (expt Bx2 2))
	 (*
          (+ (* -4 Ax1 Ay1 Bw2 Bx2)
	     (* -2 Aw1 Ay1 (expt Bx2 2)))
          By2)
	 (*
          (+ (* (expt Ax1 2) Bw2)
	     (* 2 Aw1 Ax1 Bx2))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (* -2 Ay1 Ay2 Bw2
	      (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* 2 Ax1 Ay2))
              Bw2 Bx1)
             (*
              (+
               (*
		(+ (* -4 Ax2 Ay1)
		   (* 3 Ax1 Ay2))
		Bw1)
               (*
		(+ (* 4 Aw2 Ay1)
		   (* -3 Aw1 Ay2))
		Bx1))
              Bx2))
            By1)
           (*
            (+ (* -4 Ax1 Ax2 Bw2)
	       (*
		(+ (* -4 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Bx2))
            (expt By1 2))
           (*
            (+ (* -2 Ax1 Ay2 Bw1 Bx1)
	       (*
		(+ (* -2 Aw2 Ay1)
		   (* 2 Aw1 Ay2))
		(expt Bx1 2))
	       (*
		(+ (* 3 Ax1 Ax2 Bw1)
		   (*
		    (+ (* 2 Aw2 Ax1)
		       (* -3 Aw1 Ax2))
		    Bx1))
		By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* 6 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            Bx2)
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            By2))
          (expt Cw1 2)))
	Cw2))
      Cx1)
     (*
      (+
       (*
	(+
	 (* -1 Ay1 (expt Bw2 3) Bx1)
	 (* Ay1 Bw1 (expt Bw2 2) Bx2))
	By1)
       (*
	(+ (* Ax1 (expt Bw2 3))
	   (* -1 Aw1 (expt Bw2 2) Bx2))
	(expt By1 2))
       (*
	(+
	 (* Ay1 Bw1 (expt Bw2 2) Bx1)
	 (* -1 Ay1 (expt Bw1 2) Bw2 Bx2)
	 (*
          (+
           (* -2 Ax1 Bw1 (expt Bw2 2))
           (* Aw1 (expt Bw2 2) Bx1)
           (* Aw1 Bw1 Bw2 Bx2))
          By1))
	By2)
       (*
	(+
	 (* Ax1 (expt Bw1 2) Bw2)
	 (* -1 Aw1 Bw1 Bw2 Bx1))
	(expt By2 2))
       (*
	(+
	 (* -3 (expt Ay1 2)
	    (expt Bw2 2) Bx2)
	 (*
          (+
           (* 2 Ax1 Ay1 (expt Bw2 2))
           (* 4 Aw1 Ay1 Bw2 Bx2))
          By2)
	 (*
          (+ (* -2 Aw1 Ax1 Bw2)
	     (* -1 (expt Aw1 2) Bx2))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* 2 Ay1 Ay2 Bw1 Bw2 Bx1)
	 (* -1 Ay1 Ay2 (expt Bw1 2) Bx2)
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1)
	       (* -4 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* -6 Aw2 Ay1)
	       (* 2 Aw1 Ay2))
            Bw2 Bx1)
           (*
            (+ (* 2 Aw2 Ay1)
	       (* Aw1 Ay2))
            Bw1 Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
	       (* -2 Aw1 Ax2))
            Bw2)
           (* -2 Aw1 Aw2 Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* Aw1 Ax2))
              Bw1)
             (* 2 Aw1 Aw2 Bx1))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* -6 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* -6 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Bx2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            By2))
          Cw1))
	Cw2))
      (expt Cx1 2))
     (*
      (+
       (* (expt Ay1 2)
	  (expt Bw2 3))
       (* -2 Aw1 Ay1 (expt Bw2 2) By2)
       (* (expt Aw1 2) Bw2
	  (expt By2 2))
       (*
	(+
	 (*
          (+ (* 6 Aw2 (expt Ay1 2))
	     (* -4 Aw1 Ay1 Ay2))
          Bw2)
	 (*
          (+ (* -4 Aw1 Aw2 Ay1)
	     (* 2 (expt Aw1 2) Ay2))
          By2))
	Cw2))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (* Ay1 Ay2 Bw2 (expt Bx1 2))
	 (* -2 Ay1 Ay2 Bw1 Bx1 Bx2)
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* -1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* 6 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw1)
             (*
              (+ (* -2 Aw2 Ay1)
		 (* 4 Aw1 Ay2))
              Bx1))
            Bx2))
          By1)
	 (*
          (+ (* 2 Ax1 Ax2 Bw2)
	     (*
	      (+ (* 2 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
	      Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            (expt Bx1 2))
           (*
            (+ (* -2 Ax1 Ax2 Bw1)
	       (*
		(+ (* -1 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Bx1))
            By1))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+ (* -6 Ax2 (expt Ay1 2))
	     (* 4 Ax1 Ay1 Ay2))
          Bx2)
	 (*
          (+ (* 4 Ax1 Ax2 Ay1)
	     (* -2 (expt Ax1 2) Ay2))
          By2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (* 2 Ay1 Ay2 (expt Bw1 2) Bx2)
           (*
            (+
             (*
              (+ (* -4 Ax2 Ay1)
		 (* 3 Ax1 Ay2))
              Bw1 Bw2)
             (*
              (+ (* 4 Aw2 Ay1)
		 (* -3 Aw1 Ay2))
              Bw2 Bx1)
             (*
              (+ (* -4 Aw2 Ay1)
		 (* -2 Aw1 Ay2))
              Bw1 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Bw2)
             (* 4 Aw1 Aw2 Bx2))
            (expt By1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (* 2 Aw1 Ay2 Bw1 Bx1)
             (*
              (+
               (*
		(+ (* 3 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bw1)
               (* -3 Aw1 Aw2 Bx1))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* 6 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* 6 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            Bx2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            By2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (* -1 Ay1 Ay2 (expt Bw1 2) Bw2)
	 (*
          (+ (* 2 Aw2 Ay1)
	     (* Aw1 Ay2))
          Bw1 Bw2 By1)
	 (* -2 Aw1 Aw2 Bw2 (expt By1 2))
	 (*
          (+
           (* -1 Aw2 Ay1 (expt Bw1 2))
           (* Aw1 Aw2 Bw1 By1))
          By2)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            By2))
          Cw1))
	(expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+
	 (* -1 Ay1 (expt Bw2 2)
	    (expt Bx1 2) Bx2)
	 (* 2 Ay1 Bw1 Bw2 Bx1
	    (expt Bx2 2))
	 (* -1 Ay1 (expt Bw1 2)
	    (expt Bx2 3))
	 (*
          (+
           (* Ax1 (expt Bw2 2) Bx1 Bx2)
           (*
            (+ (* -1 Ax1 Bw1 Bw2)
	       (* -1 Aw1 Bw2 Bx1))
            (expt Bx2 2))
           (* Aw1 Bw1 (expt Bx2 3)))
          By1)
	 (*
          (+
           (*
            (+ (* -1 Ax1 Bw1 Bw2 Bx1)
	       (* Aw1 Bw2 (expt Bx1 2)))
            Bx2)
           (*
            (+ (* Ax1 (expt Bw1 2))
	       (* -1 Aw1 Bw1 Bx1))
            (expt Bx2 2)))
          By2))
	Cw1)
       (*
	(+
	 (* -2 Ax1 Ay1 Bw2 (expt Bx2 2))
	 (* 2 Aw1 Ay1 (expt Bx2 3))
	 (*
          (+
           (* 2 (expt Ax1 2) Bw2 Bx2)
           (* -2 Aw1 Ax1 (expt Bx2 2)))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (* -2 Ax2 Ay1 Bw2
	      (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* -1 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -2 Aw2 Ay1)
		 (* Aw1 Ay2))
              (expt Bx1 2)))
            Bx2)
           (*
            (+ (* 2 Ax1 Ax2 Bw2 Bx1)
	       (*
		(+ (* -2 Ax1 Ax2 Bw1)
		   (*
		    (+ (* 2 Aw2 Ax1)
		       (* -2 Aw1 Ax2))
		    Bx1))
		Bx2))
            By1)
           (*
            (+ (* -1 Ax1 Ax2 Bw1 Bx1)
	       (* Aw1 Ax2 (expt Bx1 2)))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            Bx2)
           (* 2 (expt Ax1 2) Ax2 By2))
          (expt Cw1 2)))
	Cw2)
       (*
	(+
	 (* Ay1 (expt Bw2 3)
	    (expt Bx1 2))
	 (* -2 Ay1 Bw1 (expt Bw2 2) Bx1
	    Bx2)
	 (* Ay1 (expt Bw1 2) Bw2
	    (expt Bx2 2))
	 (*
          (+
           (* -1 Ax1 (expt Bw2 3) Bx1)
           (*
            (+
             (* Ax1 Bw1 (expt Bw2 2))
             (* Aw1 (expt Bw2 2) Bx1))
            Bx2)
           (* -1 Aw1 Bw1 Bw2
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* Ax1 Bw1 (expt Bw2 2) Bx1)
           (* -1 Aw1 (expt Bw2 2)
	      (expt Bx1 2))
           (*
            (+
             (* -1 Ax1 (expt Bw1 2) Bw2)
             (* Aw1 Bw1 Bw2 Bx1))
            Bx2))
          By2)
	 (*
          (+
           (* 4 Ax1 Ay1 (expt Bw2 2) Bx2)
           (* -4 Aw1 Ay1 Bw2
	      (expt Bx2 2))
           (*
            (+
             (* -2 (expt Ax1 2)
		(expt Bw2 2))
             (* 2 (expt Aw1 2)
		(expt Bx2 2)))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            Bw1 Bw2 Bx1)
           (*
            (+ (* 6 Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -1 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* -4 Aw2 Ay1)
		 (* Aw1 Ay2))
              Bw1 Bx1))
            Bx2)
           (*
            (+ (* 2 Ax1 Ax2 Bw1 Bw2)
	       (*
		(+ (* -6 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Bw2 Bx1)
	       (*
		(+
		 (*
		  (+ (* 2 Aw2 Ax1)
		     (* -2 Aw1 Ax2))
		  Bw1)
		 (* 2 Aw1 Aw2 Bx1))
		Bx2))
            By1)
           (*
            (+
             (* -1 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* 2 Aw2 Ax1)
		 (* Aw1 Ax2))
              Bw1 Bx1)
             (* -2 Aw1 Aw2 (expt Bx1 2)))
            By2)
           (*
            (+
             (*
              (+ (* 8 Ax1 Ax2 Ay1)
		 (* -4 (expt Ax1 2) Ay2))
              Bw2)
             (*
              (+ (* 8 Aw2 Ax1)
		 (* -8 Aw1 Ax2))
              Ay1 Bx2)
             (* -4 Aw2 (expt Ax1 2) By2))
            Cw1))
          Cw2))
	Cx1)
       (*
	(+
	 (* -2 Ax1 Ay1 (expt Bw2 3))
	 (* 2 Aw1 Ay1 (expt Bw2 2) Bx2)
	 (*
          (+
           (* 2 Aw1 Ax1 (expt Bw2 2))
           (* -2 (expt Aw1 2) Bw2 Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -12 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            Bx2)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            By2))
          Cw2))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
	       (* -1 Ax1 Ay2))
            Bw1 Bw2 Bx1)
           (*
            (+ (* -2 Aw2 Ay1)
	       (* Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* -6 Ax2 Ay1)
		 (* 2 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* 4 Aw2 Ay1)
		 (* -2 Aw1 Ay2))
              Bw1 Bx1))
            Bx2)
           (*
            (+ (* -2 Ax1 Ax2 Bw1 Bw2)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bw2 Bx1)
	       (*
		(+
		 (*
		  (+ (* -2 Aw2 Ax1)
		     (* 6 Aw1 Ax2))
		  Bw1)
		 (* -2 Aw1 Aw2 Bx1))
		Bx2))
            By1)
           (*
            (+
             (* 2 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw1 Bx1)
             (* Aw1 Aw2 (expt Bx1 2)))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 12 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Bx2)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            By2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1)
	       (* -1 Ax1 Ay2))
            (expt Bw1 2) Bw2)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* Aw1 Ay2))
            Bw1 Bw2 Bx1)
           (* 2 Aw2 Ay1 (expt Bw1 2) Bx2)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw1 Bw2)
             (* 2 Aw1 Aw2 Bw2 Bx1)
             (* -2 Aw1 Aw2 Bw1 Bx2))
            By1)
           (*
            (+
             (* -1 Aw2 Ax1 (expt Bw1 2))
             (* Aw1 Aw2 Bw1 Bx1))
            By2)
           (*
            (+
             (*
              (+ (* 8 Aw2 Ax1)
		 (* -8 Aw1 Ax2))
              Ay1 Bw2)
             (*
              (+ (* -8 Aw1 Aw2 Ay1)
		 (* 4 (expt Aw1 2) Ay2))
              Bx2)
             (* 4 (expt Aw1 2) Ax2 By2))
            Cw1))
          Cx1)
	 (*
          (+
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            Bw2)
           (* -2 (expt Aw1 2) Aw2 By2))
          (expt Cx1 2)))
	Cx2))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -1 (expt Ax1 2)
	    (expt Bw2 2) Bx2)
	 (* 2 Aw1 Ax1 Bw2 (expt Bx2 2))
	 (* -1 (expt Aw1 2)
	    (expt Bx2 3)))
	Cw1)
       (*
	(+
	 (* -2 (expt Ax1 2) Ax2 Bw2)
	 (*
          (+ (* -2 Aw2 (expt Ax1 2))
	     (* 4 Aw1 Ax1 Ax2))
          Bx2))
	Cw1 Cw2)
       (*
	(+
	 (* (expt Ax1 2)
	    (expt Bw2 3))
	 (* -2 Aw1 Ax1 (expt Bw2 2) Bx2)
	 (* (expt Aw1 2) Bw2
	    (expt Bx2 2))
	 (*
          (+
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Bw2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Bx2))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -6 (expt Aw1 2) Ax2))
            Bx2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 2 (expt Aw1 2) Ax2))
            Bw2)
           (* 2 (expt Aw1 2) Aw2 Bx2))
          Cx1))
	Cx2))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (* Ax2 Ay1 Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
	       (* 2 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* Aw2 Ay1)
	       (* -2 Aw1 Ay2))
            (expt Bx1 2)))
          Bx2)
	 (*
          (+ (* -1 Ax1 Ax2 Bw2 Bx1)
	     (*
	      (+ (* -2 Ax1 Ax2 Bw1)
		 (*
		  (+ (* -1 Aw2 Ax1)
		     (* 4 Aw1 Ax2))
		  Bx1))
	      Bx2))
          By1)
	 (*
          (+ (* 2 Ax1 Ax2 Bw1 Bx1)
	     (* -2 Aw1 Ax2 (expt Bx1 2)))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+ (* 4 Ax1 Ax2 Ay1)
	     (* -2 (expt Ax1 2) Ay2))
          Bx2)
	 (* -2 (expt Ax1 2) Ax2 By2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (* -2 Ax1 Ay2 Bw1 Bw2 Bx1)
           (*
            (+ (* -2 Aw2 Ay1)
	       (* 2 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (* 2 Aw1 Ay2 Bw1 Bx1))
            Bx2)
           (*
            (+ (* 3 Ax1 Ax2 Bw1 Bw2)
	       (*
		(+ (* 2 Aw2 Ax1)
		   (* -3 Aw1 Ax2))
		Bw2 Bx1)
	       (*
		(+
		 (*
		  (+ (* 3 Aw2 Ax1)
		     (* -2 Aw1 Ax2))
		  Bw1)
		 (* -3 Aw1 Aw2 Bx1))
		Bx2))
            By1)
           (*
            (+
             (* -2 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Bw1 Bx1)
             (* 2 Aw1 Aw2 (expt Bx1 2)))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
	       (* 2 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Bx2)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            By2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (*
          (+ (* -1 Ax2 Ay1)
	     (* 2 Ax1 Ay2))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* 2 Aw2 Ay1)
	     (* -2 Aw1 Ay2))
          Bw1 Bw2 Bx1)
	 (* -1 Aw2 Ay1 (expt Bw1 2) Bx2)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1)
	       (* Aw1 Ax2))
            Bw1 Bw2)
           (* 2 Aw1 Aw2 Bw2 Bx1)
           (* Aw1 Aw2 Bw1 Bx2))
          By1)
	 (*
          (+
           (* 2 Aw2 Ax1 (expt Bw1 2))
           (* -2 Aw1 Aw2 Bw1 Bx1))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
	       (* -2 (expt Aw1 2) Ay2))
            Bx2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            By2))
          Cw1))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+ (* -4 Aw1 Aw2 Ay1)
	     (* 2 (expt Aw1 2) Ay2))
          Bw2)
	 (* 2 (expt Aw1 2) Aw2 By2))
	(expt Cx1 3))
       (*
	(+
	 (*
          (+
           (* -1 Ax1 Ax2 Bw1 Bw2 Bx1)
           (* Aw1 Ax2 Bw2 (expt Bx1 2))
           (*
            (+
             (* 2 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw1 Bx1)
             (* Aw1 Aw2 (expt Bx1 2)))
            Bx2))
          Cw1)
	 (*
          (+
           (* 2 (expt Ax1 2) Ax2 Bw2)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Bx2))
          (expt Cw1 2))
	 (*
          (+
           (* -1 Ax1 Ax2 (expt Bw1 2)
	      Bw2)
           (*
            (+ (* 2 Aw2 Ax1)
	       (* Aw1 Ax2))
            Bw1 Bw2 Bx1)
           (* -2 Aw1 Aw2 Bw2
	      (expt Bx1 2))
           (*
            (+
             (* -1 Aw2 Ax1 (expt Bw1 2))
             (* Aw1 Aw2 Bw1 Bx1))
            Bx2)
           (*
            (+
             (* -4 Aw2 (expt Ax1 2) Bw2)
             (* 4 (expt Aw1 2) Ax2 Bx2))
            Cw1))
          Cx1)
	 (*
          (+
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            Bw2)
           (* -2 (expt Aw1 2) Aw2 Bx2))
          (expt Cx1 2)))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+
	 (* -2 Ay1 (expt Bw2 2)
	    (expt Bx1 2) Bx2)
	 (* 4 Ay1 Bw1 Bw2 Bx1
	    (expt Bx2 2))
	 (* -2 Ay1 (expt Bw1 2)
	    (expt Bx2 3)))
	By1)
       (*
	(+
	 (* 2 Ax1 (expt Bw2 2) Bx1 Bx2)
	 (*
          (+ (* -2 Ax1 Bw1 Bw2)
	     (* -2 Aw1 Bw2 Bx1))
          (expt Bx2 2))
	 (* 2 Aw1 Bw1 (expt Bx2 3)))
	(expt By1 2))
       (*
	(+
	 (* 2 Ay1 (expt Bw2 2)
	    (expt Bx1 3))
	 (* -4 Ay1 Bw1 Bw2 (expt Bx1 2)
	    Bx2)
	 (* 2 Ay1 (expt Bw1 2) Bx1
	    (expt Bx2 2))
	 (*
          (+
           (* -2 Ax1 (expt Bw2 2)
	      (expt Bx1 2))
           (* 4 Aw1 Bw2 (expt Bx1 2) Bx2)
           (*
            (+
             (* 2 Ax1 (expt Bw1 2))
             (* -4 Aw1 Bw1 Bx1))
            (expt Bx2 2)))
          By1))
	By2)
       (*
	(+
	 (* 2 Ax1 Bw1 Bw2 (expt Bx1 2))
	 (* -2 Aw1 Bw2 (expt Bx1 3))
	 (*
          (+
           (* -2 Ax1 (expt Bw1 2) Bx1)
           (* 2 Aw1 Bw1 (expt Bx1 2)))
          Bx2))
	(expt By2 2))
       (*
	(+
	 (* -3 (expt Ay1 2) Bw2 Bx1
	    (expt Bx2 2))
	 (* 3 (expt Ay1 2) Bw1
	    (expt Bx2 3))
	 (*
          (+
           (* Ax1 Ay1 Bw2 (expt Bx2 2))
           (* -1 Aw1 Ay1 (expt Bx2 3)))
          By1)
	 (*
          (+
           (* 5 Ax1 Ay1 Bw2 Bx1 Bx2)
           (*
            (+ (* -6 Ax1 Ay1 Bw1)
	       (* Aw1 Ay1 Bx1))
            (expt Bx2 2))
           (*
            (+
             (* -1 (expt Ax1 2) Bw2 Bx2)
             (* Aw1 Ax1 (expt Bx2 2)))
            By1))
          By2)
	 (*
          (+
           (* -2 (expt Ax1 2) Bw2 Bx1)
           (*
            (+
             (* 3 (expt Ax1 2) Bw1)
             (* -1 Aw1 Ax1 Bx1))
            Bx2))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* 4 Ay1 Ay2 Bw2 (expt Bx1 3))
	 (* -4 Ay1 Ay2 Bw1 (expt Bx1 2)
	    Bx2)
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* -4 Ax1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+ (* 8 Ax2 Ay1 Bw1 Bx1)
	       (*
		(+ (* -4 Aw2 Ay1)
		   (* 4 Aw1 Ay2))
		(expt Bx1 2)))
            Bx2))
          By1)
	 (*
          (+ (* 4 Ax1 Ax2 Bw2 Bx1)
	     (*
	      (+ (* -4 Ax1 Ax2 Bw1)
		 (*
		  (+ (* 4 Aw2 Ax1)
		     (* -4 Aw1 Ax2))
		  Bx1))
	      Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            Bw1 (expt Bx1 2))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            (expt Bx1 3))
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            (expt Bx1 2) By1))
          By2)
	 (*
          (+
           (*
            (+
             (* -6 Ax2 (expt Ay1 2))
             (* 5 Ax1 Ay1 Ay2))
            Bx1 Bx2)
           (*
            (+ (* 2 Ax1 Ax2 Ay1)
	       (* -1 (expt Ax1 2) Ay2))
            Bx2 By1)
           (*
            (+
             (*
              (+ (* 5 Ax1 Ax2 Ay1)
		 (* -4 (expt Ax1 2) Ay2))
              Bx1)
             (* -1 (expt Ax1 2) Ax2 By1))
            By2))
          Cw1))
	Cw2)
       (*
	(+
	 (* 3 (expt Ay1 2)
	    (expt Bw2 2) Bx1 Bx2)
	 (* -3 (expt Ay1 2) Bw1 Bw2
	    (expt Bx2 2))
	 (*
          (+
           (* -1 Ax1 Ay1 (expt Bw2 2)
	      Bx2)
           (* Aw1 Ay1 Bw2 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -6 Ax1 Ay1 (expt Bw2 2)
	      Bx1)
           (* 7 Ax1 Ay1 Bw1 Bw2 Bx2)
           (* -1 Aw1 Ay1 Bw1
	      (expt Bx2 2))
           (*
            (+
             (* 4 (expt Ax1 2)
		(expt Bw2 2))
             (* -7 Aw1 Ax1 Bw2 Bx2)
             (* 3 (expt Aw1 2)
		(expt Bx2 2)))
            By1))
          By2)
	 (*
          (+
           (* -4 (expt Ax1 2) Bw1 Bw2)
           (* 6 Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* Aw1 Ax1 Bw1)
	       (* -3 (expt Aw1 2) Bx1))
            Bx2))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* 6 Ax2 (expt Ay1 2))
             (* -12 Ax1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* -6 Ax2 (expt Ay1 2))
               (* 7 Ax1 Ay1 Ay2))
              Bw1)
             (* 6 Aw2 (expt Ay1 2) Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* -2 Ax1 Ax2 Ay1)
		 (* 8 (expt Ax1 2) Ay2))
              Bw2)
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -7 Aw1 Ax1 Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 7 Ax1 Ax2 Ay1)
		 (* -8 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+ (* -12 Aw2 Ax1 Ay1)
		 (* 12 Aw1 Ax1 Ay2))
              Bx1)
             (*
              (+
               (* 8 Aw2 (expt Ax1 2))
               (* -7 Aw1 Ax1 Ax2))
              By1))
            By2))
          Cw2))
	Cx1)
       (*
	(+
	 (* -4 Ay1 Ay2 Bw1 Bw2
	    (expt Bx1 2))
	 (* 4 Ay1 Ay2 (expt Bw1 2) Bx1
	    Bx2)
	 (*
          (+
           (* 8 Ax2 Ay1 Bw1 Bw2 Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* 4 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* -12 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* 8 Aw2 Ay1)
		 (* -8 Aw1 Ay2))
              Bw1 Bx1))
            Bx2))
          By1)
	 (*
          (+ (* -4 Ax1 Ax2 Bw1 Bw2)
	     (*
	      (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
	      Bw2 Bx1)
	     (*
	      (+
	       (*
		(+ (* -4 Aw2 Ax1)
		   (* 12 Aw1 Ax2))
		Bw1)
	       (* -4 Aw1 Aw2 Bx1))
	      Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
	       (* -4 Ax1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* 4 Aw1 Ay2))
            Bw1 (expt Bx1 2))
           (*
            (+
             (* 4 Ax1 Ax2 (expt Bw1 2))
             (* -8 Aw1 Ax2 Bw1 Bx1)
             (* 4 Aw1 Aw2 (expt Bx1 2)))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* -6 Ax2 (expt Ay1 2))
             (* 5 Ax1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* 18 Ax2 (expt Ay1 2))
               (* -12 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* -6 Aw2 (expt Ay1 2))
               (* 2 Aw1 Ay1 Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* 2 Ax1 Ax2 Ay1)
		 (* -1 (expt Ax1 2) Ay2))
              Bw2)
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -6 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+ (* -12 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* 5 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx1)
             (*
              (+
               (* -1 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -6 Ax2 (expt Ay1 2))
             (* 7 Ax1 Ay1 Ay2))
            Bw1 Bw2)
           (* 6 Aw2 (expt Ay1 2) Bw2 Bx1)
           (*
            (+
             (* -6 Aw2 (expt Ay1 2))
             (* -2 Aw1 Ay1 Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -7 Aw1 Ax1 Ay2))
              Bw2)
             (*
              (+ (* 2 Aw1 Aw2 Ay1)
		 (* 6 (expt Aw1 2) Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (*
		(+ (* 7 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (* -6 (expt Aw1 2) Ay2 Bx1)
             (*
              (+ (* -7 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              By1))
            By2))
          Cx1))
	Cx2)
       (*
	(+
	 (* Ax1 Ay1 (expt Bw2 2) Bx1
	    Bx2)
	 (*
          (+ (* -1 Ax1 Ay1 Bw1 Bw2)
	     (* -1 Aw1 Ay1 Bw2 Bx1))
          (expt Bx2 2))
	 (* Aw1 Ay1 Bw1 (expt Bx2 3))
	 (*
          (+
           (* -3 (expt Ax1 2)
	      (expt Bw2 2) Bx2)
           (* 6 Aw1 Ax1 Bw2 (expt Bx2 2))
           (* -3 (expt Aw1 2)
	      (expt Bx2 3)))
          By1)
	 (*
          (+
           (* 2 (expt Ax1 2)
	      (expt Bw2 2) Bx1)
           (*
            (+
             (* (expt Ax1 2) Bw1 Bw2)
             (* -5 Aw1 Ax1 Bw2 Bx1))
            Bx2)
           (*
            (+ (* -1 Aw1 Ax1 Bw1)
	       (* 3 (expt Aw1 2) Bx1))
            (expt Bx2 2)))
          By2)
	 (*
          (+
           (*
            (+ (* 2 Ax1 Ax2 Ay1)
	       (* 4 (expt Ax1 2) Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* -2 Ax1 Ax2 Ay1)
		 (* (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* -5 Aw1 Ax1 Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (* -6 (expt Ax1 2) Ax2 Bw2)
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 12 Aw1 Ax1 Ax2))
              Bx2))
            By1)
           (*
            (+
             (* (expt Ax1 2) Ax2 Bw1)
             (*
              (+
               (* 4 Aw2 (expt Ax1 2))
               (* -5 Aw1 Ax1 Ax2))
              Bx1))
            By2))
          Cw2)
	 (*
          (+
           (*
            (+ (* -2 Ax1 Ax2 Ay1)
	       (* (expt Ax1 2) Ay2))
            Bw1 Bw2)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1)
             (* -5 Aw1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 6 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* -2 Aw1 Aw2 Ay1)
		 (* 6 (expt Aw1 2) Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 12 Aw1 Ax1 Ax2))
              Bw2)
             (*
              (+ (* 12 Aw1 Aw2 Ax1)
		 (* -18 (expt Aw1 2) Ax2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (* Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* -5 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Bx1))
            By2))
          Cx2))
	Cy1)
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1)
	     (* 4 Ax1 Ay2))
          Bw1 Bw2 (expt Bx1 2))
	 (*
          (+ (* 4 Aw2 Ay1)
	     (* -4 Aw1 Ay2))
          Bw2 (expt Bx1 3))
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
	       (* -4 Ax1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* 4 Aw1 Ay2))
            Bw1 (expt Bx1 2)))
          Bx2)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (* 4 Ax1 Ax2 (expt Bw1 2))
             (* -8 Aw1 Ax2 Bw1 Bx1)
             (* 4 Aw1 Aw2 (expt Bx1 2)))
            Bx2))
          By1)
	 (*
          (+
           (* -4 Ax1 Ax2 (expt Bw1 2)
	      Bx1)
           (*
            (+ (* 4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            Bw1 (expt Bx1 2))
           (* -4 Aw1 Aw2 (expt Bx1 3)))
          By2)
	 (*
          (+
           (*
            (+ (* 5 Ax1 Ax2 Ay1)
	       (* -4 (expt Ax1 2) Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* -12 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* 5 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (* -1 (expt Ax1 2) Ax2 Bw2)
             (*
              (+
               (* -1 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Bx2))
            By1)
           (*
            (+
             (* 6 (expt Ax1 2) Ax2 Bw1)
             (*
              (+
               (* -4 Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Bx1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* 7 Ax1 Ax2 Ay1)
	       (* -8 (expt Ax1 2) Ay2))
            Bw1 Bw2)
           (*
            (+ (* -12 Aw2 Ax1 Ay1)
	       (* 12 Aw1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (*
		(+ (* 7 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (* -6 (expt Aw1 2) Ay2 Bx1))
            Bx2)
           (*
            (+
             (*
              (+
               (* 8 Aw2 (expt Ax1 2))
               (* -7 Aw1 Ax1 Ax2))
              Bw2)
             (*
              (+ (* -7 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (* -8 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* 12 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              Bx1))
            By2))
          Cx1)
	 (*
          (+
           (* (expt Ax1 2) Ax2 Bw1 Bw2)
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -5 Aw1 Ax1 Ax2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* -5 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Bx1))
            Bx2))
          Cy1))
	Cy2))
      Dw1)
     (*
      (+
       (* 3 Ax1 (expt Ay1 2) Bw2
	  (expt Bx2 2))
       (* -3 Aw1 (expt Ay1 2)
	  (expt Bx2 3))
       (*
	(+
	 (* -6 (expt Ax1 2) Ay1 Bw2 Bx2)
	 (* 6 Aw1 Ax1 Ay1 (expt Bx2 2)))
	By2)
       (*
	(+ (* 3 (expt Ax1 3) Bw2)
	   (* -3 Aw1 (expt Ax1 2) Bx2))
	(expt By2 2))
       (*
	(+
	 (*
          (+
           (* 6 Ax1 Ax2 (expt Ay1 2))
           (* -6 (expt Ax1 2) Ay1 Ay2))
          Bx2)
	 (*
          (+
           (* -6 (expt Ax1 2) Ax2 Ay1)
           (* 6 (expt Ax1 3) Ay2))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+
           (* 6 Ax1 Ax2 (expt Ay1 2))
           (* -6 (expt Ax1 2) Ay1 Ay2))
          Bw2)
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
	       (* -18 Aw1 Ax2))
            (expt Ay1 2))
           (* 12 Aw1 Ax1 Ay1 Ay2))
          Bx2)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 12 Aw1 Ax1 Ax2))
            Ay1)
           (* -6 Aw1 (expt Ax1 2) Ay2))
          By2))
	Cx2)
       (*
	(+
	 (*
          (+
           (* -6 (expt Ax1 2) Ax2 Ay1)
           (* 6 (expt Ax1 3) Ay2))
          Bw2)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 12 Aw1 Ax1 Ax2))
            Ay1)
           (* -6 Aw1 (expt Ax1 2) Ay2))
          Bx2)
	 (*
          (+ (* 6 Aw2 (expt Ax1 3))
	     (* -6 Aw1 (expt Ax1 2) Ax2))
          By2))
	Cy2))
      (expt Dw1 2))
     (*
      (+
       (*
	(+
	 (* 2 Ay1 (expt Bw2 3)
	    (expt Bx1 2))
	 (* -4 Ay1 Bw1 (expt Bw2 2) Bx1
	    Bx2)
	 (* 2 Ay1 (expt Bw1 2) Bw2
	    (expt Bx2 2)))
	By1)
       (*
	(+
	 (* -2 Ax1 (expt Bw2 3) Bx1)
	 (*
          (+
           (* 2 Ax1 Bw1 (expt Bw2 2))
           (* 2 Aw1 (expt Bw2 2) Bx1))
          Bx2)
	 (* -2 Aw1 Bw1 Bw2 (expt Bx2 2)))
	(expt By1 2))
       (*
	(+
	 (* -2 Ay1 Bw1 (expt Bw2 2)
	    (expt Bx1 2))
	 (* 4 Ay1 (expt Bw1 2) Bw2 Bx1
	    Bx2)
	 (* -2 Ay1 (expt Bw1 3)
	    (expt Bx2 2))
	 (*
          (+
           (* 4 Ax1 Bw1 (expt Bw2 2) Bx1)
           (* -2 Aw1 (expt Bw2 2)
	      (expt Bx1 2))
           (* -4 Ax1 (expt Bw1 2) Bw2
	      Bx2)
           (* 2 Aw1 (expt Bw1 2)
	      (expt Bx2 2)))
          By1))
	By2)
       (*
	(+
	 (* -2 Ax1 (expt Bw1 2) Bw2 Bx1)
	 (* 2 Aw1 Bw1 Bw2 (expt Bx1 2))
	 (*
          (+ (* 2 Ax1 (expt Bw1 3))
	     (* -2 Aw1 (expt Bw1 2) Bx1))
          Bx2))
	(expt By2 2))
       (*
	(+
	 (* 3 (expt Ay1 2)
	    (expt Bw2 2) Bx1 Bx2)
	 (* -3 (expt Ay1 2) Bw1 Bw2
	    (expt Bx2 2))
	 (*
          (+
           (* -1 Ax1 Ay1 (expt Bw2 2)
	      Bx2)
           (* Aw1 Ay1 Bw2 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* Ax1 Ay1 (expt Bw2 2) Bx1)
           (* -7 Aw1 Ay1 Bw2 Bx1 Bx2)
           (* 6 Aw1 Ay1 Bw1 (expt Bx2 2))
           (*
            (+
             (* -3 (expt Ax1 2)
		(expt Bw2 2))
             (* 7 Aw1 Ax1 Bw2 Bx2)
             (* -4 (expt Aw1 2)
		(expt Bx2 2)))
            By1))
          By2)
	 (*
          (+
           (* 3 (expt Ax1 2) Bw1 Bw2)
           (* -1 Aw1 Ax1 Bw2 Bx1)
           (*
            (+ (* -6 Aw1 Ax1 Bw1)
	       (* 4 (expt Aw1 2) Bx1))
            Bx2))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* -4 Ay1 Ay2 Bw1 Bw2
	    (expt Bx1 2))
	 (* 4 Ay1 Ay2 (expt Bw1 2) Bx1
	    Bx2)
	 (*
          (+
           (*
            (+ (* -8 Ax2 Ay1)
	       (* 8 Ax1 Ay2))
            Bw1 Bw2 Bx1)
           (*
            (+ (* 12 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              (expt Bw1 2))
             (* -8 Aw2 Ay1 Bw1 Bx1))
            Bx2))
          By1)
	 (*
          (+ (* 4 Ax1 Ax2 Bw1 Bw2)
	     (*
	      (+ (* -12 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
	      Bw2 Bx1)
	     (*
	      (+
	       (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Bw1)
	       (* 4 Aw1 Aw2 Bx1))
	      Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
	       (* -4 Ax1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
	       (* 4 Aw1 Ay2))
            Bw1 (expt Bx1 2))
           (*
            (+
             (* -4 Ax1 Ax2 (expt Bw1 2))
             (* 8 Aw2 Ax1 Bw1 Bx1)
             (* -4 Aw1 Aw2 (expt Bx1 2)))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* 6 Ax2 (expt Ay1 2))
             (* 2 Ax1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (* -6 Ax2 (expt Ay1 2) Bw1)
             (*
              (+
               (* 6 Aw2 (expt Ay1 2))
               (* -7 Aw1 Ay1 Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* -2 Ax1 Ax2 Ay1)
		 (* -6 (expt Ax1 2) Ay2))
              Bw2)
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* 7 Aw1 Ax1 Ay2))
              Bx2))
            By1)
           (*
            (+
             (* 6 (expt Ax1 2) Ay2 Bw1)
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -7 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx1)
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 7 Aw1 Ax1 Ax2))
              By1))
            By2))
          Cw1))
	Cw2)
       (*
	(+
	 (* -3 (expt Ay1 2)
	    (expt Bw2 3) Bx1)
	 (* 3 (expt Ay1 2) Bw1
	    (expt Bw2 2) Bx2)
	 (*
          (+
           (* Ax1 Ay1 (expt Bw2 3))
           (* -1 Aw1 Ay1 (expt Bw2 2)
	      Bx2))
          By1)
	 (*
          (+
           (* -1 Ax1 Ay1 Bw1
	      (expt Bw2 2))
           (* 6 Aw1 Ay1 (expt Bw2 2) Bx1)
           (* -5 Aw1 Ay1 Bw1 Bw2 Bx2)
           (*
            (+
             (* -1 Aw1 Ax1 (expt Bw2 2))
             (* (expt Aw1 2) Bw2 Bx2))
            By1))
          By2)
	 (*
          (+ (* Aw1 Ax1 Bw1 Bw2)
	     (* -3 (expt Aw1 2) Bw2 Bx1)
	     (* 2 (expt Aw1 2) Bw1 Bx2))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* 6 Ax2 (expt Ay1 2))
             (* -2 Ax1 Ay1 Ay2))
            Bw1 Bw2)
           (*
            (+
             (* -18 Aw2 (expt Ay1 2))
             (* 12 Aw1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (* 6 Aw2 (expt Ay1 2))
             (* -5 Aw1 Ay1 Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+
               (*
		(+ (* 6 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bw2)
             (*
              (+ (* -2 Aw1 Aw2 Ay1)
		 (* (expt Aw1 2) Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* -5 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 12 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              Bx1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* (expt Aw1 2) Ax2))
              By1))
            By2))
          Cw2))
	Cx1)
       (*
	(+
	 (* 4 Ay1 Ay2 (expt Bw1 2) Bw2
	    Bx1)
	 (* -4 Ay1 Ay2 (expt Bw1 3) Bx2)
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
	       (* -4 Ax1 Ay2))
            (expt Bw1 2) Bw2)
           (* -8 Aw2 Ay1 Bw1 Bw2 Bx1)
           (*
            (+ (* 4 Aw2 Ay1)
	       (* 4 Aw1 Ay2))
            (expt Bw1 2) Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1)
	       (* -4 Aw1 Ax2))
            Bw1 Bw2)
           (* 4 Aw1 Aw2 Bw2 Bx1)
           (* -4 Aw1 Aw2 Bw1 Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            (expt Bw1 3))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            (expt Bw1 2) By1))
          By2)
	 (*
          (+
           (* -6 Ax2 (expt Ay1 2) Bw1
	      Bw2)
           (*
            (+
             (* 6 Aw2 (expt Ay1 2))
             (* -7 Aw1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (* -6 Aw2 (expt Ay1 2))
             (* 12 Aw1 Ay1 Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* 7 Aw1 Ax1 Ay2))
              Bw2)
             (*
              (+ (* 2 Aw1 Aw2 Ay1)
		 (* -8 (expt Aw1 2) Ay2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 12 Aw1 Ax2 Ay1)
		 (* -12 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* -7 Aw1 Aw2 Ay1)
		 (* 8 (expt Aw1 2) Ay2))
              Bx1)
             (*
              (+ (* 7 Aw1 Aw2 Ax1)
		 (* -8 (expt Aw1 2) Ax2))
              By1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* 6 Aw2 (expt Ay1 2))
             (* -5 Aw1 Ay1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* -2 Aw1 Aw2 Ay1)
	       (* (expt Aw1 2) Ay2))
            Bw2 By1)
           (*
            (+
             (*
              (+ (* -5 Aw1 Aw2 Ay1)
		 (* 4 (expt Aw1 2) Ay2))
              Bw1)
             (* (expt Aw1 2) Aw2 By1))
            By2))
          Cx1))
	Cx2)
       (*
	(+
	 (* -1 Ax1 Ay1 (expt Bw2 3) Bx1)
	 (*
          (+
           (* Ax1 Ay1 Bw1 (expt Bw2 2))
           (* Aw1 Ay1 (expt Bw2 2) Bx1))
          Bx2)
	 (* -1 Aw1 Ay1 Bw1 Bw2
	    (expt Bx2 2))
	 (*
          (+
           (* 3 (expt Ax1 2)
	      (expt Bw2 3))
           (* -6 Aw1 Ax1 (expt Bw2 2)
	      Bx2)
           (* 3 (expt Aw1 2) Bw2
	      (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -3 (expt Ax1 2) Bw1
	      (expt Bw2 2))
           (* Aw1 Ax1 (expt Bw2 2) Bx1)
           (*
            (+ (* 5 Aw1 Ax1 Bw1 Bw2)
	       (* -1 (expt Aw1 2) Bw2 Bx1))
            Bx2)
           (* -2 (expt Aw1 2) Bw1
	      (expt Bx2 2)))
          By2)
	 (*
          (+
           (*
            (+ (* 2 Ax1 Ax2 Ay1)
	       (* -6 (expt Ax1 2) Ay2))
            Bw1 Bw2)
           (*
            (+
             (*
              (+ (* -6 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1)
             (* 2 Aw1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 5 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 2 Aw1 Aw2 Ay1)
		 (* -1 (expt Aw1 2) Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+
               (* 18 Aw2 (expt Ax1 2))
               (* -12 Aw1 Ax1 Ax2))
              Bw2)
             (*
              (+ (* -12 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 5 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* -1 (expt Aw1 2) Ax2))
              Bx1))
            By2))
          Cw2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1)
             (* 5 Aw1 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 2 Aw1 Aw2 Ay1)
	       (* -1 (expt Aw1 2) Ay2))
            Bw2 Bx1)
           (*
            (+ (* -2 Aw1 Aw2 Ay1)
	       (* -4 (expt Aw1 2) Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+ (* -12 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Bw2)
             (* 6 (expt Aw1 2) Aw2 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 5 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              Bw1)
             (* -1 (expt Aw1 2) Aw2 Bx1))
            By2))
          Cx2))
	Cy1)
       (*
	(+
	 (*
          (+ (* 4 Ax2 Ay1)
	     (* -4 Ax1 Ay2))
          (expt Bw1 2) Bw2 Bx1)
	 (*
          (+ (* -4 Aw2 Ay1)
	     (* 4 Aw1 Ay2))
          Bw1 Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
	       (* 4 Ax1 Ay2))
            (expt Bw1 3))
           (*
            (+ (* 4 Aw2 Ay1)
	       (* -4 Aw1 Ay2))
            (expt Bw1 2) Bx1))
          Bx2)
	 (*
          (+
           (* -4 Ax1 Ax2 (expt Bw1 2)
	      Bw2)
           (* 8 Aw2 Ax1 Bw1 Bw2 Bx1)
           (* -4 Aw1 Aw2 Bw2
	      (expt Bx1 2))
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            (expt Bw1 2) Bx2))
          By1)
	 (*
          (+
           (* 4 Ax1 Ax2 (expt Bw1 3))
           (*
            (+ (* -4 Aw2 Ax1)
	       (* -4 Aw1 Ax2))
            (expt Bw1 2) Bx1)
           (* 4 Aw1 Aw2 Bw1
	      (expt Bx1 2)))
          By2)
	 (*
          (+
           (* 6 (expt Ax1 2) Ay2 Bw1 Bw2)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -7 Aw1 Ax2))
              Ay1)
             (* -2 Aw1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* 12 Aw1 Ax2 Ay1)
		 (* -12 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* -7 Aw1 Aw2 Ay1)
		 (* 8 (expt Aw1 2) Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 7 Aw1 Ax1 Ax2))
              Bw2)
             (*
              (+ (* 7 Aw1 Aw2 Ax1)
		 (* -8 (expt Aw1 2) Ax2))
              Bx2))
            By1)
           (*
            (+
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* -12 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* 8 (expt Aw1 2) Ax2))
              Bx1))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1)
		 (* -5 Aw1 Ax2))
              Ay1)
             (* 2 Aw1 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 12 Aw1 Aw2 Ay1)
	       (* -6 (expt Aw1 2) Ay2))
            Bw2 Bx1)
           (*
            (+ (* -5 Aw1 Aw2 Ay1)
	       (* 4 (expt Aw1 2) Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* (expt Aw1 2) Ax2))
              Bw2)
             (* (expt Aw1 2) Aw2 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* 4 (expt Aw1 2) Ax2))
              Bw1)
             (* -6 (expt Aw1 2) Aw2 Bx1))
            By2))
          Cx1)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 5 Aw1 Ax1 Ax2))
            Bw1 Bw2)
           (*
            (+ (* 2 Aw1 Aw2 Ax1)
	       (* -1 (expt Aw1 2) Ax2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* 5 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              Bw1)
             (* -1 (expt Aw1 2) Aw2 Bx1))
            Bx2))
          Cy1))
	Cy2)
       (*
	(+
	 (* -6 Ax1 (expt Ay1 2)
	    (expt Bw2 2) Bx2)
	 (* 6 Aw1 (expt Ay1 2) Bw2
	    (expt Bx2 2))
	 (*
          (+
           (* 6 (expt Ax1 2) Ay1
	      (expt Bw2 2))
           (* -6 (expt Aw1 2) Ay1
	      (expt Bx2 2)))
          By2)
	 (*
          (+
           (* -6 Aw1 (expt Ax1 2) Bw2)
           (* 6 (expt Aw1 2) Ax1 Bx2))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* -12 Ax1 Ax2 (expt Ay1 2))
             (* 12 (expt Ax1 2) Ay1 Ay2))
            Bw2)
           (*
            (+ (* -12 Aw2 Ax1)
	       (* 12 Aw1 Ax2))
            (expt Ay1 2) Bx2)
           (*
            (+
             (* 12 Aw2 (expt Ax1 2) Ay1)
             (* -12 Aw1 (expt Ax1 2) Ay2))
            By2))
          Cw2)
	 (*
          (+
           (*
            (+ (* -12 Aw2 Ax1)
	       (* 12 Aw1 Ax2))
            (expt Ay1 2) Bw2)
           (*
            (+
             (* 12 Aw1 Aw2 (expt Ay1 2))
             (* -12 (expt Aw1 2) Ay1 Ay2))
            Bx2)
           (*
            (+
             (* -12 (expt Aw1 2) Ax2 Ay1)
             (* 12 (expt Aw1 2) Ax1 Ay2))
            By2))
          Cx2)
	 (*
          (+
           (*
            (+
             (* 12 Aw2 (expt Ax1 2) Ay1)
             (* -12 Aw1 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (* -12 (expt Aw1 2) Ax2 Ay1)
             (* 12 (expt Aw1 2) Ax1 Ay2))
            Bx2)
           (*
            (+
             (* -12 Aw1 Aw2 (expt Ax1 2))
             (* 12 (expt Aw1 2) Ax1 Ax2))
            By2))
          Cy2))
	Dw1))
      Dx1)
     (*
      (+
       (* 3 Ax1 (expt Ay1 2)
	  (expt Bw2 3))
       (* -3 Aw1 (expt Ay1 2)
	  (expt Bw2 2) Bx2)
       (*
	(+
	 (* -6 Aw1 Ax1 Ay1 (expt Bw2 2))
	 (* 6 (expt Aw1 2) Ay1 Bw2 Bx2))
	By2)
       (*
	(+
	 (* 3 (expt Aw1 2) Ax1 Bw2)
	 (* -3 (expt Aw1 3) Bx2))
	(expt By2 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* 18 Aw2 Ax1)
	       (* -6 Aw1 Ax2))
            (expt Ay1 2))
           (* -12 Aw1 Ax1 Ay1 Ay2))
          Bw2)
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ay1 2))
           (* 6 (expt Aw1 2) Ay1 Ay2))
          Bx2)
	 (*
          (+
           (*
            (+ (* -12 Aw1 Aw2 Ax1)
	       (* 6 (expt Aw1 2) Ax2))
            Ay1)
           (* 6 (expt Aw1 2) Ax1 Ay2))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ay1 2))
           (* 6 (expt Aw1 2) Ay1 Ay2))
          Bw2)
	 (*
          (+
           (* 6 (expt Aw1 2) Aw2 Ay1)
           (* -6 (expt Aw1 3) Ay2))
          By2))
	Cx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -12 Aw1 Aw2 Ax1)
	       (* 6 (expt Aw1 2) Ax2))
            Ay1)
           (* 6 (expt Aw1 2) Ax1 Ay2))
          Bw2)
	 (*
          (+
           (* 6 (expt Aw1 2) Aw2 Ay1)
           (* -6 (expt Aw1 3) Ay2))
          Bx2)
	 (*
          (+
           (* 6 (expt Aw1 2) Aw2 Ax1)
           (* -6 (expt Aw1 3) Ax2))
          By2))
	Cy2))
      (expt Dx1 2)))
    Dy1)
   (*
    (+
     (* -1 Ay1 (expt Bw2 3)
	(expt Bx1 3))
     (* 3 Ay1 Bw1 (expt Bw2 2)
	(expt Bx1 2) Bx2)
     (* -3 Ay1 (expt Bw1 2) Bw2 Bx1
	(expt Bx2 2))
     (* Ay1 (expt Bw1 3)
	(expt Bx2 3))
     (*
      (+
       (* Ax1 (expt Bw2 3)
	  (expt Bx1 2))
       (*
	(+
	 (* -2 Ax1 Bw1 (expt Bw2 2) Bx1)
	 (* -1 Aw1 (expt Bw2 2)
	    (expt Bx1 2)))
	Bx2)
       (*
	(+
	 (* Ax1 (expt Bw1 2) Bw2)
	 (* 2 Aw1 Bw1 Bw2 Bx1))
	(expt Bx2 2))
       (* -1 Aw1 (expt Bw1 2)
	  (expt Bx2 3)))
      By1)
     (*
      (+
       (* -1 Ax1 Bw1 (expt Bw2 2)
	  (expt Bx1 2))
       (* Aw1 (expt Bw2 2)
	  (expt Bx1 3))
       (*
	(+
	 (* 2 Ax1 (expt Bw1 2) Bw2 Bx1)
	 (* -2 Aw1 Bw1 Bw2 (expt Bx1 2)))
	Bx2)
       (*
	(+ (* -1 Ax1 (expt Bw1 3))
	   (* Aw1 (expt Bw1 2) Bx1))
	(expt Bx2 2)))
      By2)
     (*
      (+
       (* -3 Ax1 Ay1 (expt Bw2 2) Bx1
	  Bx2)
       (*
	(+ (* 3 Ax1 Ay1 Bw1 Bw2)
	   (* 3 Aw1 Ay1 Bw2 Bx1))
	(expt Bx2 2))
       (* -3 Aw1 Ay1 Bw1 (expt Bx2 3))
       (*
	(+
	 (* 2 (expt Ax1 2)
	    (expt Bw2 2) Bx2)
	 (* -4 Aw1 Ax1 Bw2 (expt Bx2 2))
	 (* 2 (expt Aw1 2)
	    (expt Bx2 3)))
	By1)
       (*
	(+
	 (* (expt Ax1 2)
	    (expt Bw2 2) Bx1)
	 (*
          (+
           (* -3 (expt Ax1 2) Bw1 Bw2)
           (* Aw1 Ax1 Bw2 Bx1))
          Bx2)
	 (*
          (+ (* 3 Aw1 Ax1 Bw1)
	     (* -2 (expt Aw1 2) Bx1))
          (expt Bx2 2)))
	By2))
      Cw1)
     (*
      (+
       (*
	(+ (* 6 Ax2 Ay1)
	   (* -2 Ax1 Ay2))
	Bw1 Bw2 (expt Bx1 2))
       (*
	(+ (* -6 Aw2 Ay1)
	   (* 2 Aw1 Ay2))
	Bw2 (expt Bx1 3))
       (*
	(+
	 (*
          (+ (* -6 Ax2 Ay1)
	     (* 2 Ax1 Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* 6 Aw2 Ay1)
	     (* -2 Aw1 Ay2))
          Bw1 (expt Bx1 2)))
	Bx2)
       (*
	(+
	 (* -4 Ax1 Ax2 Bw1 Bw2 Bx1)
	 (*
          (+ (* 6 Aw2 Ax1)
	     (* -2 Aw1 Ax2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (* 2 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -4 Aw2 Ax1)
	       (* 4 Aw1 Ax2))
            Bw1 Bx1)
           (* -2 Aw1 Aw2 (expt Bx1 2)))
          Bx2))
	By1)
       (*
	(+
	 (* 2 Ax1 Ax2 (expt Bw1 2) Bx1)
	 (*
          (+ (* -2 Aw2 Ax1)
	     (* -2 Aw1 Ax2))
          Bw1 (expt Bx1 2))
	 (* 2 Aw1 Aw2 (expt Bx1 3)))
	By2)
       (*
	(+
	 (*
          (+ (* -6 Ax1 Ax2 Ay1)
	     (* 2 (expt Ax1 2) Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* 6 Ax1 Ax2 Ay1)
	       (* -3 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -6 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
              Ay1)
             (* Aw1 Ax1 Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (* 4 (expt Ax1 2) Ax2 Bw2)
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -8 Aw1 Ax1 Ax2))
            Bx2))
          By1)
	 (*
          (+
           (* -3 (expt Ax1 2) Ax2 Bw1)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            Bx1))
          By2))
	Cw1))
      Cw2)
     (*
      (+
       (* 3 Ax1 Ay1 (expt Bw2 3) Bx1)
       (*
	(+
	 (* -3 Ax1 Ay1 Bw1 (expt Bw2 2))
	 (* -3 Aw1 Ay1 (expt Bw2 2) Bx1))
	Bx2)
       (* 3 Aw1 Ay1 Bw1 Bw2
	  (expt Bx2 2))
       (*
	(+
	 (* -2 (expt Ax1 2)
	    (expt Bw2 3))
	 (* 4 Aw1 Ax1 (expt Bw2 2) Bx2)
	 (* -2 (expt Aw1 2) Bw2
	    (expt Bx2 2)))
	By1)
       (*
	(+
	 (* 2 (expt Ax1 2) Bw1
	    (expt Bw2 2))
	 (* -3 Aw1 Ax1 (expt Bw2 2) Bx1)
	 (*
          (+ (* -1 Aw1 Ax1 Bw1 Bw2)
	     (* 3 (expt Aw1 2) Bw2 Bx1))
          Bx2)
	 (* -1 (expt Aw1 2) Bw1
	    (expt Bx2 2)))
	By2)
       (*
	(+
	 (*
          (+ (* -6 Ax1 Ax2 Ay1)
	     (* 4 (expt Ax1 2) Ay2))
          Bw1 Bw2)
	 (*
          (+
           (*
            (+ (* 18 Aw2 Ax1)
	       (* -6 Aw1 Ax2))
            Ay1)
           (* -6 Aw1 Ax1 Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -6 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
              Ay1)
             (* -1 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -6 Aw1 Aw2 Ay1)
	       (* 3 (expt Aw1 2) Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (* -12 Aw2 (expt Ax1 2))
             (* 8 Aw1 Ax1 Ax2))
            Bw2)
           (*
            (+ (* 8 Aw1 Aw2 Ax1)
	       (* -4 (expt Aw1 2) Ax2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
	       (* 3 (expt Aw1 2) Ax2))
            Bx1))
          By2))
	Cw2))
      Cx1)
     (*
      (+
       (*
	(+ (* -6 Ax2 Ay1)
	   (* 2 Ax1 Ay2))
	(expt Bw1 2) Bw2 Bx1)
       (*
	(+ (* 6 Aw2 Ay1)
	   (* -2 Aw1 Ay2))
	Bw1 Bw2 (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* 6 Ax2 Ay1)
	     (* -2 Ax1 Ay2))
          (expt Bw1 3))
	 (*
          (+ (* -6 Aw2 Ay1)
	     (* 2 Aw1 Ay2))
          (expt Bw1 2) Bx1))
	Bx2)
       (*
	(+
	 (* 2 Ax1 Ax2 (expt Bw1 2) Bw2)
	 (*
          (+ (* -4 Aw2 Ax1)
	     (* 4 Aw1 Ax2))
          Bw1 Bw2 Bx1)
	 (* -2 Aw1 Aw2 Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1)
	       (* -6 Aw1 Ax2))
            (expt Bw1 2))
           (* 4 Aw1 Aw2 Bw1 Bx1))
          Bx2))
	By1)
       (*
	(+
	 (* -2 Ax1 Ax2 (expt Bw1 3))
	 (*
          (+ (* 2 Aw2 Ax1)
	     (* 2 Aw1 Ax2))
          (expt Bw1 2) Bx1)
	 (* -2 Aw1 Aw2 Bw1 (expt Bx1 2)))
	By2)
       (*
	(+
	 (*
          (+ (* 6 Ax1 Ax2 Ay1)
	     (* -3 (expt Ax1 2) Ay2))
          Bw1 Bw2)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
	       (* 6 Aw1 Ax2))
            Ay1)
           (* Aw1 Ax1 Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 6 Aw2 Ax1)
		 (* -18 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* 6 Aw1 Aw2 Ay1)
	       (* -4 (expt Aw1 2) Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -8 Aw1 Ax1 Ax2))
            Bw2)
           (*
            (+ (* -8 Aw1 Aw2 Ax1)
	       (* 12 (expt Aw1 2) Ax2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* -3 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* Aw1 Aw2 Ax1)
	       (* -4 (expt Aw1 2) Ax2))
            Bx1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
	       (* 6 Aw1 Ax2))
            Ay1)
           (* -1 Aw1 Ax1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -6 Aw1 Aw2 Ay1)
	     (* 3 (expt Aw1 2) Ay2))
          Bw2 Bx1)
	 (*
          (+ (* 6 Aw1 Aw2 Ay1)
	     (* -2 (expt Aw1 2) Ay2))
          Bw1 Bx2)
	 (*
          (+
           (*
            (+ (* 8 Aw1 Aw2 Ax1)
	       (* -4 (expt Aw1 2) Ax2))
            Bw2)
           (* -4 (expt Aw1 2) Aw2 Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            Bw1)
           (* 3 (expt Aw1 2) Aw2 Bx1))
          By2))
	Cx1))
      Cx2)
     (*
      (+
       (* -1 (expt Ax1 2)
	  (expt Bw2 3) Bx1)
       (*
	(+
	 (* (expt Ax1 2) Bw1
	    (expt Bw2 2))
	 (* 2 Aw1 Ax1 (expt Bw2 2) Bx1))
	Bx2)
       (*
	(+ (* -2 Aw1 Ax1 Bw1 Bw2)
	   (* -1 (expt Aw1 2) Bw2 Bx1))
	(expt Bx2 2))
       (* (expt Aw1 2) Bw1
	  (expt Bx2 3))
       (*
	(+
	 (* 2 (expt Ax1 2) Ax2 Bw1 Bw2)
	 (*
          (+ (* -6 Aw2 (expt Ax1 2))
	     (* 4 Aw1 Ax1 Ax2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            Bx1))
          Bx2))
	Cw2)
       (*
	(+
	 (*
          (+ (* 2 Aw2 (expt Ax1 2))
	     (* -4 Aw1 Ax1 Ax2))
          Bw1 Bw2)
	 (*
          (+ (* 4 Aw1 Aw2 Ax1)
	     (* -2 (expt Aw1 2) Ax2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
	       (* 6 (expt Aw1 2) Ax2))
            Bw1)
           (* -2 (expt Aw1 2) Aw2 Bx1))
          Bx2))
	Cx2))
      Cy1)
     (*
      (+
       (* 2 Ax1 Ax2 (expt Bw1 2) Bw2
	  Bx1)
       (*
	(+ (* -2 Aw2 Ax1)
	   (* -2 Aw1 Ax2))
	Bw1 Bw2 (expt Bx1 2))
       (* 2 Aw1 Aw2 Bw2 (expt Bx1 3))
       (*
	(+
	 (* -2 Ax1 Ax2 (expt Bw1 3))
	 (*
          (+ (* 2 Aw2 Ax1)
	     (* 2 Aw1 Ax2))
          (expt Bw1 2) Bx1)
	 (* -2 Aw1 Aw2 Bw1 (expt Bx1 2)))
	Bx2)
       (*
	(+
	 (* -3 (expt Ax1 2) Ax2 Bw1 Bw2)
	 (*
          (+ (* 2 Aw2 (expt Ax1 2))
	     (* Aw1 Ax1 Ax2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* -3 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* Aw1 Aw2 Ax1)
	       (* -4 (expt Aw1 2) Ax2))
            Bx1))
          Bx2))
	Cw1)
       (*
	(+
	 (*
          (+ (* 4 Aw2 (expt Ax1 2))
	     (* -1 Aw1 Ax1 Ax2))
          Bw1 Bw2)
	 (*
          (+ (* -6 Aw1 Aw2 Ax1)
	     (* 3 (expt Aw1 2) Ax2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
	       (* -2 (expt Aw1 2) Ax2))
            Bw1)
           (* 3 (expt Aw1 2) Aw2 Bx1))
          Bx2))
	Cx1))
      Cy2)
     (*
      (+
       (* 3 (expt Ax1 2) Ay1
	  (expt Bw2 2) Bx2)
       (* -6 Aw1 Ax1 Ay1 Bw2
	  (expt Bx2 2))
       (* 3 (expt Aw1 2) Ay1
	  (expt Bx2 3))
       (*
	(+
	 (* -3 (expt Ax1 3)
	    (expt Bw2 2))
	 (* 6 Aw1 (expt Ax1 2) Bw2 Bx2)
	 (* -3 (expt Aw1 2) Ax1
	    (expt Bx2 2)))
	By2)
       (*
	(+
	 (*
          (+
           (* 6 (expt Ax1 2) Ax2 Ay1)
           (* -6 (expt Ax1 3) Ay2))
          Bw2)
	 (*
          (+
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -12 Aw1 Ax1 Ax2))
            Ay1)
           (* 6 Aw1 (expt Ax1 2) Ay2))
          Bx2)
	 (*
          (+ (* -6 Aw2 (expt Ax1 3))
	     (* 6 Aw1 (expt Ax1 2) Ax2))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -12 Aw1 Ax1 Ax2))
            Ay1)
           (* 6 Aw1 (expt Ax1 2) Ay2))
          Bw2)
	 (*
          (+
           (*
            (+ (* -12 Aw1 Aw2 Ax1)
	       (* 18 (expt Aw1 2) Ax2))
            Ay1)
           (* -6 (expt Aw1 2) Ax1 Ay2))
          Bx2)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          By2))
	Cx2)
       (*
	(+
	 (*
          (+ (* -6 Aw2 (expt Ax1 3))
	     (* 6 Aw1 (expt Ax1 2) Ax2))
          Bw2)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Bx2))
	Cy2))
      Dw1)
     (*
      (+
       (* -3 (expt Ax1 2) Ay1
	  (expt Bw2 3))
       (* 6 Aw1 Ax1 Ay1 (expt Bw2 2)
	  Bx2)
       (* -3 (expt Aw1 2) Ay1 Bw2
	  (expt Bx2 2))
       (*
	(+
	 (* 3 Aw1 (expt Ax1 2)
	    (expt Bw2 2))
	 (* -6 (expt Aw1 2) Ax1 Bw2 Bx2)
	 (* 3 (expt Aw1 3)
	    (expt Bx2 2)))
	By2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -18 Aw2 (expt Ax1 2))
             (* 12 Aw1 Ax1 Ax2))
            Ay1)
           (* 6 Aw1 (expt Ax1 2) Ay2))
          Bw2)
	 (*
          (+
           (*
            (+ (* 12 Aw1 Aw2 Ax1)
	       (* -6 (expt Aw1 2) Ax2))
            Ay1)
           (* -6 (expt Aw1 2) Ax1 Ay2))
          Bx2)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          By2))
	Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 12 Aw1 Aw2 Ax1)
	       (* -6 (expt Aw1 2) Ax2))
            Ay1)
           (* -6 (expt Aw1 2) Ax1 Ay2))
          Bw2)
	 (*
          (+
           (* -6 (expt Aw1 2) Aw2 Ay1)
           (* 6 (expt Aw1 3) Ay2))
          Bx2)
	 (*
          (+
           (* -6 (expt Aw1 2) Aw2 Ax1)
           (* 6 (expt Aw1 3) Ax2))
          By2))
	Cx2)
       (*
	(+
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Bw2)
	 (*
          (+
           (* -6 (expt Aw1 2) Aw2 Ax1)
           (* 6 (expt Aw1 3) Ax2))
          Bx2))
	Cy2))
      Dx1))
    (expt Dy1 2))
   (*
    (+
     (* (expt Ax1 3)
	(expt Bw2 3))
     (* -3 Aw1 (expt Ax1 2)
	(expt Bw2 2) Bx2)
     (* 3 (expt Aw1 2) Ax1 Bw2
	(expt Bx2 2))
     (* -1 (expt Aw1 3)
	(expt Bx2 3))
     (*
      (+
       (*
	(+ (* 6 Aw2 (expt Ax1 3))
	   (* -6 Aw1 (expt Ax1 2) Ax2))
	Bw2)
       (*
	(+
	 (* -6 Aw1 Aw2 (expt Ax1 2))
	 (* 6 (expt Aw1 2) Ax1 Ax2))
	Bx2))
      Cw2)
     (*
      (+
       (*
	(+
	 (* -6 Aw1 Aw2 (expt Ax1 2))
	 (* 6 (expt Aw1 2) Ax1 Ax2))
	Bw2)
       (*
	(+
	 (* 6 (expt Aw1 2) Aw2 Ax1)
	 (* -6 (expt Aw1 3) Ax2))
	Bx2))
      Cx2))
    (expt Dy1 3))))





(defun intersection-rational-power-basis-cubic/quadratic-c4
    (Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1 Ax2 Bx2 Cx2 Ay2 By2 Cy2 Aw2 Bw2 Cw2)
  (+
   (*
    (+
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1 Ay1 Ay2 Bw2 Bx1 Bx2)
           (* Ay1 Ay2 Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+ (* Ax1 Ay2 Bw2 Bx2)
             (* -1 Aw1 Ay2 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* 2 Ay1 Ay2 Bw2 (expt Bx1 2))
           (* -2 Ay1 Ay2 Bw1 Bx1 Bx2)
           (*
            (+
             (*
              (+ (* -1 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw2 Bx1)
             (*
              (+
               (*
		(+ (* 2 Ax2 Ay1)
		   (* -2 Ax1 Ay2))
		Bw1)
               (*
		(+ (* -1 Aw2 Ay1)
		   (* 4 Aw1 Ay2))
		Bx1))
              Bx2))
            By1)
           (*
            (+ (* Ax1 Ax2 Bw2)
               (*
		(+ (* Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bx2))
            (expt By1 2)))
          By2)
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
               (* 3 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* Aw2 Ay1)
               (* -3 Aw1 Ay2))
            (expt Bx1 2))
           (*
            (+ (* -1 Ax1 Ax2 Bw1)
               (*
		(+ (* -1 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Bx1))
            By1))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* -1 (expt Ay1 2) Ay2
            (expt Bx2 2))
	 (*
          (+ (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
          Bx2 By2)
	 (*
          (+ (* 2 Ax1 Ax2 Ay1)
             (* -3 (expt Ax1 2) Ay2))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (* Ay1 (expt Ay2 2)
            (expt Bx1 2))
	 (*
          (+ (* -1 Ax2 Ay1 Ay2)
             (* -1 Ax1 (expt Ay2 2)))
          Bx1 By1)
	 (* Ax1 Ax2 Ay2 (expt By1 2)))
	Cw1 Cw2))
      Cx1)
     (*
      (+
       (*
	(+
	 (* Ay1 Ay2 (expt Bw2 2) Bx1)
	 (* -1 Ay1 Ay2 Bw1 Bw2 Bx2))
	By1)
       (*
	(+
	 (* -1 Ax1 Ay2 (expt Bw2 2))
	 (* Aw1 Ay2 Bw2 Bx2))
	(expt By1 2))
       (*
	(+
	 (* -2 Ay1 Ay2 Bw1 Bw2 Bx1)
	 (* 2 Ay1 Ay2 (expt Bw1 2) Bx2)
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
               (* 4 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 2 Aw2 Ay1)
               (* -2 Aw1 Ay2))
            Bw2 Bx1)
           (*
            (+ (* -1 Aw2 Ay1)
               (* -2 Aw1 Ay2))
            Bw1 Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
               (* Aw1 Ax2))
            Bw2)
           (* Aw1 Aw2 Bx2))
          (expt By1 2)))
	By2)
       (*
	(+
	 (*
          (+ (* Ax2 Ay1)
             (* -3 Ax1 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* -1 Aw2 Ay1)
             (* 3 Aw1 Ay2))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1)
               (* -1 Aw1 Ax2))
            Bw1)
           (* -1 Aw1 Aw2 Bx1))
          By1))
	(expt By2 2))
       (*
	(+
	 (* 2 (expt Ay1 2) Ay2 Bw2 Bx2)
	 (*
          (+
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
            Bx2))
          By2)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
               (* -2 Aw1 Ax2))
            Ay1)
           (* 6 Aw1 Ax1 Ay2))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* -1 Ay1 (expt Ay2 2) Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1 Ay2)
               (* 2 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+ (* 2 Aw2 Ay1 Ay2)
               (* -1 Aw1 (expt Ay2 2)))
            Bx1))
          By1)
	 (*
          (+ (* -2 Aw2 Ax1)
             (* Aw1 Ax2))
          Ay2 (expt By1 2))
	 (*
          (+
           (* 2 Ax2 (expt Ay1 2) Ay2)
           (* -2 Ax1 Ay1 (expt Ay2 2)))
          Cw1))
	Cw2))
      (expt Cx1 2))
     (*
      (+
       (* -1 (expt Ay1 2) Ay2
	  (expt Bw2 2))
       (*
	(+ (* -2 Aw2 (expt Ay1 2))
	   (* 4 Aw1 Ay1 Ay2))
	Bw2 By2)
       (*
	(+ (* 2 Aw1 Aw2 Ay1)
	   (* -3 (expt Aw1 2) Ay2))
	(expt By2 2))
       (*
	(+
	 (* -2 Aw2 (expt Ay1 2) Ay2)
	 (* 2 Aw1 Ay1 (expt Ay2 2)))
	Cw2))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1 Ay1 (expt Ay2 2) Bw1
              Bx1)
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1 Ay2)
		 (* -1 Ax1 (expt Ay2 2)))
              Bw1)
             (*
              (+ (* -1 Aw2 Ay1 Ay2)
		 (* 2 Aw1 (expt Ay2 2)))
              Bx1))
            By1)
           (*
            (+ (* Aw2 Ax1)
               (* -2 Aw1 Ax2))
            Ay2 (expt By1 2)))
          Cw1)
	 (*
          (+
           (* -2 Ax2 (expt Ay1 2) Ay2)
           (* 2 Ax1 Ay1 (expt Ay2 2)))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (* Ay1 (expt Ay2 2)
            (expt Bw1 2))
	 (*
          (+ (* -1 Aw2 Ay1 Ay2)
             (* -1 Aw1 (expt Ay2 2)))
          Bw1 By1)
	 (* Aw1 Aw2 Ay2 (expt By1 2))
	 (*
          (+
           (* 2 Aw2 (expt Ay1 2) Ay2)
           (* -2 Aw1 Ay1 (expt Ay2 2)))
          Cw1))
	(expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+
	 (* -1 Ay1 Ay2 Bw2 (expt Bx1 2)
            Bx2)
	 (* Ay1 Ay2 Bw1 Bx1
            (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1)
               (* Ax1 Ay2))
            Bw2 Bx1 Bx2)
           (*
            (+
             (*
              (+ (* -3 Ax2 Ay1)
		 (* Ax1 Ay2))
              Bw1)
             (*
              (+ (* Aw2 Ay1)
		 (* -2 Aw1 Ay2))
              Bx1))
            (expt Bx2 2)))
          By1)
	 (*
          (+ (* -2 Ax1 Ax2 Bw2 Bx2)
             (*
              (+ (* -1 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* -1 Ax2 Ay1 Bw2
              (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              Bw1 Bx1)
             (*
              (+ (* -1 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              (expt Bx1 2)))
            Bx2)
           (*
            (+ (* Ax1 Ax2 Bw2 Bx1)
               (*
		(+ (* 2 Ax1 Ax2 Bw1)
		   (*
		    (+ (* Aw2 Ax1)
		       (* -4 Aw1 Ax2))
		    Bx1))
		Bx2))
            By1))
          By2)
	 (*
          (+ (* -1 Ax1 Ax2 Bw1 Bx1)
             (* Aw1 Ax2 (expt Bx1 2)))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (*
          (+ (* 3 Ax2 (expt Ay1 2))
             (* -2 Ax1 Ay1 Ay2))
          (expt Bx2 2))
	 (*
          (+ (* -4 Ax1 Ax2 Ay1)
             (* 2 (expt Ax1 2) Ay2))
          Bx2 By2)
	 (* (expt Ax1 2) Ax2
            (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (* -1 Ax2 Ay1 Ay2 (expt Bx1 2))
	 (*
          (+ (* (expt Ax2 2) Ay1)
             (* Ax1 Ax2 Ay2))
          Bx1 By1)
	 (* -1 Ax1 (expt Ax2 2)
            (expt By1 2)))
	Cw1 Cw2)
       (*
	(+
	 (* -1 Ay1 Ay2 (expt Bw2 2)
            (expt Bx1 2))
	 (* 3 Ay1 Ay2 Bw1 Bw2 Bx1 Bx2)
	 (* -2 Ay1 Ay2 (expt Bw1 2)
            (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
               (* Ax1 Ay2))
            (expt Bw2 2) Bx1)
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -3 Ax1 Ay2))
              Bw1 Bw2)
             (* -2 Aw2 Ay1 Bw2 Bx1))
            Bx2)
           (*
            (+ (* Aw2 Ay1)
               (* 2 Aw1 Ay2))
            Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* Ax1 Ax2 (expt Bw2 2))
           (*
            (+ (* 2 Aw2 Ax1)
               (* -2 Aw1 Ax2))
            Bw2 Bx2)
           (* -1 Aw1 Aw2 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* 3 Ax2 Ay1)
               (* -2 Ax1 Ay2))
            Bw1 Bw2 Bx1)
           (*
            (+ (* -2 Aw2 Ay1)
               (* 2 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* -4 Ax2 Ay1)
		 (* 4 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* 3 Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              Bw1 Bx1))
            Bx2)
           (*
            (+ (* -3 Ax1 Ax2 Bw1 Bw2)
               (* 2 Aw2 Ax1 Bw2 Bx1)
               (*
		(+ (* -3 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Bw1 Bx2))
            By1))
          By2)
	 (*
          (+
           (* 2 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -1 Aw2 Ax1)
               (* -2 Aw1 Ax2))
            Bw1 Bx1)
           (* Aw1 Aw2 (expt Bx1 2)))
          (expt By2 2))
	 (*
          (+
           (* -4 Ax2 (expt Ay1 2) Bw2
              Bx2)
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            (expt Bx2 2))
           (*
            (+
             (* 4 (expt Ax1 2) Ay2 Bw2)
             (*
              (+ (* 8 Aw1 Ax2 Ay1)
		 (* -8 Aw1 Ax1 Ay2))
              Bx2))
            By2)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (*
            (+ (* 3 Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+ (* -2 Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            (expt Bx1 2))
           (*
            (+
             (*
              (+
               (* (expt Ax2 2) Ay1)
               (* -3 Ax1 Ax2 Ay2))
              Bw1)
             (*
              (+ (* -2 Aw2 Ax2 Ay1)
		 (* 2 Aw2 Ax1 Ay2))
              Bx1))
            By1)
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            (expt By1 2))
           (*
            (+
             (* -2 (expt Ax2 2)
		(expt Ay1 2))
             (* 2 (expt Ax1 2)
		(expt Ay2 2)))
            Cw1))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* Ax2 (expt Ay1 2))
             (* 2 Ax1 Ay1 Ay2))
          (expt Bw2 2))
	 (*
          (+ (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
          Bw2 Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
               (* 6 (expt Aw1 2) Ay2))
            Bx2))
          By2)
	 (*
          (+ (* -2 Aw1 Aw2 Ax1)
             (* 3 (expt Aw1 2) Ax2))
          (expt By2 2))
	 (*
          (+
           (* 2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Ay1 Ay2)
           (* -2 Aw1 Ax1 (expt Ay2 2)))
          Cw2))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+ (* -1 Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            (expt Bx1 2))
           (*
            (+
             (*
              (+
               (* -3 (expt Ax2 2) Ay1)
               (* 2 Ax1 Ax2 Ay2))
              Bw1)
             (*
              (+ (* 2 Aw2 Ax2 Ay1)
		 (*
		  (+ (* Aw2 Ax1)
		     (* -4 Aw1 Ax2))
		  Ay2))
              Bx1))
            By1)
           (*
            (+ (* -2 Aw2 Ax1 Ax2)
               (* 3 Aw1 (expt Ax2 2)))
            (expt By1 2)))
          Cw1)
	 (*
          (+
           (* 3 (expt Ax2 2)
              (expt Ay1 2))
           (* -4 Ax1 Ax2 Ay1 Ay2)
           (* (expt Ax1 2)
              (expt Ay2 2)))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1 Ay2)
               (* 2 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (*
            (+ (* 3 Aw2 Ay1 Ay2)
               (* -2 Aw1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax2 Ay1)
		 (*
		  (+ (* -3 Aw2 Ax1)
		     (* 4 Aw1 Ax2))
		  Ay2))
              Bw1)
             (* -1 (expt Aw2 2) Ay1 Bx1))
            By1)
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
            (expt By1 2))
           (*
            (+
             (* -4 Aw2 Ax2 (expt Ay1 2))
             (* 8 Aw1 Ax2 Ay1 Ay2)
             (* -4 Aw1 Ax1 (expt Ay2 2)))
            Cw1))
          Cx1)
	 (*
          (+
           (* (expt Aw2 2)
              (expt Ay1 2))
           (* -4 Aw1 Aw2 Ay1 Ay2)
           (* 3 (expt Aw1 2)
              (expt Ay2 2)))
          (expt Cx1 2)))
	Cx2))
      Cy1)
     (*
      (+
       (* Ax2 Ay1 (expt Bw2 2)
	  (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1)
             (* Ax1 Ay2))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* 2 Aw2 Ay1)
             (* -1 Aw1 Ay2))
          Bw2 (expt Bx1 2)))
	Bx2)
       (*
	(+
	 (*
          (+ (* 3 Ax2 Ay1)
             (* -1 Ax1 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* -2 Aw2 Ay1)
             (* Aw1 Ay2))
          Bw1 Bx1))
	(expt Bx2 2))
       (*
	(+
	 (* -1 Ax1 Ax2 (expt Bw2 2) Bx1)
	 (*
          (+ (* 2 Ax1 Ax2 Bw1 Bw2)
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Bw2 Bx1))
          Bx2)
	 (*
          (+
           (*
            (+ (* Aw2 Ax1)
               (* -3 Aw1 Ax2))
            Bw1)
           (* Aw1 Aw2 Bx1))
          (expt Bx2 2)))
	By1)
       (*
	(+ (* Ax1 Ax2 Bw1 Bw2 Bx1)
	   (* -1 Aw1 Ax2 Bw2 (expt Bx1 2))
	   (*
            (+
             (* -2 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Bw1 Bx1)
             (* -1 Aw1 Aw2 (expt Bx1 2)))
            Bx2))
	By2)
       (*
	(+
	 (*
          (+ (* 4 Ax1 Ax2 Ay1)
             (* -2 (expt Ax1 2) Ay2))
          Bw2 Bx2)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1)
               (* -6 Aw1 Ax2))
            Ay1)
           (* 2 Aw1 Ax1 Ay2))
          (expt Bx2 2))
	 (*
          (+
           (* -2 (expt Ax1 2) Ax2 Bw2)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Bx2))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+ (* -2 (expt Ax2 2) Ay1)
             (* Ax1 Ax2 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* 2 Aw2 Ax2 Ay1)
             (* -1 Aw1 Ax2 Ay2))
          (expt Bx1 2))
	 (*
          (+
           (* Ax1 (expt Ax2 2) Bw1)
           (*
            (+ (* -2 Aw2 Ax1 Ax2)
               (* Aw1 (expt Ax2 2)))
            Bx1))
          By1)
	 (*
          (+
           (* 2 Ax1 (expt Ax2 2) Ay1)
           (* -2 (expt Ax1 2) Ax2 Ay2))
          Cw1))
	Cw2)
       (*
	(+
	 (*
          (+ (* -2 Ax1 Ax2 Ay1)
             (* -1 (expt Ax1 2) Ay2))
          (expt Bw2 2))
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Ay1)
           (* 4 Aw1 Ax1 Ay2))
          Bw2 Bx2)
	 (*
          (+ (* 2 Aw1 Aw2 Ay1)
             (* -3 (expt Aw1 2) Ay2))
          (expt Bx2 2))
	 (*
          (+
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
               (* -6 (expt Aw1 2) Ax2))
            Bx2))
          By2)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Ay2))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* 3 (expt Ax2 2) Ay1)
             (* -2 Ax1 Ax2 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* -4 Aw2 Ax2 Ay1)
             (*
              (+ (* Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay2))
          Bw1 Bx1)
	 (*
          (+ (* (expt Aw2 2) Ay1)
             (* -1 Aw1 Aw2 Ay2))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -3 Aw1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* -1 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
            Bx1))
          By1)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -6 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Ay2))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
               (* -6 (expt Aw1 2) Ax2))
            Ay2))
          Cx1))
	Cx2))
      (expt Cy1 2))
     (*
      (+
       (* (expt Ax1 2) Ax2
	  (expt Bw2 2))
       (*
	(+ (* 2 Aw2 (expt Ax1 2))
	   (* -4 Aw1 Ax1 Ax2))
	Bw2 Bx2)
       (*
	(+ (* -2 Aw1 Aw2 Ax1)
	   (* 3 (expt Aw1 2) Ax2))
	(expt Bx2 2))
       (*
	(+
	 (* 2 Aw2 (expt Ax1 2) Ax2)
	 (* -2 Aw1 Ax1 (expt Ax2 2)))
	Cw2)
       (*
	(+
	 (* (expt Aw2 2)
            (expt Ax1 2))
	 (* -4 Aw1 Aw2 Ax1 Ax2)
	 (* 3 (expt Aw1 2)
            (expt Ax2 2)))
	Cx2))
      (expt Cy1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1 Ay2)
               (* 3 Ax1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+ (* 2 Aw2 Ay1 Ay2)
               (* -3 Aw1 (expt Ay2 2)))
            (expt Bx1 2))
           (*
            (+
             (*
              (+
               (* (expt Ax2 2) Ay1)
               (* -2 Ax1 Ax2 Ay2))
              Bw1)
             (*
              (+ (* -1 Aw2 Ax2 Ay1)
		 (*
		  (+ (* -2 Aw2 Ax1)
		     (* 4 Aw1 Ax2))
		  Ay2))
              Bx1))
            By1)
           (*
            (+ (* Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            (expt By1 2)))
          Cw1)
	 (*
          (+
           (* -1 (expt Ax2 2)
              (expt Ay1 2))
           (* 4 Ax1 Ax2 Ay1 Ay2)
           (* -3 (expt Ax1 2)
              (expt Ay2 2)))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1 Ay2)
             (* -3 Ax1 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+ (* -2 Aw2 Ay1 Ay2)
             (* 3 Aw1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* -1 Aw2 Ax2 Ay1)
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay2))
            Bw1)
           (*
            (+ (* (expt Aw2 2) Ay1)
               (* -2 Aw1 Aw2 Ay2))
            Bx1))
          By1)
	 (*
          (+ (* -1 (expt Aw2 2) Ax1)
             (* Aw1 Aw2 Ax2))
          (expt By1 2))
	 (*
          (+
           (* 2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Ay1 Ay2)
           (* 6 Aw1 Ax1 (expt Ay2 2)))
          Cw1))
	(expt Cx1 2))
       (*
	(+
	 (* -1 (expt Aw2 2)
            (expt Ay1 2))
	 (* 4 Aw1 Aw2 Ay1 Ay2)
	 (* -3 (expt Aw1 2)
            (expt Ay2 2)))
	(expt Cx1 3))
       (*
	(+
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* -2 Ax1 Ax2 Ay2))
            Bw1 Bx1)
           (*
            (+ (* -1 Aw2 Ax2 Ay1)
               (* 2 Aw1 Ax2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (* Ax1 (expt Ax2 2) Bw1)
             (*
              (+ (* Aw2 Ax1 Ax2)
		 (* -2 Aw1 (expt Ax2 2)))
              Bx1))
            By1))
          Cw1)
	 (*
          (+
           (* -2 Ax1 (expt Ax2 2) Ay1)
           (* 2 (expt Ax1 2) Ax2 Ay2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+
             (* -2 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 3 Aw2 Ax2 Ay1)
               (*
		(+ (* -2 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Ay2))
            Bw1 Bx1)
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (*
              (+ (* -3 Aw2 Ax1 Ax2)
		 (* 2 Aw1 (expt Ax2 2)))
              Bw1)
             (* (expt Aw2 2) Ax1 Bx1))
            By1)
           (*
            (+
             (* 4 Aw1 (expt Ax2 2) Ay1)
             (*
              (+
               (* 4 Aw2 (expt Ax1 2))
               (* -8 Aw1 Ax1 Ax2))
              Ay2))
            Cw1))
          Cx1)
	 (*
          (+
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* 6 (expt Aw1 2) Ax2))
            Ay2))
          (expt Cx1 2)))
	Cy1)
       (*
	(+
	 (* -1 Ax1 (expt Ax2 2)
            (expt Bw1 2))
	 (*
          (+ (* Aw2 Ax1 Ax2)
             (* Aw1 (expt Ax2 2)))
          Bw1 Bx1)
	 (* -1 Aw1 Aw2 Ax2 (expt Bx1 2))
	 (*
          (+
           (* -2 Aw2 (expt Ax1 2) Ax2)
           (* 2 Aw1 Ax1 (expt Ax2 2)))
          Cw1)
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ax1 2))
           (* 4 Aw1 Aw2 Ax1 Ax2)
           (* -3 (expt Aw1 2)
              (expt Ax2 2)))
          Cx1))
	(expt Cy1 2)))
      Cy2))
    Dw1)
   (*
    (+
     (*
      (+
       (* 2 Ay1 Ay2 Bw2 (expt Bx1 2)
	  Bx2)
       (* -2 Ay1 Ay2 Bw1 Bx1
	  (expt Bx2 2)))
      By1)
     (*
      (+
       (*
	(+ (* -2 Ax2 Ay1)
	   (* -2 Ax1 Ay2))
	Bw2 Bx1 Bx2)
       (*
	(+
	 (*
          (+ (* 3 Ax2 Ay1)
             (* -1 Ax1 Ay2))
          Bw1)
	 (*
          (+ (* -1 Aw2 Ay1)
             (* 3 Aw1 Ay2))
          Bx1))
	(expt Bx2 2)))
      (expt By1 2))
     (*
      (+ (* 2 Ax1 Ax2 Bw2 Bx2)
	 (*
	  (+ (* Aw2 Ax1)
	     (* -3 Aw1 Ax2))
	  (expt Bx2 2)))
      (expt By1 3))
     (*
      (+
       (* -2 Ay1 Ay2 Bw2 (expt Bx1 3))
       (* 2 Ay1 Ay2 Bw1 (expt Bx1 2)
	  Bx2)
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1)
             (* 2 Ax1 Ay2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
               (* 4 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* 2 Aw2 Ay1)
               (* -6 Aw1 Ay2))
            (expt Bx1 2)))
          Bx2))
	By1)
       (*
	(+ (* -2 Ax1 Ax2 Bw2 Bx1)
	   (*
            (+ (* -2 Ax1 Ax2 Bw1)
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 6 Aw1 Ax2))
		Bx1))
            Bx2))
	(expt By1 2)))
      By2)
     (*
      (+
       (*
	(+ (* Ax2 Ay1)
	   (* -3 Ax1 Ay2))
	Bw1 (expt Bx1 2))
       (*
	(+ (* -1 Aw2 Ay1)
	   (* 3 Aw1 Ay2))
	(expt Bx1 3))
       (*
	(+ (* 2 Ax1 Ax2 Bw1 Bx1)
	   (*
            (+ (* Aw2 Ax1)
               (* -3 Aw1 Ax2))
            (expt Bx1 2)))
	By1))
      (expt By2 2))
     (*
      (+
       (* (expt Ay1 2) Ay2 Bx1
	  (expt Bx2 2))
       (*
	(+ (* -3 Ax2 (expt Ay1 2))
	   (* 2 Ax1 Ay1 Ay2))
	(expt Bx2 2) By1)
       (*
	(+
	 (*
          (+ (* 2 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
          Bx1 Bx2)
	 (*
          (+ (* 4 Ax1 Ax2 Ay1)
             (* -2 (expt Ax1 2) Ay2))
          Bx2 By1))
	By2)
       (*
	(+
	 (*
          (+ (* -2 Ax1 Ax2 Ay1)
             (* 3 (expt Ax1 2) Ay2))
          Bx1)
	 (* -1 (expt Ax1 2) Ax2 By1))
	(expt By2 2)))
      Cw1)
     (*
      (+
       (* -1 Ay1 (expt Ay2 2)
	  (expt Bx1 3))
       (*
	(+ (* 2 Ax2 Ay1 Ay2)
	   (* Ax1 (expt Ay2 2)))
	(expt Bx1 2) By1)
       (*
	(+ (* -1 (expt Ax2 2) Ay1)
	   (* -2 Ax1 Ax2 Ay2))
	Bx1 (expt By1 2))
       (* Ax1 (expt Ax2 2)
	  (expt By1 3)))
      Cw2)
     (*
      (+
       (* -3 (expt Ay1 2) Ay2 Bw2 Bx1
	  Bx2)
       (* 2 (expt Ay1 2) Ay2 Bw1
	  (expt Bx2 2))
       (*
	(+
	 (*
          (+ (* 2 Ax2 (expt Ay1 2))
             (* Ax1 Ay1 Ay2))
          Bw2 Bx2)
	 (*
          (+ (* Aw2 (expt Ay1 2))
             (* -3 Aw1 Ay1 Ay2))
          (expt Bx2 2)))
	By1)
       (*
	(+
	 (*
          (+ (* -3 Ax2 (expt Ay1 2))
             (* 6 Ax1 Ay1 Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* 4 Ax2 (expt Ay1 2))
             (* -8 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -3 Aw2 (expt Ay1 2))
             (* 6 Aw1 Ay1 Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+ (* Ax1 Ax2 Ay1)
               (* -4 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            Bx2))
          By1))
	By2)
       (*
	(+
	 (*
          (+ (* -4 Ax1 Ax2 Ay1)
             (* 6 (expt Ax1 2) Ay2))
          Bw1)
	 (*
          (+
           (*
            (+ (* 3 Aw2 Ax1)
               (* 3 Aw1 Ax2))
            Ay1)
           (* -9 Aw1 Ax1 Ay2))
          Bx1)
	 (*
          (+ (* -2 Aw2 (expt Ax1 2))
             (* 3 Aw1 Ax1 Ax2))
          By1))
	(expt By2 2))
       (*
	(+
	 (*
          (+
           (* -3 Ax2 (expt Ay1 2) Ay2)
           (* 3 Ax1 Ay1 (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (* (expt Ax2 2)
              (expt Ay1 2))
           (* Ax1 Ax2 Ay1 Ay2)
           (* -2 (expt Ax1 2)
              (expt Ay2 2)))
          By1))
	Cw2))
      Cx1)
     (*
      (+
       (* Ay1 (expt Ay2 2) Bw1
	  (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1 Ay2)
             (* 2 Ax1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+ (* 2 Aw2 Ay1 Ay2)
             (* -3 Aw1 (expt Ay2 2)))
          (expt Bx1 2)))
	By1)
       (*
	(+
	 (*
          (+ (* 3 (expt Ax2 2) Ay1)
             (* -2 Ax1 Ax2 Ay2))
          Bw1)
	 (*
          (+ (* -2 Aw2 Ax2 Ay1)
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
              Ay2))
          Bx1))
	(expt By1 2))
       (*
	(+ (* 2 Aw2 Ax1 Ax2)
	   (* -3 Aw1 (expt Ax2 2)))
	(expt By1 3))
       (*
	(+
	 (*
          (+
           (* 2 Ax2 (expt Ay1 2) Ay2)
           (* -2 Ax1 Ay1 (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (* -3 (expt Ax2 2)
              (expt Ay1 2))
           (* 4 Ax1 Ax2 Ay1 Ay2)
           (* -1 (expt Ax1 2)
              (expt Ay2 2)))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+
           (* 4 Ax2 (expt Ay1 2) Ay2)
           (* -4 Ax1 Ay1 (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -3 Aw2 (expt Ay1 2) Ay2)
           (* 3 Aw1 Ay1 (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (* 2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* Aw2 Ax1)
               (* -6 Aw1 Ax2))
            Ay1 Ay2)
           (* 3 Aw1 Ax1 (expt Ay2 2)))
          By1))
	Cx1))
      Cx2)
     (*
      (+
       (*
	(+ (* 4 Ax2 (expt Ay1 2))
	   (* -1 Ax1 Ay1 Ay2))
	Bw2 Bx1 Bx2)
       (*
	(+
	 (*
          (+ (* -6 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
          Bw1)
	 (*
          (+ (* 2 Aw2 (expt Ay1 2))
             (* -3 Aw1 Ay1 Ay2))
          Bx1))
	(expt Bx2 2))
       (*
	(+
	 (*
          (+ (* -6 Ax1 Ax2 Ay1)
             (* 3 (expt Ax1 2) Ay2))
          Bw2 Bx2)
	 (*
          (+
           (*
            (+ (* -3 Aw2 Ax1)
               (* 9 Aw1 Ax2))
            Ay1)
           (* -3 Aw1 Ax1 Ay2))
          (expt Bx2 2)))
	By1)
       (*
	(+
	 (*
          (+ (* -1 Ax1 Ax2 Ay1)
             (* -2 (expt Ax1 2) Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* 8 Ax1 Ax2 Ay1)
               (* -4 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay1)
             (* 6 Aw1 Ax1 Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (* 3 (expt Ax1 2) Ax2 Bw2)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            Bx2))
          By1))
	By2)
       (*
	(+
	 (* -2 (expt Ax1 2) Ax2 Bw1)
	 (*
          (+ (* -1 Aw2 (expt Ax1 2))
             (* 3 Aw1 Ax1 Ax2))
          Bx1))
	(expt By2 2))
       (*
	(+
	 (*
          (+
           (* 2 (expt Ax2 2)
              (expt Ay1 2))
           (* -1 Ax1 Ax2 Ay1 Ay2)
           (* -1 (expt Ax1 2)
              (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (* -3 Ax1 (expt Ax2 2) Ay1)
           (* 3 (expt Ax1 2) Ax2 Ay2))
          By1))
	Cw2)
       (*
	(+
	 (*
          (+
           (* -6 (expt Ax2 2)
              (expt Ay1 2))
           (* 8 Ax1 Ax2 Ay1 Ay2)
           (* -2 (expt Ax1 2)
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* 4 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -1 Aw2 Ax1)
               (* -6 Aw1 Ax2))
            Ay1 Ay2)
           (* 3 Aw1 Ax1 (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1 Ax2)
               (* 9 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            Ay2))
          By1))
	Cx2))
      Cy1)
     (*
      (+
       (*
	(+ (* 2 Ax2 Ay1 Ay2)
	   (* -3 Ax1 (expt Ay2 2)))
	Bw1 (expt Bx1 2))
       (*
	(+ (* -2 Aw2 Ay1 Ay2)
	   (* 3 Aw1 (expt Ay2 2)))
	(expt Bx1 3))
       (*
	(+
	 (*
          (+ (* -2 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* 2 Aw2 Ax2 Ay1)
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay2))
          (expt Bx1 2)))
	By1)
       (*
	(+
	 (* -1 Ax1 (expt Ax2 2) Bw1)
	 (*
          (+ (* -2 Aw2 Ax1 Ax2)
             (* 3 Aw1 (expt Ax2 2)))
          Bx1))
	(expt By1 2))
       (*
	(+
	 (*
          (+
           (* (expt Ax2 2)
              (expt Ay1 2))
           (* -4 Ax1 Ax2 Ay1 Ay2)
           (* 3 (expt Ax1 2)
              (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (* 2 Ax1 (expt Ax2 2) Ay1)
           (* -2 (expt Ax1 2) Ax2 Ay2))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+
           (* 2 (expt Ax2 2)
              (expt Ay1 2))
           (* -8 Ax1 Ax2 Ay1 Ay2)
           (* 6 (expt Ax1 2)
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -3 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 6 Aw2 Ax1)
               (* 6 Aw1 Ax2))
            Ay1 Ay2)
           (* -9 Aw1 Ax1 (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+ (* Aw2 Ax1 Ax2)
               (* -3 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -4 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Ay2))
          By1))
	Cx1)
       (*
	(+
	 (*
          (+
           (* 4 Ax1 (expt Ax2 2) Ay1)
           (* -4 (expt Ax1 2) Ax2 Ay2))
          Bw1)
	 (*
          (+
           (*
            (+ (* -1 Aw2 Ax1 Ax2)
               (* -3 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Ay2))
          Bx1)
	 (*
          (+
           (* 3 Aw2 (expt Ax1 2) Ax2)
           (* -3 Aw1 Ax1 (expt Ax2 2)))
          By1))
	Cy1))
      Cy2))
    (expt Dw1 2))
   (*
    (+
     (*
      (+ (* 3 Ax2 (expt Ay1 3))
	 (* -3 Ax1 (expt Ay1 2) Ay2))
      (expt Bx2 2))
     (*
      (+
       (* -6 Ax1 Ax2 (expt Ay1 2))
       (* 6 (expt Ax1 2) Ay1 Ay2))
      Bx2 By2)
     (*
      (+
       (* 3 (expt Ax1 2) Ax2 Ay1)
       (* -3 (expt Ax1 3) Ay2))
      (expt By2 2))
     (*
      (+
       (* 3 (expt Ax2 2)
	  (expt Ay1 3))
       (* -6 Ax1 Ax2 (expt Ay1 2) Ay2)
       (* 3 (expt Ax1 2) Ay1
	  (expt Ay2 2)))
      Cx2)
     (*
      (+
       (* -3 Ax1 (expt Ax2 2)
	  (expt Ay1 2))
       (* 6 (expt Ax1 2) Ax2 Ay1 Ay2)
       (* -3 (expt Ax1 3)
	  (expt Ay2 2)))
      Cy2))
    (expt Dw1 3))
   (*
    (+
     (*
      (+
       (*
	(+ (* Ay1 Ay2 Bw2 Bx1 Bx2)
	   (* -1 Ay1 Ay2 Bw1 (expt Bx2 2)))
	By1)
       (*
	(+ (* -1 Ax1 Ay2 Bw2 Bx2)
	   (* Aw1 Ay2 (expt Bx2 2)))
	(expt By1 2))
       (*
	(+
	 (* -2 Ay1 Ay2 Bw2 (expt Bx1 2))
	 (* 2 Ay1 Ay2 Bw1 Bx1 Bx2)
	 (*
          (+
           (*
            (+ (* Ax2 Ay1)
               (* 2 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* -2 Ax2 Ay1)
		 (* 2 Ax1 Ay2))
              Bw1)
             (*
              (+ (* Aw2 Ay1)
		 (* -4 Aw1 Ay2))
              Bx1))
            Bx2))
          By1)
	 (*
          (+ (* -1 Ax1 Ax2 Bw2)
             (*
              (+ (* -1 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Bx2))
          (expt By1 2)))
	By2)
       (*
	(+
	 (*
          (+ (* Ax2 Ay1)
             (* -3 Ax1 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* -1 Aw2 Ay1)
             (* 3 Aw1 Ay2))
          (expt Bx1 2))
	 (*
          (+ (* Ax1 Ax2 Bw1)
             (*
              (+ (* Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bx1))
          By1))
	(expt By2 2)))
      (expt Cw1 2))
     (*
      (+
       (* (expt Ay1 2) Ay2
	  (expt Bx2 2))
       (*
	(+ (* 2 Ax2 (expt Ay1 2))
	   (* -4 Ax1 Ay1 Ay2))
	Bx2 By2)
       (*
	(+ (* -2 Ax1 Ax2 Ay1)
	   (* 3 (expt Ax1 2) Ay2))
	(expt By2 2)))
      (expt Cw1 3))
     (*
      (+
       (* -1 Ay1 (expt Ay2 2)
	  (expt Bx1 2))
       (*
	(+ (* Ax2 Ay1 Ay2)
	   (* Ax1 (expt Ay2 2)))
	Bx1 By1)
       (* -1 Ax1 Ax2 Ay2 (expt By1 2)))
      (expt Cw1 2) Cw2)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1 Ay1 Ay2 (expt Bw2 2)
              Bx1)
           (* Ay1 Ay2 Bw1 Bw2 Bx2))
          By1)
	 (*
          (+
           (* Ax1 Ay2 (expt Bw2 2))
           (* -1 Aw1 Ay2 Bw2 Bx2))
          (expt By1 2))
	 (*
          (+
           (* 2 Ay1 Ay2 Bw1 Bw2 Bx1)
           (* -2 Ay1 Ay2 (expt Bw1 2)
              Bx2)
           (*
            (+
             (*
              (+ (* Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              Bw1 Bw2)
             (*
              (+ (* -2 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw2 Bx1)
             (*
              (+ (* Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 Bx2))
            By1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Bw2)
             (* -1 Aw1 Aw2 Bx2))
            (expt By1 2)))
          By2)
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
               (* 3 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* Aw2 Ay1)
               (* -3 Aw1 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1)
		 (* Aw1 Ax2))
              Bw1)
             (* Aw1 Aw2 Bx1))
            By1))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* -2 (expt Ay1 2) Ay2 Bw2 Bx2)
	 (*
          (+
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
            Bw2)
           (*
            (+
             (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
            Bx2))
          By2)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Ay1)
           (* -6 Aw1 Ax1 Ay2))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (* Ay1 (expt Ay2 2) Bw1 Bx1)
           (*
            (+
             (*
              (+ (* Ax2 Ay1 Ay2)
		 (* -2 Ax1 (expt Ay2 2)))
              Bw1)
             (*
              (+ (* -2 Aw2 Ay1 Ay2)
		 (* Aw1 (expt Ay2 2)))
              Bx1))
            By1)
           (*
            (+ (* 2 Aw2 Ax1)
               (* -1 Aw1 Ax2))
            Ay2 (expt By1 2)))
          Cw1)
	 (*
          (+
           (* -2 Ax2 (expt Ay1 2) Ay2)
           (* 2 Ax1 Ay1 (expt Ay2 2)))
          (expt Cw1 2)))
	Cw2))
      Cx1)
     (*
      (+
       (*
	(+
	 (* (expt Ay1 2) Ay2
            (expt Bw2 2))
	 (*
          (+ (* 2 Aw2 (expt Ay1 2))
             (* -4 Aw1 Ay1 Ay2))
          Bw2 By2)
	 (*
          (+ (* -2 Aw1 Aw2 Ay1)
             (* 3 (expt Aw1 2) Ay2))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* 2 Aw2 (expt Ay1 2) Ay2)
	 (* -2 Aw1 Ay1 (expt Ay2 2)))
	Cw1 Cw2))
      (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (* Ay1 (expt Ay2 2) Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1 Ay2)
               (* Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+ (* Aw2 Ay1 Ay2)
               (* -2 Aw1 (expt Ay2 2)))
            Bx1))
          By1)
	 (*
          (+ (* -1 Aw2 Ax1)
             (* 2 Aw1 Ax2))
          Ay2 (expt By1 2)))
	(expt Cw1 2))
       (*
	(+
	 (* 2 Ax2 (expt Ay1 2) Ay2)
	 (* -2 Ax1 Ay1 (expt Ay2 2)))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (* -1 Ay1 (expt Ay2 2)
              (expt Bw1 2))
           (*
            (+ (* Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            Bw1 By1)
           (* -1 Aw1 Aw2 Ay2
              (expt By1 2)))
          Cw1)
	 (*
          (+
           (* -2 Aw2 (expt Ay1 2) Ay2)
           (* 2 Aw1 Ay1 (expt Ay2 2)))
          (expt Cw1 2)))
	Cx1))
      Cx2)
     (*
      (+
       (*
	(+
	 (* 2 Ay1 Ay2 (expt Bw2 2)
            (expt Bx1 2))
	 (* -3 Ay1 Ay2 Bw1 Bw2 Bx1 Bx2)
	 (* Ay1 Ay2 (expt Bw1 2)
            (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
               (* -2 Ax1 Ay2))
            (expt Bw2 2) Bx1)
           (*
            (+ (* 2 Ax2 Ay1 Bw1 Bw2)
               (*
		(+ (* -2 Aw2 Ay1)
		   (* 3 Aw1 Ay2))
		Bw2 Bx1))
            Bx2)
           (*
            (+ (* Aw2 Ay1)
               (* -1 Aw1 Ay2))
            Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* Ax1 Ax2 (expt Bw2 2))
           (*
            (+ (* 2 Aw2 Ax1)
               (* -2 Aw1 Ax2))
            Bw2 Bx2)
           (* -1 Aw1 Aw2 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -3 Ax2 Ay1)
               (* 4 Ax1 Ay2))
            Bw1 Bw2 Bx1)
           (*
            (+ (* 4 Aw2 Ay1)
               (* -4 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (*
              (+ (* -3 Aw2 Ay1)
		 (* 2 Aw1 Ay2))
              Bw1 Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              Bw2 Bx1)
             (*
              (+ (* -2 Aw1 Ax2 Bw1)
		 (* 3 Aw1 Aw2 Bx1))
              Bx2))
            By1))
          By2)
	 (*
          (+
           (* -1 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ax1)
               (* Aw1 Ax2))
            Bw1 Bx1)
           (* -2 Aw1 Aw2 (expt Bx1 2)))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (*
          (+ (* -2 Ax2 (expt Ay1 2))
             (* 4 Ax1 Ay1 Ay2))
          Bw2 Bx2)
	 (*
          (+ (* -1 Aw2 (expt Ay1 2))
             (* -2 Aw1 Ay1 Ay2))
          (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
               (* -6 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Bx2))
          By2)
	 (*
          (+ (* -3 Aw2 (expt Ax1 2))
             (* 2 Aw1 Ax1 Ax2))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* -3 Ax2 Ay1 Ay2)
               (* 2 Ax1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+ (* 4 Aw2 Ay1 Ay2)
               (* -2 Aw1 (expt Ay2 2)))
            (expt Bx1 2))
           (*
            (+
             (* (expt Ax2 2) Ay1 Bw1)
             (*
              (+ (* -2 Aw2 Ax2 Ay1)
		 (*
		  (+ (* -4 Aw2 Ax1)
		     (* 3 Aw1 Ax2))
		  Ay2))
              Bx1))
            By1)
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            (expt By1 2)))
          Cw1)
	 (*
          (+
           (* -1 (expt Ax2 2)
              (expt Ay1 2))
           (* 4 Ax1 Ax2 Ay1 Ay2)
           (* -3 (expt Ax1 2)
              (expt Ay2 2)))
          (expt Cw1 2)))
	Cw2)
       (*
	(+
	 (* -1 Ay1 Ay2 Bw1 (expt Bw2 2)
            Bx1)
	 (* Ay1 Ay2 (expt Bw1 2) Bw2
            Bx2)
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1)
               (* 2 Ax1 Ay2))
            Bw1 (expt Bw2 2))
           (*
            (+ (* 3 Aw2 Ay1)
               (* -1 Aw1 Ay2))
            (expt Bw2 2) Bx1)
           (*
            (+ (* -2 Aw2 Ay1)
               (* -1 Aw1 Ay2))
            Bw1 Bw2 Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* -3 Aw2 Ax1)
               (* Aw1 Ax2))
            (expt Bw2 2))
           (* 2 Aw1 Aw2 Bw2 Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* Ax2 Ay1)
               (* -2 Ax1 Ay2))
            (expt Bw1 2) Bw2)
           (*
            (+ (* -2 Aw2 Ay1)
               (* 2 Aw1 Ay2))
            Bw1 Bw2 Bx1)
           (* Aw2 Ay1 (expt Bw1 2) Bx2)
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Bw1 Bw2)
             (* -2 Aw1 Aw2 Bw2 Bx1)
             (* -1 Aw1 Aw2 Bw1 Bx2))
            By1))
          By2)
	 (*
          (+
           (* -1 Aw2 Ax1 (expt Bw1 2))
           (* Aw1 Aw2 Bw1 Bx1))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* 2 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
            (expt Bw2 2))
           (* 4 Aw2 (expt Ay1 2) Bw2 Bx2)
           (*
            (+
             (*
              (+ (* -8 Aw2 Ax1 Ay1)
		 (* 8 Aw1 Ax1 Ay2))
              Bw2)
             (* -4 (expt Aw1 2) Ay2 Bx2))
            By2)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            (expt By2 2)))
          Cw1)
	 (*
          (+
           (*
            (+ (* Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (*
            (+ (* -2 Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax2 Ay1)
		 (*
		  (+ (* 4 Aw2 Ax1)
		     (* -1 Aw1 Ax2))
		  Ay2))
              Bw1)
             (*
              (+
               (* 3 (expt Aw2 2) Ay1)
               (* -2 Aw1 Aw2 Ay2))
              Bx1))
            By1)
           (*
            (+
             (* -3 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
            (expt By1 2))
           (*
            (+
             (* 4 Aw2 Ax2 (expt Ay1 2))
             (* -8 Aw2 Ax1 Ay1 Ay2)
             (* 4 Aw1 Ax1 (expt Ay2 2)))
            Cw1))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* -3 Aw2 (expt Ay1 2))
             (* 2 Aw1 Ay1 Ay2))
          (expt Bw2 2))
	 (*
          (+ (* 4 Aw1 Aw2 Ay1)
             (* -2 (expt Aw1 2) Ay2))
          Bw2 By2)
	 (* -1 (expt Aw1 2) Aw2
            (expt By2 2))
	 (*
          (+
           (* -3 (expt Aw2 2)
              (expt Ay1 2))
           (* 4 Aw1 Aw2 Ay1 Ay2)
           (* -1 (expt Aw1 2)
              (expt Ay2 2)))
          Cw2))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (*
            (+ (* -3 Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax2 Ay1)
		 (* -2 Aw1 Ax2 Ay2))
              Bw1)
             (*
              (+
               (* -1 (expt Aw2 2) Ay1)
               (* 3 Aw1 Aw2 Ay2))
              Bx1))
            By1)
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
            (expt By1 2)))
          Cw1)
	 (*
          (+
           (* -2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Ay1 Ay2)
           (* 2 Aw1 Ax1 (expt Ay2 2)))
          (expt Cw1 2))
	 (*
          (+
           (* Aw2 Ay1 Ay2 (expt Bw1 2))
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* -1 Aw1 Aw2 Ay2))
            Bw1 By1)
           (* Aw1 (expt Aw2 2)
              (expt By1 2))
           (*
            (+
             (* 2 (expt Aw2 2)
		(expt Ay1 2))
             (* -2 (expt Aw1 2)
		(expt Ay2 2)))
            Cw1))
          Cx1))
	Cx2))
      Cy1)
     (*
      (+
       (*
	(+ (* 2 Ax2 Ay1)
	   (* -1 Ax1 Ay2))
	Bw1 (expt Bw2 2) Bx1)
       (*
	(+ (* -3 Aw2 Ay1)
	   (* Aw1 Ay2))
	(expt Bw2 2) (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
             (* Ax1 Ay2))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* 4 Aw2 Ay1)
             (* -1 Aw1 Ay2))
          Bw1 Bw2 Bx1))
	Bx2)
       (* -1 Aw2 Ay1 (expt Bw1 2)
	  (expt Bx2 2))
       (*
	(+
	 (* -1 Ax1 Ax2 Bw1 (expt Bw2 2))
	 (*
          (+ (* 3 Aw2 Ax1)
             (* -1 Aw1 Ax2))
          (expt Bw2 2) Bx1)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Bw1 Bw2)
           (* -2 Aw1 Aw2 Bw2 Bx1))
          Bx2)
	 (* Aw1 Aw2 Bw1 (expt Bx2 2)))
	By1)
       (*
	(+
	 (* Ax1 Ax2 (expt Bw1 2) Bw2)
	 (*
          (+ (* -2 Aw2 Ax1)
             (* -1 Aw1 Ax2))
          Bw1 Bw2 Bx1)
	 (* 2 Aw1 Aw2 Bw2 (expt Bx1 2))
	 (*
          (+
           (* Aw2 Ax1 (expt Bw1 2))
           (* -1 Aw1 Aw2 Bw1 Bx1))
          Bx2))
	By2)
       (*
	(+
	 (*
          (+ (* -2 Ax1 Ax2 Ay1)
             (* 3 (expt Ax1 2) Ay2))
          (expt Bw2 2))
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Ay1)
           (* -4 Aw1 Ax1 Ay2))
          Bw2 Bx2)
	 (*
          (+ (* 2 Aw1 Aw2 Ay1)
             (* (expt Aw1 2) Ay2))
          (expt Bx2 2))
	 (*
          (+
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Bw2)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Bx2))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+ (* -1 (expt Ax2 2) Ay1)
             (* Ax1 Ax2 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* 4 Aw2 Ax2 Ay1)
             (*
              (+ (* -2 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay2))
          Bw1 Bx1)
	 (*
          (+ (* -3 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1 Ax2)
               (* Aw1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* 3 (expt Aw2 2) Ax1)
             (* -2 Aw1 Aw2 Ax2))
            Bx1))
          By1)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Ay2))
          Cw1))
	Cw2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
               (* -2 Aw1 Ax2))
            Ay1)
           (* -2 Aw1 Ax1 Ay2))
          (expt Bw2 2))
	 (*
          (+ (* -4 Aw1 Aw2 Ay1)
             (* 2 (expt Aw1 2) Ay2))
          Bw2 Bx2)
	 (*
          (+
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Bw2)
           (* 2 (expt Aw1 2) Aw2 Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (* 6 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Ay2))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* -2 Aw2 Ax2 Ay1)
             (* Aw2 Ax1 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* 2 (expt Aw2 2) Ay1)
             (* -1 Aw1 Aw2 Ay2))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+
             (* -1 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
            Bw1)
           (* -1 Aw1 (expt Aw2 2) Bx1))
          By1)
	 (*
          (+
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Ay2))
          Cw1)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ay1)
           (* 2 (expt Aw1 2) Aw2 Ay2))
          Cx1))
	Cx2))
      (expt Cy1 2))
     (*
      (+
       (*
	(+ (* -3 Aw2 (expt Ax1 2))
	   (* 2 Aw1 Ax1 Ax2))
	(expt Bw2 2))
       (*
	(+ (* 4 Aw1 Aw2 Ax1)
	   (* -2 (expt Aw1 2) Ax2))
	Bw2 Bx2)
       (* -1 (expt Aw1 2) Aw2
	  (expt Bx2 2))
       (*
	(+
	 (* -3 (expt Aw2 2)
            (expt Ax1 2))
	 (* 4 Aw1 Aw2 Ax1 Ax2)
	 (* -1 (expt Aw1 2)
            (expt Ax2 2)))
	Cw2)
       (*
	(+
	 (* 2 Aw1 (expt Aw2 2) Ax1)
	 (* -2 (expt Aw1 2) Aw2 Ax2))
	Cx2))
      (expt Cy1 3))
     (*
      (+
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1 Ay2)
             (* -3 Ax1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+ (* -2 Aw2 Ay1 Ay2)
             (* 3 Aw1 (expt Ay2 2)))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -1 (expt Ax2 2) Ay1)
             (* 2 Ax1 Ax2 Ay2))
            Bw1)
           (*
            (+ (* Aw2 Ax2 Ay1)
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Ay2))
            Bx1))
          By1)
	 (*
          (+ (* -1 Aw2 Ax1 Ax2)
             (* Aw1 (expt Ax2 2)))
          (expt By1 2)))
	(expt Cw1 2))
       (*
	(+
	 (* (expt Ax2 2)
            (expt Ay1 2))
	 (* -4 Ax1 Ax2 Ay1 Ay2)
	 (* 3 (expt Ax1 2)
            (expt Ay2 2)))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1 Ay2)
               (* 3 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ay1 Ay2)
               (* -3 Aw1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* Aw2 Ax2 Ay1)
		 (*
		  (+ (* -4 Aw2 Ax1)
		     (* 2 Aw1 Ax2))
		  Ay2))
              Bw1)
             (*
              (+
               (* -1 (expt Aw2 2) Ay1)
               (* 2 Aw1 Aw2 Ay2))
              Bx1))
            By1)
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* -1 Aw1 Aw2 Ax2))
            (expt By1 2)))
          Cw1)
	 (*
          (+
           (* -2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Ay1 Ay2)
           (* -6 Aw1 Ax1 (expt Ay2 2)))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (* (expt Aw2 2)
            (expt Ay1 2))
	 (* -4 Aw1 Aw2 Ay1 Ay2)
	 (* 3 (expt Aw1 2)
            (expt Ay2 2)))
	Cw1 (expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* -2 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -3 Aw2 Ax2 Ay1)
               (*
		(+ (* 4 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay2))
            Bw1 Bx1)
           (*
            (+
             (* 2 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (* -1 Aw1 (expt Ax2 2) Bw1)
             (*
              (+
               (* -2 (expt Aw2 2) Ax1)
               (* 3 Aw1 Aw2 Ax2))
              Bx1))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Ay2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* Aw2 Ax2 Ay1)
               (* -2 Aw2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+
               (* 2 (expt Aw2 2) Ax1)
               (* -1 Aw1 Aw2 Ax2))
              Bw1)
             (* -1 Aw1 (expt Aw2 2) Bx1))
            By1)
           (*
            (+
             (* -4 (expt Aw2 2) Ax1 Ay1)
             (*
              (+ (* 8 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              Ay2))
            Cw1))
          Cx1)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ay1)
           (* -2 (expt Aw1 2) Aw2 Ay2))
          (expt Cx1 2)))
	Cy1)
       (*
	(+
	 (* Aw2 Ax1 Ax2 (expt Bw1 2))
	 (*
          (+ (* -1 (expt Aw2 2) Ax1)
             (* -1 Aw1 Aw2 Ax2))
          Bw1 Bx1)
	 (* Aw1 (expt Aw2 2)
            (expt Bx1 2))
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ax1 2))
           (* -4 Aw1 Aw2 Ax1 Ax2)
           (* (expt Aw1 2)
              (expt Ax2 2)))
          Cw1)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ax1)
           (* 2 (expt Aw1 2) Aw2 Ax2))
          Cx1))
	(expt Cy1 2)))
      Cy2)
     (*
      (+
       (*
	(+
	 (* -2 Ay1 Ay2 (expt Bw2 2)
            (expt Bx1 2))
	 (* 2 Ay1 Ay2 (expt Bw1 2)
            (expt Bx2 2)))
	By1)
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1)
             (* 2 Ax1 Ay2))
          (expt Bw2 2) Bx1)
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
               (* 4 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 4 Aw2 Ay1)
               (* -4 Aw1 Ay2))
            Bw2 Bx1))
          Bx2)
	 (*
          (+ (* -2 Aw2 Ay1)
             (* -2 Aw1 Ay2))
          Bw1 (expt Bx2 2)))
	(expt By1 2))
       (*
	(+
	 (* -2 Ax1 Ax2 (expt Bw2 2))
	 (*
          (+ (* -4 Aw2 Ax1)
             (* 4 Aw1 Ax2))
          Bw2 Bx2)
	 (* 2 Aw1 Aw2 (expt Bx2 2)))
	(expt By1 3))
       (*
	(+
	 (* 4 Ay1 Ay2 Bw1 Bw2
            (expt Bx1 2))
	 (* -4 Ay1 Ay2 (expt Bw1 2) Bx1
            Bx2)
	 (*
          (+
           (* -8 Ax1 Ay2 Bw1 Bw2 Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
               (* 4 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 4 Ax2 Ay1)
		 (* -4 Ax1 Ay2))
              (expt Bw1 2))
             (* 8 Aw1 Ay2 Bw1 Bx1))
            Bx2))
          By1)
	 (*
          (+ (* 4 Ax1 Ax2 Bw1 Bw2)
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Bw2 Bx1)
             (*
              (+
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Bw1)
               (* -4 Aw1 Aw2 Bx1))
              Bx2))
          (expt By1 2)))
	By2)
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
             (* 6 Ax1 Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* 2 Aw2 Ay1)
             (* -6 Aw1 Ay2))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (* -2 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Bw1 Bx1)
           (* 2 Aw1 Aw2 (expt Bx1 2)))
          By1))
	(expt By2 2))
       (*
	(+
	 (* (expt Ay1 2) Ay2 Bw2 Bx1
            Bx2)
	 (* -3 (expt Ay1 2) Ay2 Bw1
            (expt Bx2 2))
	 (*
          (+
           (*
            (+
             (* 4 Ax2 (expt Ay1 2))
             (* -5 Ax1 Ay1 Ay2))
            Bw2 Bx2)
           (*
            (+
             (* 2 Aw2 (expt Ay1 2))
             (* Aw1 Ay1 Ay2))
            (expt Bx2 2)))
          By1)
	 (*
          (+
           (*
            (+ (* Ax2 (expt Ay1 2))
               (* -2 Ax1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* -6 Ax2 (expt Ay1 2))
               (* 12 Ax1 Ay1 Ay2))
              Bw1)
             (*
              (+
               (* Aw2 (expt Ay1 2))
               (* -2 Aw1 Ay1 Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* -5 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              Bw2)
             (*
              (+
               (*
		(+ (* -5 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx2))
            By1))
          By2)
	 (*
          (+
           (*
            (+ (* 6 Ax1 Ax2 Ay1)
               (* -9 (expt Ax1 2) Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay1)
             (* 3 Aw1 Ax1 Ay2))
            Bx1)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            By1))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (* 2 Ay1 (expt Ay2 2) Bw1
            (expt Bx1 2))
	 (*
          (+
           (* -4 Ax1 (expt Ay2 2) Bw1
              Bx1)
           (*
            (+ (* -4 Aw2 Ay1 Ay2)
               (* 2 Aw1 (expt Ay2 2)))
            (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+
             (* -2 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
            Bw1)
           (*
            (+ (* 4 Aw2 Ax2 Ay1)
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Ay2))
            Bx1))
          (expt By1 2))
	 (*
          (+ (* -4 Aw2 Ax1 Ax2)
             (* 2 Aw1 (expt Ax2 2)))
          (expt By1 3))
	 (*
          (+
           (*
            (+
             (* Ax2 (expt Ay1 2) Ay2)
             (* -1 Ax1 Ay1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (* 2 (expt Ax2 2)
		(expt Ay1 2))
             (* -5 Ax1 Ax2 Ay1 Ay2)
             (* 3 (expt Ax1 2)
		(expt Ay2 2)))
            By1))
          Cw1))
	Cw2)
       (*
	(+
	 (* 3 (expt Ay1 2) Ay2
            (expt Bw2 2) Bx1)
	 (* -1 (expt Ay1 2) Ay2 Bw1 Bw2
            Bx2)
	 (*
          (+
           (*
            (+
             (* -2 Ax2 (expt Ay1 2))
             (* -1 Ax1 Ay1 Ay2))
            (expt Bw2 2))
           (*
            (+
             (* -4 Aw2 (expt Ay1 2))
             (* 5 Aw1 Ay1 Ay2))
            Bw2 Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* -1 Ax2 (expt Ay1 2))
             (* 2 Ax1 Ay1 Ay2))
            Bw1 Bw2)
           (*
            (+
             (* 6 Aw2 (expt Ay1 2))
             (* -12 Aw1 Ay1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (* -1 Aw2 (expt Ay1 2))
             (* 2 Aw1 Ay1 Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+
               (*
		(+ (* -2 Aw2 Ax1)
		   (* 5 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw2)
             (*
              (+ (* 5 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              Bx2))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* Aw2 Ax1)
		 (* Aw1 Ax2))
              Ay1)
             (* -3 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -6 Aw1 Aw2 Ay1)
               (* 9 (expt Aw1 2) Ay2))
            Bx1)
           (*
            (+ (* Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            By1))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* -1 Ax2 (expt Ay1 2) Ay2)
             (* Ax1 Ay1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 6 Aw2 (expt Ay1 2) Ay2)
             (* -6 Aw1 Ay1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (* -4 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 5 Aw1 Ax2))
              Ay1 Ay2)
             (* Aw1 Ax1 (expt Ay2 2)))
            By1))
          Cw2))
	Cx1)
       (*
	(+
	 (* -2 Ay1 (expt Ay2 2)
            (expt Bw1 2) Bx1)
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1 Ay2)
               (* -2 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (* 4 Aw1 (expt Ay2 2) Bw1
              Bx1))
          By1)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax2 Ay1)
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Ay2))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
            Bx1))
          (expt By1 2))
	 (*
          (+ (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
          (expt By1 3))
	 (*
          (+
           (*
            (+
             (* -6 Ax2 (expt Ay1 2) Ay2)
             (* 6 Ax1 Ay1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* Aw2 (expt Ay1 2) Ay2)
             (* -1 Aw1 Ay1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (* 4 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -5 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1 Ay2)
             (* -1 Aw1 Ax1 (expt Ay2 2)))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -1 Aw2 (expt Ay1 2) Ay2)
             (* Aw1 Ay1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -2 (expt Aw2 2)
		(expt Ay1 2))
             (* 5 Aw1 Aw2 Ay1 Ay2)
             (* -3 (expt Aw1 2)
		(expt Ay2 2)))
            By1))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* -4 Ax2 (expt Ay1 2))
             (* Ax1 Ay1 Ay2))
          (expt Bw2 2) Bx1)
	 (*
          (+
           (*
            (+
             (* 8 Ax2 (expt Ay1 2))
             (* -7 Ax1 Ay1 Ay2))
            Bw1 Bw2)
           (*
            (+
             (* -8 Aw2 (expt Ay1 2))
             (* 7 Aw1 Ay1 Ay2))
            Bw2 Bx1))
          Bx2)
	 (*
          (+ (* 4 Aw2 (expt Ay1 2))
             (* -1 Aw1 Ay1 Ay2))
          Bw1 (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* 6 Ax1 Ax2 Ay1)
               (* -3 (expt Ax1 2) Ay2))
            (expt Bw2 2))
           (*
            (+ (* 12 Aw2 Ax1)
               (* -12 Aw1 Ax2))
            Ay1 Bw2 Bx2)
           (*
            (+ (* -6 Aw1 Aw2 Ay1)
               (* 3 (expt Aw1 2) Ay2))
            (expt Bx2 2)))
          By1)
	 (*
          (+
           (*
            (+ (* -7 Ax1 Ax2 Ay1)
               (* 6 (expt Ax1 2) Ay2))
            Bw1 Bw2)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* 7 Aw1 Ax2))
              Ay1)
             (* -2 Aw1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (*
		(+ (* -7 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* 7 Aw1 Aw2 Ay1)
		 (* -6 (expt Aw1 2) Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (* -6 Aw2 (expt Ax1 2) Bw2)
             (* 6 (expt Aw1 2) Ax2 Bx2))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            Bx1))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* 4 (expt Ax2 2)
		(expt Ay1 2))
             (* -7 Ax1 Ax2 Ay1 Ay2)
             (* 3 (expt Ax1 2)
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -8 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* 2 Aw2 Ax1)
		 (* 7 Aw1 Ax2))
              Ay1 Ay2)
             (* -1 Aw1 Ax1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+ (* 12 Aw2 Ax1 Ax2)
		 (* -6 Aw1 (expt Ax2 2)))
              Ay1)
             (* -6 Aw2 (expt Ax1 2) Ay2))
            By1))
          Cw2)
	 (*
          (+
           (*
            (+
             (* 8 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -7 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1 Ay2)
             (* Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -4 (expt Aw2 2)
		(expt Ay1 2))
             (* 7 Aw1 Aw2 Ay1 Ay2)
             (* -3 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+
               (* 6 (expt Aw2 2) Ax1)
               (* -12 Aw1 Aw2 Ax2))
              Ay1)
             (* 6 (expt Aw1 2) Ax2 Ay2))
            By1))
          Cx2))
	Cy1)
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1 Ay2)
             (* 6 Ax1 (expt Ay2 2)))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* 4 Aw2 Ay1 Ay2)
             (* -6 Aw1 (expt Ay2 2)))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* 2 (expt Ax2 2) Ay1)
             (* -4 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -8 Aw2 Ax1)
               (* 8 Aw1 Ax2))
            Ay2 Bw1 Bx1)
           (*
            (+
             (* -2 (expt Aw2 2) Ay1)
             (* 4 Aw1 Aw2 Ay2))
            (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* -3 (expt Ax2 2)
		(expt Ay1 2))
             (* 12 Ax1 Ax2 Ay1 Ay2)
             (* -9 (expt Ax1 2)
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1 Ay2)
             (* 3 Aw1 Ax1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+ (* -5 Aw2 Ax1 Ax2)
		 (* Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Ay2))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -1 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* 2 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1 Ay2)
             (* -3 Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 3 (expt Aw2 2)
		(expt Ay1 2))
             (* -12 Aw1 Aw2 Ay1 Ay2)
             (* 9 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+
               (* -1 (expt Aw2 2) Ax1)
               (* 5 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              Ay2))
            By1))
          Cx1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -7 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* 7 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            By1))
          Cy1))
	Cy2))
      Dw1)
     (*
      (+
       (*
	(+ (* -6 Ax2 (expt Ay1 3))
	   (* 6 Ax1 (expt Ay1 2) Ay2))
	Bw2 Bx2)
       (*
	(+ (* -3 Aw2 (expt Ay1 3))
	   (* 3 Aw1 (expt Ay1 2) Ay2))
	(expt Bx2 2))
       (*
	(+
	 (*
          (+
           (* 6 Ax1 Ax2 (expt Ay1 2))
           (* -6 (expt Ax1 2) Ay1 Ay2))
          Bw2)
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
               (* 6 Aw1 Ax2))
            (expt Ay1 2))
           (* -12 Aw1 Ax1 Ay1 Ay2))
          Bx2))
	By2)
       (*
	(+
	 (*
          (+ (* -3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
          Ay1)
	 (* 9 Aw1 (expt Ax1 2) Ay2))
	(expt By2 2))
       (*
	(+
	 (* -3 (expt Ax2 2)
            (expt Ay1 3))
	 (* 6 Ax1 Ax2 (expt Ay1 2) Ay2)
	 (* -3 (expt Ax1 2) Ay1
            (expt Ay2 2)))
	Cw2)
       (*
	(+
	 (* -6 Aw2 Ax2 (expt Ay1 3))
	 (*
          (+ (* 6 Aw2 Ax1)
             (* 6 Aw1 Ax2))
          (expt Ay1 2) Ay2)
	 (* -6 Aw1 Ax1 Ay1 (expt Ay2 2)))
	Cx2)
       (*
	(+
	 (*
          (+ (* 6 Aw2 Ax1 Ax2)
             (* 3 Aw1 (expt Ax2 2)))
          (expt Ay1 2))
	 (*
          (+ (* -6 Aw2 (expt Ax1 2))
             (* -12 Aw1 Ax1 Ax2))
          Ay1 Ay2)
	 (* 9 Aw1 (expt Ax1 2)
            (expt Ay2 2)))
	Cy2))
      (expt Dw1 2)))
    Dx1)
   (*
    (+
     (*
      (+
       (* 2 Ay1 Ay2 Bw1 (expt Bw2 2)
	  Bx1)
       (* -2 Ay1 Ay2 (expt Bw1 2) Bw2
	  Bx2))
      By1)
     (*
      (+
       (*
	(+ (* Ax2 Ay1)
	   (* -3 Ax1 Ay2))
	Bw1 (expt Bw2 2))
       (*
	(+ (* -3 Aw2 Ay1)
	   (* Aw1 Ay2))
	(expt Bw2 2) Bx1)
       (*
	(+ (* 2 Aw2 Ay1)
	   (* 2 Aw1 Ay2))
	Bw1 Bw2 Bx2))
      (expt By1 2))
     (*
      (+
       (*
	(+ (* 3 Aw2 Ax1)
	   (* -1 Aw1 Ax2))
	(expt Bw2 2))
       (* -2 Aw1 Aw2 Bw2 Bx2))
      (expt By1 3))
     (*
      (+
       (* -2 Ay1 Ay2 (expt Bw1 2) Bw2
	  Bx1)
       (* 2 Ay1 Ay2 (expt Bw1 3) Bx2)
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
             (* 6 Ax1 Ay2))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* 4 Aw2 Ay1)
             (* -4 Aw1 Ay2))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* -2 Aw2 Ay1)
             (* -2 Aw1 Ay2))
          (expt Bw1 2) Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* -6 Aw2 Ax1)
             (* 2 Aw1 Ax2))
          Bw1 Bw2)
	 (* 2 Aw1 Aw2 Bw2 Bx1)
	 (* 2 Aw1 Aw2 Bw1 Bx2))
	(expt By1 2)))
      By2)
     (*
      (+
       (*
	(+ (* Ax2 Ay1)
	   (* -3 Ax1 Ay2))
	(expt Bw1 3))
       (*
	(+ (* -1 Aw2 Ay1)
	   (* 3 Aw1 Ay2))
	(expt Bw1 2) Bx1)
       (*
	(+
	 (*
          (+ (* 3 Aw2 Ax1)
             (* -1 Aw1 Ax2))
          (expt Bw1 2))
	 (* -2 Aw1 Aw2 Bw1 Bx1))
	By1))
      (expt By2 2))
     (*
      (+
       (* -2 (expt Ay1 2) Ay2
	  (expt Bw2 2) Bx1)
       (* 3 (expt Ay1 2) Ay2 Bw1 Bw2
	  Bx2)
       (*
	(+
	 (*
          (+ (* -1 Ax2 (expt Ay1 2))
             (* 3 Ax1 Ay1 Ay2))
          (expt Bw2 2))
	 (*
          (+ (* -2 Aw2 (expt Ay1 2))
             (* -1 Aw1 Ay1 Ay2))
          Bw2 Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* 3 Ax2 (expt Ay1 2))
             (* -6 Ax1 Ay1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -4 Aw2 (expt Ay1 2))
             (* 8 Aw1 Ay1 Ay2))
          Bw2 Bx1)
	 (*
          (+ (* 3 Aw2 (expt Ay1 2))
             (* -6 Aw1 Ay1 Ay2))
          Bw1 Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 6 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay1)
             (* -6 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* -1 Aw1 Aw2 Ay1)
               (* 4 (expt Aw1 2) Ay2))
            Bx2))
          By1))
	By2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -3 Aw2 Ax1)
               (* -3 Aw1 Ax2))
            Ay1)
           (* 9 Aw1 Ax1 Ay2))
          Bw1)
	 (*
          (+ (* 4 Aw1 Aw2 Ay1)
             (* -6 (expt Aw1 2) Ay2))
          Bx1)
	 (*
          (+ (* -3 Aw1 Aw2 Ax1)
             (* 2 (expt Aw1 2) Ax2))
          By1))
	(expt By2 2)))
      Cw1)
     (*
      (+
       (* -1 Ay1 (expt Ay2 2)
	  (expt Bw1 2) Bx1)
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1 Ay2)
             (* 3 Ax1 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+ (* 4 Aw2 Ay1 Ay2)
             (* -2 Aw1 (expt Ay2 2)))
          Bw1 Bx1))
	By1)
       (*
	(+
	 (*
          (+ (* 2 Aw2 Ax2 Ay1)
             (*
              (+ (* -6 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay2))
          Bw1)
	 (*
          (+ (* -3 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
          Bx1))
	(expt By1 2))
       (*
	(+ (* 3 (expt Aw2 2) Ax1)
	   (* -2 Aw1 Aw2 Ax2))
	(expt By1 3))
       (*
	(+
	 (*
          (+
           (* 3 Ax2 (expt Ay1 2) Ay2)
           (* -3 Ax1 Ay1 (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -4 Aw2 (expt Ay1 2) Ay2)
           (* 4 Aw1 Ay1 (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (* -2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 6 Aw2 Ax1)
               (* -1 Aw1 Ax2))
            Ay1 Ay2)
           (* -3 Aw1 Ax1 (expt Ay2 2)))
          By1))
	Cw1))
      Cw2)
     (*
      (+
       (* -1 (expt Ay1 2) Ay2 Bw1
	  (expt Bw2 2))
       (*
	(+ (* 3 Aw2 (expt Ay1 2))
	   (* -2 Aw1 Ay1 Ay2))
	(expt Bw2 2) By1)
       (*
	(+
	 (*
          (+ (* -2 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -4 Aw1 Aw2 Ay1)
             (* 2 (expt Aw1 2) Ay2))
          Bw2 By1))
	By2)
       (*
	(+
	 (*
          (+ (* 2 Aw1 Aw2 Ay1)
             (* -3 (expt Aw1 2) Ay2))
          Bw1)
	 (* (expt Aw1 2) Aw2 By1))
	(expt By2 2))
       (*
	(+
	 (*
          (+
           (* -2 Aw2 (expt Ay1 2) Ay2)
           (* 2 Aw1 Ay1 (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ay1 2))
           (* -4 Aw1 Aw2 Ay1 Ay2)
           (* (expt Aw1 2)
              (expt Ay2 2)))
          By1))
	Cw2))
      Cx1)
     (*
      (+
       (* Ay1 (expt Ay2 2)
	  (expt Bw1 3))
       (*
	(+ (* -2 Aw2 Ay1 Ay2)
	   (* -1 Aw1 (expt Ay2 2)))
	(expt Bw1 2) By1)
       (*
	(+ (* (expt Aw2 2) Ay1)
	   (* 2 Aw1 Aw2 Ay2))
	Bw1 (expt By1 2))
       (* -1 Aw1 (expt Aw2 2)
	  (expt By1 3))
       (*
	(+
	 (*
          (+
           (* 3 Aw2 (expt Ay1 2) Ay2)
           (* -3 Aw1 Ay1 (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ay1 2))
           (* -1 Aw1 Aw2 Ay1 Ay2)
           (* 2 (expt Aw1 2)
              (expt Ay2 2)))
          By1))
	Cw1))
      Cx2)
     (*
      (+
       (*
	(+ (* -2 Ax2 (expt Ay1 2))
	   (* 3 Ax1 Ay1 Ay2))
	Bw1 (expt Bw2 2))
       (*
	(+ (* 6 Aw2 (expt Ay1 2))
	   (* -4 Aw1 Ay1 Ay2))
	(expt Bw2 2) Bx1)
       (*
	(+ (* -4 Aw2 (expt Ay1 2))
	   (* Aw1 Ay1 Ay2))
	Bw1 Bw2 Bx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -9 Aw2 Ax1)
               (* 3 Aw1 Ax2))
            Ay1)
           (* 3 Aw1 Ax1 Ay2))
          (expt Bw2 2))
	 (*
          (+ (* 6 Aw1 Aw2 Ay1)
             (* -3 (expt Aw1 2) Ay2))
          Bw2 Bx2))
	By1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1)
               (* Aw1 Ax2))
            Ay1)
           (* -6 Aw1 Ax1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -8 Aw1 Aw2 Ay1)
             (* 4 (expt Aw1 2) Ay2))
          Bw2 Bx1)
	 (*
          (+ (* Aw1 Aw2 Ay1)
             (* 2 (expt Aw1 2) Ay2))
          Bw1 Bx2)
	 (*
          (+
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            Bw2)
           (* -3 (expt Aw1 2) Aw2 Bx2))
          By1))
	By2)
       (*
	(+
	 (*
          (+ (* -3 Aw1 Aw2 Ax1)
             (* (expt Aw1 2) Ax2))
          Bw1)
	 (* 2 (expt Aw1 2) Aw2 Bx1))
	(expt By2 2))
       (*
	(+
	 (*
          (+
           (* -4 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 6 Aw2 Ax1)
               (* Aw1 Ax2))
            Ay1 Ay2)
           (* -3 Aw1 Ax1 (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* 6 (expt Aw2 2)
              (expt Ay1 2))
           (* -8 Aw1 Aw2 Ay1 Ay2)
           (* 2 (expt Aw1 2)
              (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+
             (* -9 (expt Aw2 2) Ax1)
             (* 6 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            Ay2))
          By1))
	Cw2)
       (*
	(+
	 (*
          (+
           (* -2 (expt Aw2 2)
              (expt Ay1 2))
           (* Aw1 Aw2 Ay1 Ay2)
           (* (expt Aw1 2)
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* 3 Aw1 (expt Aw2 2) Ay1)
           (* -3 (expt Aw1 2) Aw2 Ay2))
          By1))
	Cx2))
      Cy1)
     (*
      (+
       (*
	(+ (* 2 Ax2 Ay1 Ay2)
	   (* -3 Ax1 (expt Ay2 2)))
	(expt Bw1 3))
       (*
	(+ (* -2 Aw2 Ay1 Ay2)
	   (* 3 Aw1 (expt Ay2 2)))
	(expt Bw1 2) Bx1)
       (*
	(+
	 (*
          (+ (* -2 Aw2 Ax2 Ay1)
             (*
              (+ (* 6 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay2))
          (expt Bw1 2))
	 (*
          (+ (* 2 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
          Bw1 Bx1))
	By1)
       (*
	(+
	 (*
          (+ (* -3 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
          Bw1)
	 (* Aw1 (expt Aw2 2) Bx1))
	(expt By1 2))
       (*
	(+
	 (*
          (+
           (* 3 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -6 Aw2 Ax1)
               (* -6 Aw1 Ax2))
            Ay1 Ay2)
           (* 9 Aw1 Ax1 (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -2 (expt Aw2 2)
              (expt Ay1 2))
           (* 8 Aw1 Aw2 Ay1 Ay2)
           (* -6 (expt Aw1 2)
              (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+
             (* 3 (expt Aw2 2) Ax1)
             (* -1 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
               (* 4 (expt Aw1 2) Ax2))
            Ay2))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ay1 2))
           (* 4 Aw1 Aw2 Ay1 Ay2)
           (* -3 (expt Aw1 2)
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ay1)
           (* 2 (expt Aw1 2) Aw2 Ay2))
          By1))
	Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 3 (expt Aw2 2) Ax1)
             (* Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Ay2))
          Bw1)
	 (*
          (+
           (* -4 Aw1 (expt Aw2 2) Ay1)
           (* 4 (expt Aw1 2) Aw2 Ay2))
          Bx1)
	 (*
          (+
           (* 3 Aw1 (expt Aw2 2) Ax1)
           (* -3 (expt Aw1 2) Aw2 Ax2))
          By1))
	Cy1))
      Cy2)
     (*
      (+
       (*
	(+ (* 3 Ax2 (expt Ay1 3))
	   (* -3 Ax1 (expt Ay1 2) Ay2))
	(expt Bw2 2))
       (*
	(+ (* 6 Aw2 (expt Ay1 3))
	   (* -6 Aw1 (expt Ay1 2) Ay2))
	Bw2 Bx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
               (* -6 Aw1 Ax2))
            (expt Ay1 2))
           (* 12 Aw1 Ax1 Ay1 Ay2))
          Bw2)
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ay1 2))
           (* 6 (expt Aw1 2) Ay1 Ay2))
          Bx2))
	By2)
       (*
	(+
	 (*
          (+ (* 6 Aw1 Aw2 Ax1)
             (* 3 (expt Aw1 2) Ax2))
          Ay1)
	 (* -9 (expt Aw1 2) Ax1 Ay2))
	(expt By2 2))
       (*
	(+
	 (* 6 Aw2 Ax2 (expt Ay1 3))
	 (*
          (+ (* -6 Aw2 Ax1)
             (* -6 Aw1 Ax2))
          (expt Ay1 2) Ay2)
	 (* 6 Aw1 Ax1 Ay1 (expt Ay2 2)))
	Cw2)
       (*
	(+
	 (* 3 (expt Aw2 2)
            (expt Ay1 3))
	 (* -6 Aw1 Aw2 (expt Ay1 2) Ay2)
	 (* 3 (expt Aw1 2) Ay1
            (expt Ay2 2)))
	Cx2)
       (*
	(+
	 (*
          (+ (* -3 (expt Aw2 2) Ax1)
             (* -6 Aw1 Aw2 Ax2))
          (expt Ay1 2))
	 (*
          (+ (* 12 Aw1 Aw2 Ax1)
             (* 6 (expt Aw1 2) Ax2))
          Ay1 Ay2)
	 (* -9 (expt Aw1 2) Ax1
            (expt Ay2 2)))
	Cy2))
      Dw1))
    (expt Dx1 2))
   (*
    (+
     (*
      (+ (* -3 Aw2 (expt Ay1 3))
	 (* 3 Aw1 (expt Ay1 2) Ay2))
      (expt Bw2 2))
     (*
      (+
       (* 6 Aw1 Aw2 (expt Ay1 2))
       (* -6 (expt Aw1 2) Ay1 Ay2))
      Bw2 By2)
     (*
      (+
       (* -3 (expt Aw1 2) Aw2 Ay1)
       (* 3 (expt Aw1 3) Ay2))
      (expt By2 2))
     (*
      (+
       (* -3 (expt Aw2 2)
	  (expt Ay1 3))
       (* 6 Aw1 Aw2 (expt Ay1 2) Ay2)
       (* -3 (expt Aw1 2) Ay1
	  (expt Ay2 2)))
      Cw2)
     (*
      (+
       (* 3 Aw1 (expt Aw2 2)
	  (expt Ay1 2))
       (* -6 (expt Aw1 2) Aw2 Ay1 Ay2)
       (* 3 (expt Aw1 3)
	  (expt Ay2 2)))
      Cy2))
    (expt Dx1 3))
   (*
    (+
     (*
      (+
       (* Ay1 Ay2 Bw2 (expt Bx1 2)
	  Bx2)
       (* -1 Ay1 Ay2 Bw1 Bx1
	  (expt Bx2 2))
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
             (* -1 Ax1 Ay2))
          Bw2 Bx1 Bx2)
	 (*
          (+
           (*
            (+ (* 3 Ax2 Ay1)
               (* -1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -1 Aw2 Ay1)
               (* 2 Aw1 Ay2))
            Bx1))
          (expt Bx2 2)))
	By1)
       (*
	(+ (* 2 Ax1 Ax2 Bw2 Bx2)
	   (*
            (+ (* Aw2 Ax1)
               (* -3 Aw1 Ax2))
            (expt Bx2 2)))
	(expt By1 2))
       (*
	(+
	 (* Ax2 Ay1 Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1)
               (* 2 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+ (* Aw2 Ay1)
               (* -2 Aw1 Ay2))
            (expt Bx1 2)))
          Bx2)
	 (*
          (+ (* -1 Ax1 Ax2 Bw2 Bx1)
             (*
              (+ (* -2 Ax1 Ax2 Bw1)
		 (*
		  (+ (* -1 Aw2 Ax1)
		     (* 4 Aw1 Ax2))
		  Bx1))
              Bx2))
          By1))
	By2)
       (*
	(+ (* Ax1 Ax2 Bw1 Bx1)
	   (* -1 Aw1 Ax2 (expt Bx1 2)))
	(expt By2 2)))
      (expt Cw1 2))
     (*
      (+
       (*
	(+ (* -3 Ax2 (expt Ay1 2))
	   (* 2 Ax1 Ay1 Ay2))
	(expt Bx2 2))
       (*
	(+ (* 4 Ax1 Ax2 Ay1)
	   (* -2 (expt Ax1 2) Ay2))
	Bx2 By2)
       (* -1 (expt Ax1 2) Ax2
	  (expt By2 2)))
      (expt Cw1 3))
     (*
      (+
       (* Ax2 Ay1 Ay2 (expt Bx1 2))
       (*
	(+ (* -1 (expt Ax2 2) Ay1)
	   (* -1 Ax1 Ax2 Ay2))
	Bx1 By1)
       (* Ax1 (expt Ax2 2)
	  (expt By1 2)))
      (expt Cw1 2) Cw2)
     (*
      (+
       (*
	(+
	 (* -1 Ay1 Ay2 (expt Bw2 2)
            (expt Bx1 2))
	 (* Ay1 Ay2 (expt Bw1 2)
            (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1)
               (* Ax1 Ay2))
            (expt Bw2 2) Bx1)
           (*
            (+
             (*
              (+ (* -4 Ax2 Ay1)
		 (* 3 Ax1 Ay2))
              Bw1 Bw2)
             (*
              (+ (* 4 Aw2 Ay1)
		 (* -3 Aw1 Ay2))
              Bw2 Bx1))
            Bx2)
           (*
            (+ (* -2 Aw2 Ay1)
               (* -1 Aw1 Ay2))
            Bw1 (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -2 Ax1 Ax2 (expt Bw2 2))
           (*
            (+ (* -4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Bw2 Bx2)
           (* 2 Aw1 Aw2 (expt Bx2 2)))
          (expt By1 2))
	 (*
          (+
           (* -2 Ax1 Ay2 Bw1 Bw2 Bx1)
           (*
            (+ (* -2 Aw2 Ay1)
               (* 2 Aw1 Ay2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1)
		 (* -2 Ax1 Ay2))
              (expt Bw1 2))
             (* 2 Aw1 Ay2 Bw1 Bx1))
            Bx2)
           (*
            (+ (* 3 Ax1 Ax2 Bw1 Bw2)
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -3 Aw1 Ax2))
		Bw2 Bx1)
               (*
		(+
		 (*
		  (+ (* 3 Aw2 Ax1)
		     (* -2 Aw1 Ax2))
		  Bw1)
		 (* -3 Aw1 Aw2 Bx1))
		Bx2))
            By1))
          By2)
	 (*
          (+
           (* -1 Ax1 Ax2 (expt Bw1 2))
           (*
            (+ (* -1 Aw2 Ax1)
               (* Aw1 Ax2))
            Bw1 Bx1)
           (* Aw1 Aw2 (expt Bx1 2)))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (*
          (+ (* 6 Ax2 (expt Ay1 2))
             (* -4 Ax1 Ay1 Ay2))
          Bw2 Bx2)
	 (*
          (+ (* 3 Aw2 (expt Ay1 2))
             (* -2 Aw1 Ay1 Ay2))
          (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* -4 Ax1 Ax2 Ay1)
               (* 2 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay1)
             (* 4 Aw1 Ax1 Ay2))
            Bx2))
          By2)
	 (*
          (+ (* Aw2 (expt Ax1 2))
             (* 2 Aw1 Ax1 Ax2))
          (expt By2 2)))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (* -1 Ax1 (expt Ay2 2) Bw1
              Bx1)
           (*
            (+ (* -2 Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            (expt Bx1 2))
           (*
            (+
             (*
              (+
               (* -2 (expt Ax2 2) Ay1)
               (* 3 Ax1 Ax2 Ay2))
              Bw1)
             (*
              (+ (* 4 Aw2 Ax2 Ay1)
		 (*
		  (+ (* 2 Aw2 Ax1)
		     (* -3 Aw1 Ax2))
		  Ay2))
              Bx1))
            By1)
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            (expt By1 2)))
          Cw1)
	 (*
          (+
           (* 3 (expt Ax2 2)
              (expt Ay1 2))
           (* -4 Ax1 Ax2 Ay1 Ay2)
           (* (expt Ax1 2)
              (expt Ay2 2)))
          (expt Cw1 2)))
	Cw2))
      Cx1)
     (*
      (+
       (* Ay1 Ay2 Bw1 (expt Bw2 2)
	  Bx1)
       (* -1 Ay1 Ay2 (expt Bw1 2) Bw2
	  Bx2)
       (*
	(+
	 (*
          (+ (* Ax2 Ay1)
             (* -2 Ax1 Ay2))
          Bw1 (expt Bw2 2))
	 (*
          (+ (* -3 Aw2 Ay1)
             (* Aw1 Ay2))
          (expt Bw2 2) Bx1)
	 (*
          (+ (* 2 Aw2 Ay1)
             (* Aw1 Ay2))
          Bw1 Bw2 Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* 3 Aw2 Ax1)
             (* -1 Aw1 Ax2))
          (expt Bw2 2))
	 (* -2 Aw1 Aw2 Bw2 Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* -1 Ax2 Ay1)
             (* 2 Ax1 Ay2))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* 2 Aw2 Ay1)
             (* -2 Aw1 Ay2))
          Bw1 Bw2 Bx1)
	 (* -1 Aw2 Ay1 (expt Bw1 2) Bx2)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1)
               (* Aw1 Ax2))
            Bw1 Bw2)
           (* 2 Aw1 Aw2 Bw2 Bx1)
           (* Aw1 Aw2 Bw1 Bx2))
          By1))
	By2)
       (*
	(+
	 (* Aw2 Ax1 (expt Bw1 2))
	 (* -1 Aw1 Aw2 Bw1 Bx1))
	(expt By2 2))
       (*
	(+
	 (*
          (+ (* -3 Ax2 (expt Ay1 2))
             (* 2 Ax1 Ay1 Ay2))
          (expt Bw2 2))
	 (*
          (+ (* -6 Aw2 (expt Ay1 2))
             (* 4 Aw1 Ay1 Ay2))
          Bw2 Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay1)
             (* -4 Aw1 Ax1 Ay2))
            Bw2)
           (*
            (+ (* 4 Aw1 Aw2 Ay1)
               (* -2 (expt Aw1 2) Ay2))
            Bx2))
          By2)
	 (*
          (+ (* -2 Aw1 Aw2 Ax1)
             (* -1 (expt Aw1 2) Ax2))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (*
          (+ (* -1 Ax2 Ay1 Ay2)
             (* Ax1 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+ (* 2 Aw2 Ay1 Ay2)
             (* -1 Aw1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax2 Ay1)
               (*
		(+ (* -4 Aw2 Ax1)
		   (* Aw1 Ax2))
		Ay2))
            Bw1)
           (*
            (+
             (* -3 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
            Bx1))
          By1)
	 (*
          (+ (* 3 (expt Aw2 2) Ax1)
             (* -2 Aw1 Aw2 Ax2))
          (expt By1 2))
	 (*
          (+
           (* -6 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Ay1 Ay2)
           (* -2 Aw1 Ax1 (expt Ay2 2)))
          Cw1))
	Cw2))
      (expt Cx1 2))
     (*
      (+
       (*
	(+ (* 3 Aw2 (expt Ay1 2))
	   (* -2 Aw1 Ay1 Ay2))
	(expt Bw2 2))
       (*
	(+ (* -4 Aw1 Aw2 Ay1)
	   (* 2 (expt Aw1 2) Ay2))
	Bw2 By2)
       (* (expt Aw1 2) Aw2
	  (expt By2 2))
       (*
	(+
	 (* 3 (expt Aw2 2)
            (expt Ay1 2))
	 (* -4 Aw1 Aw2 Ay1 Ay2)
	 (* (expt Aw1 2)
            (expt Ay2 2)))
	Cw2))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1 Ay2)
             (* Ax1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+ (* Aw2 Ay1 Ay2)
             (* -1 Aw1 (expt Ay2 2)))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* 3 (expt Ax2 2) Ay1)
             (* -2 Ax1 Ax2 Ay2))
            Bw1)
           (*
            (+ (* -2 Aw2 Ax2 Ay1)
               (*
		(+ (* -1 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Ay2))
            Bx1))
          By1)
	 (*
          (+ (* 2 Aw2 Ax1 Ax2)
             (* -3 Aw1 (expt Ax2 2)))
          (expt By1 2)))
	(expt Cw1 2))
       (*
	(+
	 (* -3 (expt Ax2 2)
            (expt Ay1 2))
	 (* 4 Ax1 Ax2 Ay1 Ay2)
	 (* -1 (expt Ax1 2)
            (expt Ay2 2)))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (* Aw1 (expt Ay2 2) Bw1 Bx1)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax2 Ay1)
		 (*
		  (+ (* 3 Aw2 Ax1)
		     (* -2 Aw1 Ax2))
		  Ay2))
              Bw1)
             (*
              (+
               (* 2 (expt Aw2 2) Ay1)
               (* -3 Aw1 Aw2 Ay2))
              Bx1))
            By1)
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            (expt By1 2)))
          Cw1)
	 (*
          (+
           (* 6 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Ay1 Ay2)
           (* 2 Aw1 Ax1 (expt Ay2 2)))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (* -1 Aw2 Ay1 Ay2 (expt Bw1 2))
	 (*
          (+ (* (expt Aw2 2) Ay1)
             (* Aw1 Aw2 Ay2))
          Bw1 By1)
	 (* -1 Aw1 (expt Aw2 2)
            (expt By1 2))
	 (*
          (+
           (* -3 (expt Aw2 2)
              (expt Ay1 2))
           (* 4 Aw1 Aw2 Ay1 Ay2)
           (* -1 (expt Aw1 2)
              (expt Ay2 2)))
          Cw1))
	(expt Cx1 2)))
      Cx2)
     (*
      (+
       (*
	(+
	 (* -1 Ax2 Ay1 (expt Bw2 2)
            (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
               (* -1 Ax1 Ay2))
            Bw1 Bw2 Bx1)
           (*
            (+ (* -2 Aw2 Ay1)
               (* Aw1 Ay2))
            Bw2 (expt Bx1 2)))
          Bx2)
	 (*
          (+
           (*
            (+ (* -3 Ax2 Ay1)
               (* Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ay1)
               (* -1 Aw1 Ay2))
            Bw1 Bx1))
          (expt Bx2 2))
	 (*
          (+
           (* Ax1 Ax2 (expt Bw2 2) Bx1)
           (*
            (+ (* -2 Ax1 Ax2 Bw1 Bw2)
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Bw2 Bx1))
            Bx2)
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              Bw1)
             (* -1 Aw1 Aw2 Bx1))
            (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -1 Ax1 Ax2 Bw1 Bw2 Bx1)
           (* Aw1 Ax2 Bw2 (expt Bx1 2))
           (*
            (+
             (* 2 Ax1 Ax2 (expt Bw1 2))
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw1 Bx1)
             (* Aw1 Aw2 (expt Bx1 2)))
            Bx2))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+ (* -4 Ax1 Ax2 Ay1)
             (* 2 (expt Ax1 2) Ay2))
          Bw2 Bx2)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
               (* 6 Aw1 Ax2))
            Ay1)
           (* -2 Aw1 Ax1 Ay2))
          (expt Bx2 2))
	 (*
          (+
           (* 2 (expt Ax1 2) Ax2 Bw2)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Bx2))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 2 (expt Ax2 2) Ay1)
             (* -1 Ax1 Ax2 Ay2))
            Bw1 Bx1)
           (*
            (+ (* -2 Aw2 Ax2 Ay1)
               (* Aw1 Ax2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (* -1 Ax1 (expt Ax2 2) Bw1)
             (*
              (+ (* 2 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Bx1))
            By1))
          Cw1)
	 (*
          (+
           (* -2 Ax1 (expt Ax2 2) Ay1)
           (* 2 (expt Ax1 2) Ax2 Ay2))
          (expt Cw1 2)))
	Cw2)
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
             (* Ax1 Ay2))
          Bw1 (expt Bw2 2) Bx1)
	 (*
          (+ (* 3 Aw2 Ay1)
             (* -1 Aw1 Ay2))
          (expt Bw2 2) (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1)
               (* -1 Ax1 Ay2))
            (expt Bw1 2) Bw2)
           (*
            (+ (* -4 Aw2 Ay1)
               (* Aw1 Ay2))
            Bw1 Bw2 Bx1))
          Bx2)
	 (* Aw2 Ay1 (expt Bw1 2)
            (expt Bx2 2))
	 (*
          (+
           (* Ax1 Ax2 Bw1 (expt Bw2 2))
           (*
            (+ (* -3 Aw2 Ax1)
               (* Aw1 Ax2))
            (expt Bw2 2) Bx1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Bw1 Bw2)
             (* 2 Aw1 Aw2 Bw2 Bx1))
            Bx2)
           (* -1 Aw1 Aw2 Bw1
              (expt Bx2 2)))
          By1)
	 (*
          (+
           (* -1 Ax1 Ax2 (expt Bw1 2)
              Bw2)
           (*
            (+ (* 2 Aw2 Ax1)
               (* Aw1 Ax2))
            Bw1 Bw2 Bx1)
           (* -2 Aw1 Aw2 Bw2
              (expt Bx1 2))
           (*
            (+
             (* -1 Aw2 Ax1 (expt Bw1 2))
             (* Aw1 Aw2 Bw1 Bx1))
            Bx2))
          By2)
	 (*
          (+
           (*
            (+ (* 4 Ax1 Ax2 Ay1)
               (* -2 (expt Ax1 2) Ay2))
            (expt Bw2 2))
           (*
            (+ (* 8 Aw2 Ax1)
               (* -8 Aw1 Ax2))
            Ay1 Bw2 Bx2)
           (*
            (+ (* -4 Aw1 Aw2 Ay1)
               (* 2 (expt Aw1 2) Ay2))
            (expt Bx2 2))
           (*
            (+
             (* -4 Aw2 (expt Ax1 2) Bw2)
             (* 4 (expt Aw1 2) Ax2 Bx2))
            By2))
          Cw1)
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* -1 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -4 Aw2 Ax2 Ay1)
               (*
		(+ (* 2 Aw2 Ax1)
		   (* Aw1 Ax2))
		Ay2))
            Bw1 Bx1)
           (*
            (+
             (* 3 (expt Aw2 2) Ay1)
             (* -2 Aw1 Aw2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Bw1)
             (*
              (+
               (* -3 (expt Aw2 2) Ax1)
               (* 2 Aw1 Aw2 Ax2))
              Bx1))
            By1)
           (*
            (+
             (*
              (+ (* 8 Aw2 Ax1 Ax2)
		 (* -4 Aw1 (expt Ax2 2)))
              Ay1)
             (* -4 Aw2 (expt Ax1 2) Ay2))
            Cw1))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Ay1)
           (* 2 Aw1 Ax1 Ay2))
          (expt Bw2 2))
	 (*
          (+ (* 4 Aw1 Aw2 Ay1)
             (* -2 (expt Aw1 2) Ay2))
          Bw2 Bx2)
	 (*
          (+
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            Bw2)
           (* -2 (expt Aw1 2) Aw2 Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (* -6 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            Ay2))
          Cw2))
	(expt Cx1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -3 (expt Ax2 2) Ay1)
             (* 2 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 4 Aw2 Ax2 Ay1)
               (*
		(+ (* -1 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay2))
            Bw1 Bx1)
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* Aw1 Aw2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1 Ax2)
		 (* 3 Aw1 (expt Ax2 2)))
              Bw1)
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Bx1))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 6 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Ay2))
          (expt Cw1 2))
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax2 Ay1)
               (* -1 Aw2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+
             (* -2 (expt Aw2 2) Ay1)
             (* Aw1 Aw2 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Bw1)
             (* Aw1 (expt Aw2 2) Bx1))
            By1)
           (*
            (+
             (*
              (+
               (* 4 (expt Aw2 2) Ax1)
               (* -8 Aw1 Aw2 Ax2))
              Ay1)
             (* 4 (expt Aw1 2) Ax2 Ay2))
            Cw1))
          Cx1)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ay1)
           (* -2 (expt Aw1 2) Aw2 Ay2))
          (expt Cx1 2)))
	Cx2))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -1 (expt Ax1 2) Ax2
            (expt Bw2 2))
	 (*
          (+ (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
          Bw2 Bx2)
	 (*
          (+ (* 2 Aw1 Aw2 Ax1)
             (* -3 (expt Aw1 2) Ax2))
          (expt Bx2 2)))
	Cw1)
       (*
	(+
	 (* -2 Aw2 (expt Ax1 2) Ax2)
	 (* 2 Aw1 Ax1 (expt Ax2 2)))
	Cw1 Cw2)
       (*
	(+
	 (*
          (+ (* 3 Aw2 (expt Ax1 2))
             (* -2 Aw1 Ax1 Ax2))
          (expt Bw2 2))
	 (*
          (+ (* -4 Aw1 Aw2 Ax1)
             (* 2 (expt Aw1 2) Ax2))
          Bw2 Bx2)
	 (* (expt Aw1 2) Aw2
            (expt Bx2 2))
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ax1 2))
           (* -4 Aw1 Aw2 Ax1 Ax2)
           (* (expt Aw1 2)
              (expt Ax2 2)))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ax1 2))
           (* 4 Aw1 Aw2 Ax1 Ax2)
           (* -3 (expt Aw1 2)
              (expt Ax2 2)))
          Cw1)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ax1)
           (* 2 (expt Aw1 2) Aw2 Ax2))
          Cx1))
	Cx2))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (*
          (+ (* -1 (expt Ax2 2) Ay1)
             (* 2 Ax1 Ax2 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* Aw2 Ax2 Ay1)
             (* -2 Aw1 Ax2 Ay2))
          (expt Bx1 2))
	 (*
          (+
           (* -1 Ax1 (expt Ax2 2) Bw1)
           (*
            (+ (* -1 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Bx1))
          By1))
	(expt Cw1 2))
       (*
	(+
	 (* 2 Ax1 (expt Ax2 2) Ay1)
	 (* -2 (expt Ax1 2) Ax2 Ay2))
	(expt Cw1 3))
       (*
	(+
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* -2 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -2 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Ay2 Bw1 Bx1)
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 3 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Bw1)
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -3 Aw1 Aw2 Ax2))
              Bx1))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Ay2))
          (expt Cw1 2)))
	Cx1)
       (*
	(+
	 (*
          (+ (* -1 Aw2 Ax2 Ay1)
             (* 2 Aw2 Ax1 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* (expt Aw2 2) Ay1)
             (* -2 Aw1 Aw2 Ay2))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* Aw1 Aw2 Ax2))
            Bw1)
           (* Aw1 (expt Aw2 2) Bx1))
          By1)
	 (*
          (+
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            Ay2))
          Cw1))
	(expt Cx1 2))
       (*
	(+
	 (* -2 Aw1 (expt Aw2 2) Ay1)
	 (* 2 (expt Aw1 2) Aw2 Ay2))
	(expt Cx1 3))
       (*
	(+
	 (*
          (+
           (* Ax1 (expt Ax2 2)
              (expt Bw1 2))
           (*
            (+ (* -1 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Bw1 Bx1)
           (* Aw1 Aw2 Ax2 (expt Bx1 2)))
          Cw1)
	 (*
          (+
           (* 2 Aw2 (expt Ax1 2) Ax2)
           (* -2 Aw1 Ax1 (expt Ax2 2)))
          (expt Cw1 2))
	 (*
          (+
           (* -1 Aw2 Ax1 Ax2
              (expt Bw1 2))
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* Aw1 Aw2 Ax2))
            Bw1 Bx1)
           (* -1 Aw1 (expt Aw2 2)
              (expt Bx1 2))
           (*
            (+
             (* -2 (expt Aw2 2)
		(expt Ax1 2))
             (* 2 (expt Aw1 2)
		(expt Ax2 2)))
            Cw1))
          Cx1)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ax1)
           (* -2 (expt Aw1 2) Aw2 Ax2))
          (expt Cx1 2)))
	Cy1))
      Cy2)
     (*
      (+
       (* 2 Ay1 Ay2 (expt Bw2 2)
	  (expt Bx1 3))
       (* -4 Ay1 Ay2 Bw1 Bw2
	  (expt Bx1 2) Bx2)
       (* 2 Ay1 Ay2 (expt Bw1 2) Bx1
	  (expt Bx2 2))
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1)
             (* -2 Ax1 Ay2))
          (expt Bw2 2) (expt Bx1 2))
	 (*
          (+
           (* 8 Ax2 Ay1 Bw1 Bw2 Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
               (* 4 Aw1 Ay2))
            Bw2 (expt Bx1 2)))
          Bx2)
	 (*
          (+
           (*
            (+ (* -6 Ax2 Ay1)
               (* 2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 4 Aw2 Ay1)
               (* -4 Aw1 Ay2))
            Bw1 Bx1))
          (expt Bx2 2)))
	By1)
       (*
	(+
	 (* 2 Ax1 Ax2 (expt Bw2 2) Bx1)
	 (*
          (+ (* -4 Ax1 Ax2 Bw1 Bw2)
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Bw2 Bx1))
          Bx2)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax1)
               (* 6 Aw1 Ax2))
            Bw1)
           (* -2 Aw1 Aw2 Bx1))
          (expt Bx2 2)))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1)
             (* 4 Ax1 Ay2))
          Bw1 Bw2 (expt Bx1 2))
	 (*
          (+ (* 4 Aw2 Ay1)
             (* -4 Aw1 Ay2))
          Bw2 (expt Bx1 3))
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
               (* -4 Ax1 Ay2))
            (expt Bw1 2) Bx1)
           (*
            (+ (* -4 Aw2 Ay1)
               (* 4 Aw1 Ay2))
            Bw1 (expt Bx1 2)))
          Bx2)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Bw2 (expt Bx1 2))
           (*
            (+
             (* 4 Ax1 Ax2 (expt Bw1 2))
             (* -8 Aw1 Ax2 Bw1 Bx1)
             (* 4 Aw1 Aw2 (expt Bx1 2)))
            Bx2))
          By1))
	By2)
       (*
	(+
	 (* -2 Ax1 Ax2 (expt Bw1 2) Bx1)
	 (*
          (+ (* 2 Aw2 Ax1)
             (* 2 Aw1 Ax2))
          Bw1 (expt Bx1 2))
	 (* -2 Aw1 Aw2 (expt Bx1 3)))
	(expt By2 2))
       (*
	(+
	 (*
          (+ (* -6 Ax2 (expt Ay1 2))
             (* 5 Ax1 Ay1 Ay2))
          Bw2 Bx1 Bx2)
	 (*
          (+
           (*
            (+
             (* 9 Ax2 (expt Ay1 2))
             (* -6 Ax1 Ay1 Ay2))
            Bw1)
           (*
            (+
             (* -3 Aw2 (expt Ay1 2))
             (* Aw1 Ay1 Ay2))
            Bx1))
          (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* 2 Ax1 Ax2 Ay1)
               (* -1 (expt Ax1 2) Ay2))
            Bw2 Bx2)
           (*
            (+
             (*
              (+ (* Aw2 Ax1)
		 (* -3 Aw1 Ax2))
              Ay1)
             (* Aw1 Ax1 Ay2))
            (expt Bx2 2)))
          By1)
	 (*
          (+
           (*
            (+ (* 5 Ax1 Ax2 Ay1)
               (* -4 (expt Ax1 2) Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* -12 Ax1 Ax2 Ay1)
		 (* 6 (expt Ax1 2) Ay2))
              Bw1)
             (*
              (+
               (*
		(+ (* 5 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay1)
               (* -2 Aw1 Ax1 Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (* -1 (expt Ax1 2) Ax2 Bw2)
             (*
              (+
               (* -1 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Bx2))
            By1))
          By2)
	 (*
          (+
           (* 3 (expt Ax1 2) Ax2 Bw1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            Bx1))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1 Ay2)
             (* 2 Ax1 (expt Ay2 2)))
          Bw1 (expt Bx1 2))
	 (*
          (+ (* 4 Aw2 Ay1 Ay2)
             (* -2 Aw1 (expt Ay2 2)))
          (expt Bx1 3))
	 (*
          (+
           (* 4 (expt Ax2 2) Ay1 Bw1 Bx1)
           (*
            (+ (* -4 Aw2 Ax2 Ay1)
               (*
		(+ (* -4 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Ay2))
            (expt Bx1 2)))
          By1)
	 (*
          (+
           (* -2 Ax1 (expt Ax2 2) Bw1)
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* -3 (expt Ax2 2)
		(expt Ay1 2))
             (* 5 Ax1 Ax2 Ay1 Ay2)
             (* -2 (expt Ax1 2)
		(expt Ay2 2)))
            Bx1)
           (*
            (+
             (* Ax1 (expt Ax2 2) Ay1)
             (* -1 (expt Ax1 2) Ax2 Ay2))
            By1))
          Cw1))
	Cw2)
       (*
	(+
	 (*
          (+ (* 3 Ax2 (expt Ay1 2))
             (* -6 Ax1 Ay1 Ay2))
          (expt Bw2 2) Bx1)
	 (*
          (+
           (*
            (+
             (* -6 Ax2 (expt Ay1 2))
             (* 7 Ax1 Ay1 Ay2))
            Bw1 Bw2)
           (* 6 Aw2 (expt Ay1 2) Bw2
              Bx1))
          Bx2)
	 (*
          (+ (* -3 Aw2 (expt Ay1 2))
             (* -1 Aw1 Ay1 Ay2))
          Bw1 (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* -1 Ax1 Ax2 Ay1)
               (* 4 (expt Ax1 2) Ay2))
            (expt Bw2 2))
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1)
             (* -7 Aw1 Ax1 Ay2))
            Bw2 Bx2)
           (*
            (+ (* Aw1 Aw2 Ay1)
               (* 3 (expt Aw1 2) Ay2))
            (expt Bx2 2)))
          By1)
	 (*
          (+
           (*
            (+ (* 7 Ax1 Ax2 Ay1)
               (* -8 (expt Ax1 2) Ay2))
            Bw1 Bw2)
           (*
            (+ (* -12 Aw2 Ax1 Ay1)
               (* 12 Aw1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (*
		(+ (* 7 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay1)
               (* 2 Aw1 Ax1 Ay2))
              Bw1)
             (* -6 (expt Aw1 2) Ay2 Bx1))
            Bx2)
           (*
            (+
             (*
              (+
               (* 8 Aw2 (expt Ax1 2))
               (* -7 Aw1 Ax1 Ax2))
              Bw2)
             (*
              (+ (* -7 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Bx2))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* -4 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            Bx1))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* -3 (expt Ax2 2)
		(expt Ay1 2))
             (* 7 Ax1 Ax2 Ay1 Ay2)
             (* -4 (expt Ax1 2)
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 6 Aw2 Ax2 (expt Ay1 2))
             (* -12 Aw2 Ax1 Ay1 Ay2)
             (* 6 Aw1 Ax1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1 Ax2)
		 (* Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* 8 Aw2 (expt Ax1 2))
               (* -7 Aw1 Ax1 Ax2))
              Ay2))
            By1))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* 4 Ax2 Ay1 Ay2)
             (* -2 Ax1 (expt Ay2 2)))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* -4 Aw2 Ay1 Ay2)
             (* 2 Aw1 (expt Ay2 2)))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -6 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 8 Aw2 Ax2 Ay1)
               (* -8 Aw1 Ax2 Ay2))
            Bw1 Bx1)
           (*
            (+
             (* -2 (expt Aw2 2) Ay1)
             (* 4 Aw1 Aw2 Ay2))
            (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 6 Aw1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* 9 (expt Ax2 2)
		(expt Ay1 2))
             (* -12 Ax1 Ax2 Ay1 Ay2)
             (* 3 (expt Ax1 2)
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -6 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* 5 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1 Ay2)
             (* -1 Aw1 Ax1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1 Ax2)
		 (* -3 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -1 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Ay2))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* 7 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1 Ay2)
             (* Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 3 (expt Aw2 2)
		(expt Ay1 2))
             (* -3 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+
               (* -1 (expt Aw2 2) Ax1)
               (* 2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -7 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Ay2))
            By1))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* Ax1 Ax2 Ay1)
             (* 2 (expt Ax1 2) Ay2))
          (expt Bw2 2) Bx1)
	 (*
          (+
           (*
            (+ (* -2 Ax1 Ax2 Ay1)
               (* (expt Ax1 2) Ay2))
            Bw1 Bw2)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1)
             (* -5 Aw1 Ax1 Ay2))
            Bw2 Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -1 Aw2 Ax1)
		 (* 3 Aw1 Ax2))
              Ay1)
             (* -1 Aw1 Ax1 Ay2))
            Bw1)
           (*
            (+ (* -1 Aw1 Aw2 Ay1)
               (* 3 (expt Aw1 2) Ay2))
            Bx1))
          (expt Bx2 2))
	 (*
          (+
           (* -3 (expt Ax1 2) Ax2
              (expt Bw2 2))
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 12 Aw1 Ax1 Ax2))
            Bw2 Bx2)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
               (* -9 (expt Aw1 2) Ax2))
            (expt Bx2 2)))
          By1)
	 (*
          (+
           (* (expt Ax1 2) Ax2 Bw1 Bw2)
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -5 Aw1 Ax1 Ax2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Bw1)
             (*
              (+ (* -5 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Bx1))
            Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (* -1 Ax1 (expt Ax2 2) Ay1)
             (* (expt Ax1 2) Ax2 Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* 4 Aw2 (expt Ax1 2))
               (* -5 Aw1 Ax1 Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* -6 Aw2 (expt Ax1 2) Ax2)
             (* 6 Aw1 Ax1 (expt Ax2 2)))
            By1))
          Cw2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1 Ax2)
		 (* 3 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -5 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 12 Aw1 Aw2 Ax1 Ax2)
             (* -9 (expt Aw1 2)
		(expt Ax2 2)))
            By1))
          Cx2))
	Cy1)
       (*
	(+
	 (*
          (+ (* 2 (expt Ax2 2) Ay1)
             (* -4 Ax1 Ax2 Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* -4 Aw2 Ax2 Ay1)
             (*
              (+ (* 4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay2))
          Bw1 (expt Bx1 2))
	 (*
          (+ (* 2 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
          (expt Bx1 3))
	 (*
          (+
           (* 2 Ax1 (expt Ax2 2)
              (expt Bw1 2))
           (* -4 Aw1 (expt Ax2 2) Bw1
              Bx1)
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+
             (* -6 Ax1 (expt Ax2 2) Ay1)
             (* 6 (expt Ax1 2) Ax2 Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* 5 Aw2 Ax1 Ax2)
		 (* Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -4 Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* -1 Aw2 (expt Ax1 2) Ax2)
             (* Aw1 Ax1 (expt Ax2 2)))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 7 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -8 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (* -6 (expt Aw2 2) Ax1 Ay1)
             (*
              (+ (* 12 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* 4 (expt Aw2 2)
		(expt Ax1 2))
             (* -7 Aw1 Aw2 Ax1 Ax2)
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            By1))
          Cx1)
	 (*
          (+
           (*
            (+
             (* Aw2 (expt Ax1 2) Ax2)
             (* -1 Aw1 Ax1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2)
		(expt Ax1 2))
             (* -5 Aw1 Aw2 Ax1 Ax2)
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            Bx1))
          Cy1))
	Cy2))
      Dw1)
     (*
      (+
       (*
	(+
	 (* 6 Ax1 Ax2 (expt Ay1 2))
	 (* -6 (expt Ax1 2) Ay1 Ay2))
	Bw2 Bx2)
       (*
	(+
	 (*
          (+ (* 3 Aw2 Ax1)
             (* -9 Aw1 Ax2))
          (expt Ay1 2))
	 (* 6 Aw1 Ax1 Ay1 Ay2))
	(expt Bx2 2))
       (*
	(+
	 (*
          (+
           (* -6 (expt Ax1 2) Ax2 Ay1)
           (* 6 (expt Ax1 3) Ay2))
          Bw2)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 12 Aw1 Ax1 Ax2))
            Ay1)
           (* -6 Aw1 (expt Ax1 2) Ay2))
          Bx2))
	By2)
       (*
	(+ (* 3 Aw2 (expt Ax1 3))
	   (* -3 Aw1 (expt Ax1 2) Ax2))
	(expt By2 2))
       (*
	(+
	 (* 3 Ax1 (expt Ax2 2)
            (expt Ay1 2))
	 (* -6 (expt Ax1 2) Ax2 Ay1 Ay2)
	 (* 3 (expt Ax1 3)
            (expt Ay2 2)))
	Cw2)
       (*
	(+
	 (*
          (+ (* 6 Aw2 Ax1 Ax2)
             (* -9 Aw1 (expt Ax2 2)))
          (expt Ay1 2))
	 (*
          (+ (* -6 Aw2 (expt Ax1 2))
             (* 12 Aw1 Ax1 Ax2))
          Ay1 Ay2)
	 (* -3 Aw1 (expt Ax1 2)
            (expt Ay2 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (* -6 Aw2 (expt Ax1 2) Ax2)
           (* 6 Aw1 Ax1 (expt Ax2 2)))
          Ay1)
	 (*
          (+ (* 6 Aw2 (expt Ax1 3))
             (* -6 Aw1 (expt Ax1 2) Ax2))
          Ay2))
	Cy2))
      (expt Dw1 2))
     (*
      (+
       (* -2 Ay1 Ay2 Bw1 (expt Bw2 2)
	  (expt Bx1 2))
       (* 4 Ay1 Ay2 (expt Bw1 2) Bw2
	  Bx1 Bx2)
       (* -2 Ay1 Ay2 (expt Bw1 3)
	  (expt Bx2 2))
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1)
             (* 4 Ax1 Ay2))
          Bw1 (expt Bw2 2) Bx1)
	 (*
          (+ (* 6 Aw2 Ay1)
             (* -2 Aw1 Ay2))
          (expt Bw2 2) (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1)
               (* -4 Ax1 Ay2))
            (expt Bw1 2) Bw2)
           (* -8 Aw2 Ay1 Bw1 Bw2 Bx1))
          Bx2)
	 (*
          (+ (* 2 Aw2 Ay1)
             (* 2 Aw1 Ay2))
          (expt Bw1 2) (expt Bx2 2)))
	By1)
       (*
	(+
	 (* 2 Ax1 Ax2 Bw1 (expt Bw2 2))
	 (*
          (+ (* -6 Aw2 Ax1)
             (* 2 Aw1 Ax2))
          (expt Bw2 2) Bx1)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Bw1 Bw2)
           (* 4 Aw1 Aw2 Bw2 Bx1))
          Bx2)
	 (* -2 Aw1 Aw2 Bw1 (expt Bx2 2)))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* 4 Ax2 Ay1)
             (* -4 Ax1 Ay2))
          (expt Bw1 2) Bw2 Bx1)
	 (*
          (+ (* -4 Aw2 Ay1)
             (* 4 Aw1 Ay2))
          Bw1 Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1)
               (* 4 Ax1 Ay2))
            (expt Bw1 3))
           (*
            (+ (* 4 Aw2 Ay1)
               (* -4 Aw1 Ay2))
            (expt Bw1 2) Bx1))
          Bx2)
	 (*
          (+
           (* -4 Ax1 Ax2 (expt Bw1 2)
              Bw2)
           (* 8 Aw2 Ax1 Bw1 Bw2 Bx1)
           (* -4 Aw1 Aw2 Bw2
              (expt Bx1 2))
           (*
            (+ (* -4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            (expt Bw1 2) Bx2))
          By1))
	By2)
       (*
	(+
	 (* 2 Ax1 Ax2 (expt Bw1 3))
	 (*
          (+ (* -2 Aw2 Ax1)
             (* -2 Aw1 Ax2))
          (expt Bw1 2) Bx1)
	 (* 2 Aw1 Aw2 Bw1 (expt Bx1 2)))
	(expt By2 2))
       (*
	(+
	 (*
          (+ (* 3 Ax2 (expt Ay1 2))
             (* Ax1 Ay1 Ay2))
          (expt Bw2 2) Bx1)
	 (*
          (+
           (* -6 Ax2 (expt Ay1 2) Bw1
              Bw2)
           (*
            (+
             (* 6 Aw2 (expt Ay1 2))
             (* -7 Aw1 Ay1 Ay2))
            Bw2 Bx1))
          Bx2)
	 (*
          (+ (* -3 Aw2 (expt Ay1 2))
             (* 6 Aw1 Ay1 Ay2))
          Bw1 (expt Bx2 2))
	 (*
          (+
           (*
            (+ (* -1 Ax1 Ax2 Ay1)
               (* -3 (expt Ax1 2) Ay2))
            (expt Bw2 2))
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1)
             (* 7 Aw1 Ax1 Ay2))
            Bw2 Bx2)
           (*
            (+ (* Aw1 Aw2 Ay1)
               (* -4 (expt Aw1 2) Ay2))
            (expt Bx2 2)))
          By1)
	 (*
          (+
           (* 6 (expt Ax1 2) Ay2 Bw1 Bw2)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -7 Aw1 Ax2))
              Ay1)
             (* -2 Aw1 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* 12 Aw1 Ax2 Ay1)
		 (* -12 Aw1 Ax1 Ay2))
              Bw1)
             (*
              (+ (* -7 Aw1 Aw2 Ay1)
		 (* 8 (expt Aw1 2) Ay2))
              Bx1))
            Bx2)
           (*
            (+
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 7 Aw1 Ax1 Ax2))
              Bw2)
             (*
              (+ (* 7 Aw1 Aw2 Ax1)
		 (* -8 (expt Aw1 2) Ax2))
              Bx2))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
               (* 4 (expt Aw1 2) Ax2))
            Bx1))
          (expt By2 2)))
	Cw1)
       (*
	(+
	 (*
          (+ (* 4 Ax2 Ay1 Ay2)
             (* -2 Ax1 (expt Ay2 2)))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* -4 Aw2 Ay1 Ay2)
             (* 2 Aw1 (expt Ay2 2)))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* 2 (expt Ax2 2) Ay1)
             (* -4 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -8 Aw2 Ax2 Ay1)
               (* 8 Aw2 Ax1 Ay2))
            Bw1 Bx1)
           (*
            (+
             (* 6 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
            (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* -6 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* -3 (expt Ax2 2)
		(expt Ay1 2))
             (* 3 (expt Ax1 2)
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 6 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -7 Aw1 Ax2))
              Ay1 Ay2)
             (* -1 Aw1 Ax1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1 Ax2)
		 (* Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 7 Aw1 Ax1 Ax2))
              Ay2))
            By1))
          Cw1))
	Cw2)
       (*
	(+
	 (*
          (+ (* 3 Ax2 (expt Ay1 2))
             (* -1 Ax1 Ay1 Ay2))
          Bw1 (expt Bw2 2))
	 (*
          (+ (* -9 Aw2 (expt Ay1 2))
             (* 6 Aw1 Ay1 Ay2))
          (expt Bw2 2) Bx1)
	 (*
          (+ (* 6 Aw2 (expt Ay1 2))
             (* -5 Aw1 Ay1 Ay2))
          Bw1 Bw2 Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 3 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              Ay1)
             (* -1 Aw1 Ax1 Ay2))
            (expt Bw2 2))
           (*
            (+ (* -2 Aw1 Aw2 Ay1)
               (* (expt Aw1 2) Ay2))
            Bw2 Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1)
		 (* -5 Aw1 Ax2))
              Ay1)
             (* 2 Aw1 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 12 Aw1 Aw2 Ay1)
               (* -6 (expt Aw1 2) Ay2))
            Bw2 Bx1)
           (*
            (+ (* -5 Aw1 Aw2 Ay1)
               (* 4 (expt Aw1 2) Ay2))
            Bw1 Bx2)
           (*
            (+
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* (expt Aw1 2) Ax2))
              Bw2)
             (* (expt Aw1 2) Aw2 Bx2))
            By1))
          By2)
	 (*
          (+
           (*
            (+ (* Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Bw1)
           (* -3 (expt Aw1 2) Aw2 Bx1))
          (expt By2 2))
	 (*
          (+
           (*
            (+
             (* 6 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -2 Aw2 Ax1)
		 (* -5 Aw1 Ax2))
              Ay1 Ay2)
             (* Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -9 (expt Aw2 2)
		(expt Ay1 2))
             (* 12 Aw1 Aw2 Ay1 Ay2)
             (* -3 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+
               (* 3 (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* (expt Aw1 2) Ax2))
              Ay2))
            By1))
          Cw2))
	Cx1)
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1 Ay2)
             (* 2 Ax1 (expt Ay2 2)))
          (expt Bw1 3))
	 (*
          (+ (* 4 Aw2 Ay1 Ay2)
             (* -2 Aw1 (expt Ay2 2)))
          (expt Bw1 2) Bx1)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax2 Ay1)
               (*
		(+ (* -4 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Ay2))
            (expt Bw1 2))
           (* -4 (expt Aw2 2) Ay1 Bw1
              Bx1))
          By1)
	 (*
          (+
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Bw1)
           (* 2 Aw1 (expt Aw2 2) Bx1))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* -6 Aw2 Ax2 (expt Ay1 2))
             (* 12 Aw1 Ax2 Ay1 Ay2)
             (* -6 Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 3 (expt Aw2 2)
		(expt Ay1 2))
             (* -7 Aw1 Aw2 Ay1 Ay2)
             (* 4 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+
               (* -1 (expt Aw2 2) Ax1)
               (* 2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 7 Aw1 Aw2 Ax1)
		 (* -8 (expt Aw1 2) Ax2))
              Ay2))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (* 3 (expt Aw2 2)
		(expt Ay1 2))
             (* -5 Aw1 Aw2 Ay1 Ay2)
             (* 2 (expt Aw1 2)
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -1 Aw1 (expt Aw2 2) Ay1)
             (* (expt Aw1 2) Aw2 Ay2))
            By1))
          Cx1))
	Cx2)
       (*
	(+
	 (*
          (+ (* Ax1 Ax2 Ay1)
             (* -3 (expt Ax1 2) Ay2))
          Bw1 (expt Bw2 2))
	 (*
          (+
           (*
            (+ (* -3 Aw2 Ax1)
               (* Aw1 Ax2))
            Ay1)
           (* Aw1 Ax1 Ay2))
          (expt Bw2 2) Bx1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1)
             (* 5 Aw1 Ax1 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 2 Aw1 Aw2 Ay1)
               (* -1 (expt Aw1 2) Ay2))
            Bw2 Bx1))
          Bx2)
	 (*
          (+ (* -1 Aw1 Aw2 Ay1)
             (* -2 (expt Aw1 2) Ay2))
          Bw1 (expt Bx2 2))
	 (*
          (+
           (*
            (+
             (* 9 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            (expt Bw2 2))
           (*
            (+ (* -12 Aw1 Aw2 Ax1)
               (* 6 (expt Aw1 2) Ax2))
            Bw2 Bx2)
           (* 3 (expt Aw1 2) Aw2
              (expt Bx2 2)))
          By1)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 5 Aw1 Ax1 Ax2))
            Bw1 Bw2)
           (*
            (+ (* 2 Aw1 Aw2 Ax1)
               (* -1 (expt Aw1 2) Ax2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* 5 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              Bw1)
             (* -1 (expt Aw1 2) Aw2 Bx1))
            Bx2))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 5 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (*
              (+
               (* -3 (expt Aw2 2) Ax1)
               (* 2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* -1 (expt Aw1 2) Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* 9 (expt Aw2 2)
		(expt Ax1 2))
             (* -12 Aw1 Aw2 Ax1 Ax2)
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            By1))
          Cw2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 5 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (* Aw1 (expt Aw2 2) Ay1)
             (* -1 (expt Aw1 2) Aw2 Ay2))
            Bx1)
           (*
            (+
             (* -6 Aw1 (expt Aw2 2) Ax1)
             (* 6 (expt Aw1 2) Aw2 Ax2))
            By1))
          Cx2))
	Cy1)
       (*
	(+
	 (*
          (+ (* -2 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
          (expt Bw1 3))
	 (*
          (+ (* 4 Aw2 Ax2 Ay1)
             (*
              (+ (* -4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* -2 (expt Aw2 2) Ay1)
             (* 4 Aw1 Aw2 Ay2))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            (expt Bw1 2))
           (* 4 (expt Aw2 2) Ax1 Bw1 Bx1)
           (* -2 Aw1 (expt Aw2 2)
              (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+
             (* 6 Aw1 (expt Ax2 2) Ay1)
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* -12 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -7 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* 8 (expt Aw1 2) Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 7 Aw1 Aw2 Ax1 Ax2)
             (* -4 (expt Aw1 2)
		(expt Ax2 2)))
            By1))
          Cw1)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1 (expt Aw2 2) Ax1)
               (* -5 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* 4 (expt Aw1 2) Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (* 6 Aw1 (expt Aw2 2) Ay1)
             (* -6 (expt Aw1 2) Aw2 Ay2))
            Bx1)
           (*
            (+
             (* -1 Aw1 (expt Aw2 2) Ax1)
             (* (expt Aw1 2) Aw2 Ax2))
            By1))
          Cx1)
	 (*
          (+
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 5 Aw1 Aw2 Ax1 Ax2)
             (* -2 (expt Aw1 2)
		(expt Ax2 2)))
            Bw1)
           (*
            (+
             (* Aw1 (expt Aw2 2) Ax1)
             (* -1 (expt Aw1 2) Aw2 Ax2))
            Bx1))
          Cy1))
	Cy2)
       (*
	(+
	 (*
          (+
           (* -6 Ax1 Ax2 (expt Ay1 2))
           (* 6 (expt Ax1 2) Ay1 Ay2))
          (expt Bw2 2))
	 (*
          (+ (* -12 Aw2 Ax1)
             (* 12 Aw1 Ax2))
          (expt Ay1 2) Bw2 Bx2)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ay1 2))
           (* -6 (expt Aw1 2) Ay1 Ay2))
          (expt Bx2 2))
	 (*
          (+
           (*
            (+
             (* 12 Aw2 (expt Ax1 2) Ay1)
             (* -12 Aw1 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (* -12 (expt Aw1 2) Ax2 Ay1)
             (* 12 (expt Aw1 2) Ax1 Ay2))
            Bx2))
          By2)
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ax1 2))
           (* 6 (expt Aw1 2) Ax1 Ax2))
          (expt By2 2))
	 (*
          (+
           (*
            (+ (* -12 Aw2 Ax1 Ax2)
               (* 6 Aw1 (expt Ax2 2)))
            (expt Ay1 2))
           (* 12 Aw2 (expt Ax1 2) Ay1
              Ay2)
           (* -6 Aw1 (expt Ax1 2)
              (expt Ay2 2)))
          Cw2)
	 (*
          (+
           (*
            (+
             (* -6 (expt Aw2 2) Ax1)
             (* 12 Aw1 Aw2 Ax2))
            (expt Ay1 2))
           (* -12 (expt Aw1 2) Ax2 Ay1
              Ay2)
           (* 6 (expt Aw1 2) Ax1
              (expt Ay2 2)))
          Cx2)
	 (*
          (+
           (*
            (+
             (* 6 (expt Aw2 2)
		(expt Ax1 2))
             (* -6 (expt Aw1 2)
		(expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -12 Aw1 Aw2 (expt Ax1 2))
             (* 12 (expt Aw1 2) Ax1 Ax2))
            Ay2))
          Cy2))
	Dw1))
      Dx1)
     (*
      (+
       (*
	(+
	 (*
          (+ (* 9 Aw2 Ax1)
             (* -3 Aw1 Ax2))
          (expt Ay1 2))
	 (* -6 Aw1 Ax1 Ay1 Ay2))
	(expt Bw2 2))
       (*
	(+
	 (* -6 Aw1 Aw2 (expt Ay1 2))
	 (* 6 (expt Aw1 2) Ay1 Ay2))
	Bw2 Bx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -12 Aw1 Aw2 Ax1)
               (* 6 (expt Aw1 2) Ax2))
            Ay1)
           (* 6 (expt Aw1 2) Ax1 Ay2))
          Bw2)
	 (*
          (+
           (* 6 (expt Aw1 2) Aw2 Ay1)
           (* -6 (expt Aw1 3) Ay2))
          Bx2))
	By2)
       (*
	(+
	 (* 3 (expt Aw1 2) Aw2 Ax1)
	 (* -3 (expt Aw1 3) Ax2))
	(expt By2 2))
       (*
	(+
	 (*
          (+ (* 9 (expt Aw2 2) Ax1)
             (* -6 Aw1 Aw2 Ax2))
          (expt Ay1 2))
	 (*
          (+ (* -12 Aw1 Aw2 Ax1)
             (* 6 (expt Aw1 2) Ax2))
          Ay1 Ay2)
	 (* 3 (expt Aw1 2) Ax1
            (expt Ay2 2)))
	Cw2)
       (*
	(+
	 (* -3 Aw1 (expt Aw2 2)
            (expt Ay1 2))
	 (* 6 (expt Aw1 2) Aw2 Ay1 Ay2)
	 (* -3 (expt Aw1 3)
            (expt Ay2 2)))
	Cx2)
       (*
	(+
	 (*
          (+
           (* -6 Aw1 (expt Aw2 2) Ax1)
           (* 6 (expt Aw1 2) Aw2 Ax2))
          Ay1)
	 (*
          (+
           (* 6 (expt Aw1 2) Aw2 Ax1)
           (* -6 (expt Aw1 3) Ax2))
          Ay2))
	Cy2))
      (expt Dx1 2)))
    Dy1)
   (*
    (+
     (*
      (+ (* 3 Ax2 Ay1)
	 (* -1 Ax1 Ay2))
      Bw1 (expt Bw2 2) (expt Bx1 2))
     (*
      (+ (* -3 Aw2 Ay1)
	 (* Aw1 Ay2))
      (expt Bw2 2) (expt Bx1 3))
     (*
      (+
       (*
	(+ (* -6 Ax2 Ay1)
	   (* 2 Ax1 Ay2))
	(expt Bw1 2) Bw2 Bx1)
       (*
	(+ (* 6 Aw2 Ay1)
	   (* -2 Aw1 Ay2))
	Bw1 Bw2 (expt Bx1 2)))
      Bx2)
     (*
      (+
       (*
	(+ (* 3 Ax2 Ay1)
	   (* -1 Ax1 Ay2))
	(expt Bw1 3))
       (*
	(+ (* -3 Aw2 Ay1)
	   (* Aw1 Ay2))
	(expt Bw1 2) Bx1))
      (expt Bx2 2))
     (*
      (+
       (* -2 Ax1 Ax2 Bw1 (expt Bw2 2)
	  Bx1)
       (*
	(+ (* 3 Aw2 Ax1)
	   (* -1 Aw1 Ax2))
	(expt Bw2 2) (expt Bx1 2))
       (*
	(+
	 (* 2 Ax1 Ax2 (expt Bw1 2) Bw2)
	 (*
          (+ (* -4 Aw2 Ax1)
             (* 4 Aw1 Ax2))
          Bw1 Bw2 Bx1)
	 (* -2 Aw1 Aw2 Bw2 (expt Bx1 2)))
	Bx2)
       (*
	(+
	 (*
          (+ (* Aw2 Ax1)
             (* -3 Aw1 Ax2))
          (expt Bw1 2))
	 (* 2 Aw1 Aw2 Bw1 Bx1))
	(expt Bx2 2)))
      By1)
     (*
      (+
       (* 2 Ax1 Ax2 (expt Bw1 2) Bw2
	  Bx1)
       (*
	(+ (* -2 Aw2 Ax1)
	   (* -2 Aw1 Ax2))
	Bw1 Bw2 (expt Bx1 2))
       (* 2 Aw1 Aw2 Bw2 (expt Bx1 3))
       (*
	(+
	 (* -2 Ax1 Ax2 (expt Bw1 3))
	 (*
          (+ (* 2 Aw2 Ax1)
             (* 2 Aw1 Ax2))
          (expt Bw1 2) Bx1)
	 (* -2 Aw1 Aw2 Bw1 (expt Bx1 2)))
	Bx2))
      By2)
     (*
      (+
       (*
	(+ (* -3 Ax1 Ax2 Ay1)
	   (* (expt Ax1 2) Ay2))
	(expt Bw2 2) Bx1)
       (*
	(+
	 (*
          (+ (* 6 Ax1 Ax2 Ay1)
             (* -3 (expt Ax1 2) Ay2))
          Bw1 Bw2)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
               (* 6 Aw1 Ax2))
            Ay1)
           (* Aw1 Ax1 Ay2))
          Bw2 Bx1))
	Bx2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 3 Aw2 Ax1)
               (* -9 Aw1 Ax2))
            Ay1)
           (* 3 Aw1 Ax1 Ay2))
          Bw1)
	 (*
          (+ (* 3 Aw1 Aw2 Ay1)
             (* -2 (expt Aw1 2) Ay2))
          Bx1))
	(expt Bx2 2))
       (*
	(+
	 (* 2 (expt Ax1 2) Ax2
            (expt Bw2 2))
	 (*
          (+ (* 4 Aw2 (expt Ax1 2))
             (* -8 Aw1 Ax1 Ax2))
          Bw2 Bx2)
	 (*
          (+ (* -4 Aw1 Aw2 Ax1)
             (* 6 (expt Aw1 2) Ax2))
          (expt Bx2 2)))
	By1)
       (*
	(+
	 (* -3 (expt Ax1 2) Ax2 Bw1 Bw2)
	 (*
          (+ (* 2 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* -3 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Bw1)
           (*
            (+ (* Aw1 Aw2 Ax1)
               (* -4 (expt Aw1 2) Ax2))
            Bx1))
          Bx2))
	By2))
      Cw1)
     (*
      (+
       (*
	(+ (* -3 (expt Ax2 2) Ay1)
	   (* 2 Ax1 Ax2 Ay2))
	(expt Bw1 2) Bx1)
       (*
	(+ (* 6 Aw2 Ax2 Ay1)
	   (*
            (+ (* -2 Aw2 Ax1)
               (* -2 Aw1 Ax2))
            Ay2))
	Bw1 (expt Bx1 2))
       (*
	(+ (* -3 (expt Aw2 2) Ay1)
	   (* 2 Aw1 Aw2 Ay2))
	(expt Bx1 3))
       (*
	(+
	 (* Ax1 (expt Ax2 2)
            (expt Bw1 2))
	 (*
          (+ (* -4 Aw2 Ax1 Ax2)
             (* 2 Aw1 (expt Ax2 2)))
          Bw1 Bx1)
	 (*
          (+ (* 3 (expt Aw2 2) Ax1)
             (* -2 Aw1 Aw2 Ax2))
          (expt Bx1 2)))
	By1)
       (*
	(+
	 (*
          (+
           (* 3 Ax1 (expt Ax2 2) Ay1)
           (* -3 (expt Ax1 2) Ax2 Ay2))
          Bw1)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1 Ax2)
               (* 3 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            Ay2))
          Bx1)
	 (*
          (+
           (* 4 Aw2 (expt Ax1 2) Ax2)
           (* -4 Aw1 Ax1 (expt Ax2 2)))
          By1))
	Cw1))
      Cw2)
     (*
      (+
       (*
	(+ (* -3 Ax1 Ax2 Ay1)
	   (* 2 (expt Ax1 2) Ay2))
	Bw1 (expt Bw2 2))
       (*
	(+
	 (*
          (+ (* 9 Aw2 Ax1)
             (* -3 Aw1 Ax2))
          Ay1)
	 (* -3 Aw1 Ax1 Ay2))
	(expt Bw2 2) Bx1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1)
               (* 6 Aw1 Ax2))
            Ay1)
           (* -1 Aw1 Ax1 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -6 Aw1 Aw2 Ay1)
             (* 3 (expt Aw1 2) Ay2))
          Bw2 Bx1))
	Bx2)
       (*
	(+ (* 3 Aw1 Aw2 Ay1)
	   (* -1 (expt Aw1 2) Ay2))
	Bw1 (expt Bx2 2))
       (*
	(+
	 (*
          (+ (* -6 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
          (expt Bw2 2))
	 (*
          (+ (* 8 Aw1 Aw2 Ax1)
             (* -4 (expt Aw1 2) Ax2))
          Bw2 Bx2)
	 (* -2 (expt Aw1 2) Aw2
            (expt Bx2 2)))
	By1)
       (*
	(+
	 (*
          (+ (* 4 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
          Bw1 Bw2)
	 (*
          (+ (* -6 Aw1 Aw2 Ax1)
             (* 3 (expt Aw1 2) Ax2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            Bw1)
           (* 3 (expt Aw1 2) Aw2 Bx1))
          Bx2))
	By2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1 Ax2)
               (* 3 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            Ay2))
          Bw1)
	 (*
          (+
           (*
            (+
             (* 9 (expt Aw2 2) Ax1)
             (* -6 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
               (* 3 (expt Aw1 2) Ax2))
            Ay2))
          Bx1)
	 (*
          (+
           (* -6 (expt Aw2 2)
              (expt Ax1 2))
           (* 8 Aw1 Aw2 Ax1 Ax2)
           (* -2 (expt Aw1 2)
              (expt Ax2 2)))
          By1))
	Cw2))
      Cx1)
     (*
      (+
       (*
	(+ (* 3 (expt Ax2 2) Ay1)
	   (* -2 Ax1 Ax2 Ay2))
	(expt Bw1 3))
       (*
	(+ (* -6 Aw2 Ax2 Ay1)
	   (*
            (+ (* 2 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Ay2))
	(expt Bw1 2) Bx1)
       (*
	(+ (* 3 (expt Aw2 2) Ay1)
	   (* -2 Aw1 Aw2 Ay2))
	Bw1 (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* 2 Aw2 Ax1 Ax2)
             (* -3 Aw1 (expt Ax2 2)))
          (expt Bw1 2))
	 (*
          (+ (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
          Bw1 Bx1)
	 (* -1 Aw1 (expt Aw2 2)
            (expt Bx1 2)))
	By1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1 Ax2)
               (* -9 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -3 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Ay2))
          Bw1)
	 (*
          (+
           (*
            (+
             (* -3 (expt Aw2 2) Ax1)
             (* 6 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* Aw1 Aw2 Ax1)
               (* -4 (expt Aw1 2) Ax2))
            Ay2))
          Bx1)
	 (*
          (+
           (* 2 (expt Aw2 2)
              (expt Ax1 2))
           (* -8 Aw1 Aw2 Ax1 Ax2)
           (* 6 (expt Aw1 2)
              (expt Ax2 2)))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -3 (expt Aw2 2) Ax1)
             (* 6 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            Ay2))
          Bw1)
	 (*
          (+
           (* -3 Aw1 (expt Aw2 2) Ay1)
           (* 3 (expt Aw1 2) Aw2 Ay2))
          Bx1)
	 (*
          (+
           (* 4 Aw1 (expt Aw2 2) Ax1)
           (* -4 (expt Aw1 2) Aw2 Ax2))
          By1))
	Cx1))
      Cx2)
     (*
      (+
       (* (expt Ax1 2) Ax2 Bw1
	  (expt Bw2 2))
       (*
	(+ (* -3 Aw2 (expt Ax1 2))
	   (* 2 Aw1 Ax1 Ax2))
	(expt Bw2 2) Bx1)
       (*
	(+
	 (*
          (+ (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
          Bw1 Bw2)
	 (*
          (+ (* 4 Aw1 Aw2 Ax1)
             (* -2 (expt Aw1 2) Ax2))
          Bw2 Bx1))
	Bx2)
       (*
	(+
	 (*
          (+ (* -2 Aw1 Aw2 Ax1)
             (* 3 (expt Aw1 2) Ax2))
          Bw1)
	 (* -1 (expt Aw1 2) Aw2 Bx1))
	(expt Bx2 2))
       (*
	(+
	 (*
          (+
           (* 2 Aw2 (expt Ax1 2) Ax2)
           (* -2 Aw1 Ax1 (expt Ax2 2)))
          Bw1)
	 (*
          (+
           (* -3 (expt Aw2 2)
              (expt Ax1 2))
           (* 4 Aw1 Aw2 Ax1 Ax2)
           (* -1 (expt Aw1 2)
              (expt Ax2 2)))
          Bx1))
	Cw2)
       (*
	(+
	 (*
          (+
           (* (expt Aw2 2)
              (expt Ax1 2))
           (* -4 Aw1 Aw2 Ax1 Ax2)
           (* 3 (expt Aw1 2)
              (expt Ax2 2)))
          Bw1)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ax1)
           (* -2 (expt Aw1 2) Aw2 Ax2))
          Bx1))
	Cx2))
      Cy1)
     (*
      (+
       (* -1 Ax1 (expt Ax2 2)
	  (expt Bw1 3))
       (*
	(+ (* 2 Aw2 Ax1 Ax2)
	   (* Aw1 (expt Ax2 2)))
	(expt Bw1 2) Bx1)
       (*
	(+ (* -1 (expt Aw2 2) Ax1)
	   (* -2 Aw1 Aw2 Ax2))
	Bw1 (expt Bx1 2))
       (* Aw1 (expt Aw2 2)
	  (expt Bx1 3))
       (*
	(+
	 (*
          (+
           (* -3 Aw2 (expt Ax1 2) Ax2)
           (* 3 Aw1 Ax1 (expt Ax2 2)))
          Bw1)
	 (*
          (+
           (* (expt Aw2 2)
              (expt Ax1 2))
           (* Aw1 Aw2 Ax1 Ax2)
           (* -2 (expt Aw1 2)
              (expt Ax2 2)))
          Bx1))
	Cw1)
       (*
	(+
	 (*
          (+
           (* 2 (expt Aw2 2)
              (expt Ax1 2))
           (* -1 Aw1 Aw2 Ax1 Ax2)
           (* -1 (expt Aw1 2)
              (expt Ax2 2)))
          Bw1)
	 (*
          (+
           (* -3 Aw1 (expt Aw2 2) Ax1)
           (* 3 (expt Aw1 2) Aw2 Ax2))
          Bx1))
	Cx1))
      Cy2)
     (*
      (+
       (*
	(+
	 (* 3 (expt Ax1 2) Ax2 Ay1)
	 (* -3 (expt Ax1 3) Ay2))
	(expt Bw2 2))
       (*
	(+
	 (*
          (+ (* 6 Aw2 (expt Ax1 2))
             (* -12 Aw1 Ax1 Ax2))
          Ay1)
	 (* 6 Aw1 (expt Ax1 2) Ay2))
	Bw2 Bx2)
       (*
	(+
	 (*
          (+ (* -6 Aw1 Aw2 Ax1)
             (* 9 (expt Aw1 2) Ax2))
          Ay1)
	 (* -3 (expt Aw1 2) Ax1 Ay2))
	(expt Bx2 2))
       (*
	(+
	 (*
          (+ (* -6 Aw2 (expt Ax1 3))
             (* 6 Aw1 (expt Ax1 2) Ax2))
          Bw2)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Bx2))
	By2)
       (*
	(+
	 (*
          (+
           (* 6 Aw2 (expt Ax1 2) Ax2)
           (* -6 Aw1 Ax1 (expt Ax2 2)))
          Ay1)
	 (*
          (+ (* -6 Aw2 (expt Ax1 3))
             (* 6 Aw1 (expt Ax1 2) Ax2))
          Ay2))
	Cw2)
       (*
	(+
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ax1 2))
           (* -12 Aw1 Aw2 Ax1 Ax2)
           (* 9 (expt Aw1 2)
              (expt Ax2 2)))
          Ay1)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Ay2))
	Cx2)
       (*
	(+
	 (* -3 (expt Aw2 2)
            (expt Ax1 3))
	 (* 6 Aw1 Aw2 (expt Ax1 2) Ax2)
	 (* -3 (expt Aw1 2) Ax1
            (expt Ax2 2)))
	Cy2))
      Dw1)
     (*
      (+
       (*
	(+
	 (*
          (+ (* -9 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
          Ay1)
	 (* 3 Aw1 (expt Ax1 2) Ay2))
	(expt Bw2 2))
       (*
	(+
	 (*
          (+ (* 12 Aw1 Aw2 Ax1)
             (* -6 (expt Aw1 2) Ax2))
          Ay1)
	 (* -6 (expt Aw1 2) Ax1 Ay2))
	Bw2 Bx2)
       (*
	(+
	 (* -3 (expt Aw1 2) Aw2 Ay1)
	 (* 3 (expt Aw1 3) Ay2))
	(expt Bx2 2))
       (*
	(+
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Bw2)
	 (*
          (+
           (* -6 (expt Aw1 2) Aw2 Ax1)
           (* 6 (expt Aw1 3) Ax2))
          Bx2))
	By2)
       (*
	(+
	 (*
          (+
           (* -9 (expt Aw2 2)
              (expt Ax1 2))
           (* 12 Aw1 Aw2 Ax1 Ax2)
           (* -3 (expt Aw1 2)
              (expt Ax2 2)))
          Ay1)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Ay2))
	Cw2)
       (*
	(+
	 (*
          (+
           (* 6 Aw1 (expt Aw2 2) Ax1)
           (* -6 (expt Aw1 2) Aw2 Ax2))
          Ay1)
	 (*
          (+
           (* -6 (expt Aw1 2) Aw2 Ax1)
           (* 6 (expt Aw1 3) Ax2))
          Ay2))
	Cx2)
       (*
	(+
	 (* 3 Aw1 (expt Aw2 2)
            (expt Ax1 2))
	 (* -6 (expt Aw1 2) Aw2 Ax1 Ax2)
	 (* 3 (expt Aw1 3)
            (expt Ax2 2)))
	Cy2))
      Dx1))
    (expt Dy1 2))
   (*
    (+
     (*
      (+ (* 3 Aw2 (expt Ax1 3))
	 (* -3 Aw1 (expt Ax1 2) Ax2))
      (expt Bw2 2))
     (*
      (+
       (* -6 Aw1 Aw2 (expt Ax1 2))
       (* 6 (expt Aw1 2) Ax1 Ax2))
      Bw2 Bx2)
     (*
      (+
       (* 3 (expt Aw1 2) Aw2 Ax1)
       (* -3 (expt Aw1 3) Ax2))
      (expt Bx2 2))
     (*
      (+
       (* 3 (expt Aw2 2)
	  (expt Ax1 3))
       (* -6 Aw1 Aw2 (expt Ax1 2) Ax2)
       (* 3 (expt Aw1 2) Ax1
	  (expt Ax2 2)))
      Cw2)
     (*
      (+
       (* -3 Aw1 (expt Aw2 2)
	  (expt Ax1 2))
       (* 6 (expt Aw1 2) Aw2 Ax1 Ax2)
       (* -3 (expt Aw1 3)
	  (expt Ax2 2)))
      Cx2))
    (expt Dy1 3))))



(defun intersection-rational-power-basis-cubic/quadratic-c5
    (Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1 Ax2 Bx2 Cx2 Ay2 By2 Cy2 Aw2 Bw2 Cw2)
  (declare (ignore Cx2 Cy2 Cw2))
  (+
   (*
    (+
     (*
      (+
       (*
	(+
	 (* Ay1 (expt Ay2 2) Bw2
            (expt Bx1 2))
	 (* -1 Ay1 (expt Ay2 2) Bw1 Bx1
            Bx2)
	 (*
          (+
           (*
            (+ (* -1 Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* 2 Ax2 Ay1 Ay2)
		 (* -1 Ax1 (expt Ay2 2)))
              Bw1)
             (*
              (+ (* -1 Aw2 Ay1 Ay2)
		 (* 2 Aw1 (expt Ay2 2)))
              Bx1))
            Bx2))
          By1)
	 (*
          (+ (* Ax1 Ax2 Ay2 Bw2)
             (*
              (+ (* Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay2 Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1 Ay2)
               (* 3 Ax1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+ (* 2 Aw2 Ay1 Ay2)
               (* -3 Aw1 (expt Ay2 2)))
            (expt Bx1 2))
           (*
            (+
             (*
              (+
               (* (expt Ax2 2) Ay1)
               (* -2 Ax1 Ax2 Ay2))
              Bw1)
             (*
              (+ (* -1 Aw2 Ax2 Ay1)
		 (*
		  (+ (* -2 Aw2 Ax1)
		     (* 4 Aw1 Ax2))
		  Ay2))
              Bx1))
            By1)
           (*
            (+ (* Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            (expt By1 2)))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -2 Ax2 (expt Ay1 2) Ay2)
           (* 2 Ax1 Ay1 (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (* -1 (expt Ax2 2)
              (expt Ay1 2))
           (* 4 Ax1 Ax2 Ay1 Ay2)
           (* -3 (expt Ax1 2)
              (expt Ay2 2)))
          By2))
	(expt Cw1 2)))
      Cx1)
     (*
      (+
       (* -1 Ay1 (expt Ay2 2) Bw1 Bw2
	  Bx1)
       (* Ay1 (expt Ay2 2)
	  (expt Bw1 2) Bx2)
       (*
	(+
	 (*
          (+ (* -1 Ax2 Ay1 Ay2)
             (* 2 Ax1 (expt Ay2 2)))
          Bw1 Bw2)
	 (*
          (+ (* 2 Aw2 Ay1 Ay2)
             (* -1 Aw1 (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+ (* -1 Aw2 Ay1 Ay2)
             (* -1 Aw1 (expt Ay2 2)))
          Bw1 Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* -2 Aw2 Ax1)
             (* Aw1 Ax2))
          Ay2 Bw2)
	 (* Aw1 Aw2 Ay2 Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1 Ay2)
             (* -3 Ax1 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+ (* -2 Aw2 Ay1 Ay2)
             (* 3 Aw1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* -1 Aw2 Ax2 Ay1)
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay2))
            Bw1)
           (*
            (+ (* (expt Aw2 2) Ay1)
               (* -2 Aw1 Aw2 Ay2))
            Bx1))
          By1)
	 (*
          (+ (* -1 (expt Aw2 2) Ax1)
             (* Aw1 Aw2 Ax2))
          (expt By1 2)))
	By2)
       (*
	(+
	 (*
          (+
           (* 2 Ax2 (expt Ay1 2) Ay2)
           (* -2 Ax1 Ay1 (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* 2 Aw2 (expt Ay1 2) Ay2)
           (* -2 Aw1 Ay1 (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (* 2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Ay1 Ay2)
           (* 6 Aw1 Ax1 (expt Ay2 2)))
          By2))
	Cw1))
      (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (* -2 Aw2 (expt Ay1 2) Ay2)
	 (* 2 Aw1 Ay1 (expt Ay2 2)))
	Bw2)
       (*
	(+
	 (* -1 (expt Aw2 2)
            (expt Ay1 2))
	 (* 4 Aw1 Aw2 Ay1 Ay2)
	 (* -3 (expt Aw1 2)
            (expt Ay2 2)))
	By2))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (* -1 Ax2 Ay1 Ay2 Bw2
            (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+ (* -1 Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            (expt Bx1 2)))
          Bx2)
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* Ax1 Ax2 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* -3 (expt Ax2 2) Ay1)
               (* 2 Ax1 Ax2 Ay2))
              Bw1)
             (*
              (+ (* 2 Aw2 Ax2 Ay1)
		 (*
		  (+ (* Aw2 Ax1)
		     (* -4 Aw1 Ax2))
		  Ay2))
              Bx1))
            Bx2))
          By1)
	 (*
          (+
           (* -1 Ax1 (expt Ax2 2) Bw2)
           (*
            (+ (* -2 Aw2 Ax1 Ax2)
               (* 3 Aw1 (expt Ax2 2)))
            Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* -2 Ax1 Ax2 Ay2))
            Bw1 Bx1)
           (*
            (+ (* -1 Aw2 Ax2 Ay1)
               (* 2 Aw1 Ax2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (* Ax1 (expt Ax2 2) Bw1)
             (*
              (+ (* Aw2 Ax1 Ax2)
		 (* -2 Aw1 (expt Ax2 2)))
              Bx1))
            By1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* 3 (expt Ax2 2)
              (expt Ay1 2))
           (* -4 Ax1 Ax2 Ay1 Ay2)
           (* (expt Ax1 2)
              (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (* -2 Ax1 (expt Ax2 2) Ay1)
           (* 2 (expt Ax1 2) Ax2 Ay2))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+ (* 3 Ax2 Ay1 Ay2)
             (* -1 Ax1 (expt Ay2 2)))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* -2 Aw2 Ay1 Ay2)
             (* Aw1 (expt Ay2 2)))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Ax2 Ay1 Ay2)
               (* 2 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (*
            (+ (* 3 Aw2 Ay1 Ay2)
               (* -2 Aw1 (expt Ay2 2)))
            Bw1 Bx1))
          Bx2)
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* -3 Ax1 Ax2 Ay2))
            Bw1 Bw2)
           (*
            (+ (* -2 Aw2 Ax2 Ay1)
               (* 2 Aw2 Ax1 Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax2 Ay1)
		 (*
		  (+ (* -3 Aw2 Ax1)
		     (* 4 Aw1 Ax2))
		  Ay2))
              Bw1)
             (* -1 (expt Aw2 2) Ay1 Bx1))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Bw2)
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
            Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+
             (* -2 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 3 Aw2 Ax2 Ay1)
               (*
		(+ (* -2 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Ay2))
            Bw1 Bx1)
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (*
              (+ (* -3 Aw2 Ax1 Ax2)
		 (* 2 Aw1 (expt Ax2 2)))
              Bw1)
             (* (expt Aw2 2) Ax1 Bx1))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* -2 (expt Ax2 2)
		(expt Ay1 2))
             (* 2 (expt Ax1 2)
		(expt Ay2 2)))
            Bw2)
           (*
            (+
             (* -4 Aw2 Ax2 (expt Ay1 2))
             (* 8 Aw1 Ax2 Ay1 Ay2)
             (* -4 Aw1 Ax1 (expt Ay2 2)))
            Bx2)
           (*
            (+
             (* 4 Aw1 (expt Ax2 2) Ay1)
             (*
              (+
               (* 4 Aw2 (expt Ax1 2))
               (* -8 Aw1 Ax1 Ax2))
              Ay2))
            By2))
          Cw1))
	Cx1)
       (*
	(+
	 (*
          (+
           (* 2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Ay1 Ay2)
           (* -2 Aw1 Ax1 (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* (expt Aw2 2)
              (expt Ay1 2))
           (* -4 Aw1 Aw2 Ay1 Ay2)
           (* 3 (expt Aw1 2)
              (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* 6 (expt Aw1 2) Ax2))
            Ay2))
          By2))
	(expt Cx1 2)))
      Cy1)
     (*
      (+
       (*
	(+ (* -2 (expt Ax2 2) Ay1)
	   (* Ax1 Ax2 Ay2))
	Bw1 Bw2 Bx1)
       (*
	(+ (* 2 Aw2 Ax2 Ay1)
	   (* -1 Aw1 Ax2 Ay2))
	Bw2 (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* 3 (expt Ax2 2) Ay1)
             (* -2 Ax1 Ax2 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* -4 Aw2 Ax2 Ay1)
             (*
              (+ (* Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay2))
          Bw1 Bx1)
	 (*
          (+ (* (expt Aw2 2) Ay1)
             (* -1 Aw1 Aw2 Ay2))
          (expt Bx1 2)))
	Bx2)
       (*
	(+
	 (* Ax1 (expt Ax2 2) Bw1 Bw2)
	 (*
          (+ (* -2 Aw2 Ax1 Ax2)
             (* Aw1 (expt Ax2 2)))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -3 Aw1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* -1 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
            Bx1))
          Bx2))
	By1)
       (*
	(+
	 (* -1 Ax1 (expt Ax2 2)
            (expt Bw1 2))
	 (*
          (+ (* Aw2 Ax1 Ax2)
             (* Aw1 (expt Ax2 2)))
          Bw1 Bx1)
	 (* -1 Aw1 Aw2 Ax2 (expt Bx1 2)))
	By2)
       (*
	(+
	 (*
          (+
           (* 2 Ax1 (expt Ax2 2) Ay1)
           (* -2 (expt Ax1 2) Ax2 Ay2))
          Bw2)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -6 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Ay2))
          Bx2)
	 (*
          (+
           (* -2 Aw2 (expt Ax1 2) Ax2)
           (* 2 Aw1 Ax1 (expt Ax2 2)))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Ay2))
          Bw2)
	 (*
          (+
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
               (* -6 (expt Aw1 2) Ax2))
            Ay2))
          Bx2)
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ax1 2))
           (* 4 Aw1 Aw2 Ax1 Ax2)
           (* -3 (expt Aw1 2)
              (expt Ax2 2)))
          By2))
	Cx1))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (* 2 Aw2 (expt Ax1 2) Ax2)
	 (* -2 Aw1 Ax1 (expt Ax2 2)))
	Bw2)
       (*
	(+
	 (* (expt Aw2 2)
            (expt Ax1 2))
	 (* -4 Aw1 Aw2 Ax1 Ax2)
	 (* 3 (expt Aw1 2)
            (expt Ax2 2)))
	Bx2))
      (expt Cy1 3)))
    Dw1)
   (*
    (+
     (* -1 Ay1 (expt Ay2 2) Bw2
	(expt Bx1 3))
     (* Ay1 (expt Ay2 2) Bw1
	(expt Bx1 2) Bx2)
     (*
      (+
       (*
	(+ (* 2 Ax2 Ay1 Ay2)
	   (* Ax1 (expt Ay2 2)))
	Bw2 (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1 Ay2)
             (* 2 Ax1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+ (* 2 Aw2 Ay1 Ay2)
             (* -3 Aw1 (expt Ay2 2)))
          (expt Bx1 2)))
	Bx2))
      By1)
     (*
      (+
       (*
	(+ (* -1 (expt Ax2 2) Ay1)
	   (* -2 Ax1 Ax2 Ay2))
	Bw2 Bx1)
       (*
	(+
	 (*
          (+ (* 3 (expt Ax2 2) Ay1)
             (* -2 Ax1 Ax2 Ay2))
          Bw1)
	 (*
          (+ (* -2 Aw2 Ax2 Ay1)
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 6 Aw1 Ax2))
              Ay2))
          Bx1))
	Bx2))
      (expt By1 2))
     (*
      (+ (* Ax1 (expt Ax2 2) Bw2)
	 (*
	  (+ (* 2 Aw2 Ax1 Ax2)
	     (* -3 Aw1 (expt Ax2 2)))
	  Bx2))
      (expt By1 3))
     (*
      (+
       (*
	(+ (* 2 Ax2 Ay1 Ay2)
	   (* -3 Ax1 (expt Ay2 2)))
	Bw1 (expt Bx1 2))
       (*
	(+ (* -2 Aw2 Ay1 Ay2)
	   (* 3 Aw1 (expt Ay2 2)))
	(expt Bx1 3))
       (*
	(+
	 (*
          (+ (* -2 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* 2 Aw2 Ax2 Ay1)
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -6 Aw1 Ax2))
              Ay2))
          (expt Bx1 2)))
	By1)
       (*
	(+
	 (* -1 Ax1 (expt Ax2 2) Bw1)
	 (*
          (+ (* -2 Aw2 Ax1 Ax2)
             (* 3 Aw1 (expt Ax2 2)))
          Bx1))
	(expt By1 2)))
      By2)
     (*
      (+
       (*
	(+
	 (* 2 Ax2 (expt Ay1 2) Ay2)
	 (* -2 Ax1 Ay1 (expt Ay2 2)))
	Bx1 Bx2)
       (*
	(+
	 (* -3 (expt Ax2 2)
            (expt Ay1 2))
	 (* 4 Ax1 Ax2 Ay1 Ay2)
	 (* -1 (expt Ax1 2)
            (expt Ay2 2)))
	Bx2 By1)
       (*
	(+
	 (*
          (+
           (* (expt Ax2 2)
              (expt Ay1 2))
           (* -4 Ax1 Ax2 Ay1 Ay2)
           (* 3 (expt Ax1 2)
              (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (* 2 Ax1 (expt Ax2 2) Ay1)
           (* -2 (expt Ax1 2) Ax2 Ay2))
          By1))
	By2))
      Cw1)
     (*
      (+
       (*
	(+
	 (* -3 Ax2 (expt Ay1 2) Ay2)
	 (* 3 Ax1 Ay1 (expt Ay2 2)))
	Bw2 Bx1)
       (*
	(+
	 (*
          (+
           (* 4 Ax2 (expt Ay1 2) Ay2)
           (* -4 Ax1 Ay1 (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -3 Aw2 (expt Ay1 2) Ay2)
           (* 3 Aw1 Ay1 (expt Ay2 2)))
          Bx1))
	Bx2)
       (*
	(+
	 (*
          (+
           (* (expt Ax2 2)
              (expt Ay1 2))
           (* Ax1 Ax2 Ay1 Ay2)
           (* -2 (expt Ax1 2)
              (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* 2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* Aw2 Ax1)
               (* -6 Aw1 Ax2))
            Ay1 Ay2)
           (* 3 Aw1 Ax1 (expt Ay2 2)))
          Bx2))
	By1)
       (*
	(+
	 (*
          (+
           (* 2 (expt Ax2 2)
              (expt Ay1 2))
           (* -8 Ax1 Ax2 Ay1 Ay2)
           (* 6 (expt Ax1 2)
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -3 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 6 Aw2 Ax1)
               (* 6 Aw1 Ax2))
            Ay1 Ay2)
           (* -9 Aw1 Ax1 (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+ (* Aw2 Ax1 Ax2)
               (* -3 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -4 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Ay2))
          By1))
	By2))
      Cx1)
     (*
      (+
       (*
	(+
	 (* 2 (expt Ax2 2)
            (expt Ay1 2))
	 (* -1 Ax1 Ax2 Ay1 Ay2)
	 (* -1 (expt Ax1 2)
            (expt Ay2 2)))
	Bw2 Bx1)
       (*
	(+
	 (*
          (+
           (* -6 (expt Ax2 2)
              (expt Ay1 2))
           (* 8 Ax1 Ax2 Ay1 Ay2)
           (* -2 (expt Ax1 2)
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* 4 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -1 Aw2 Ax1)
               (* -6 Aw1 Ax2))
            Ay1 Ay2)
           (* 3 Aw1 Ax1 (expt Ay2 2)))
          Bx1))
	Bx2)
       (*
	(+
	 (*
          (+
           (* -3 Ax1 (expt Ax2 2) Ay1)
           (* 3 (expt Ax1 2) Ax2 Ay2))
          Bw2)
	 (*
          (+
           (*
            (+ (* -6 Aw2 Ax1 Ax2)
               (* 9 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            Ay2))
          Bx2))
	By1)
       (*
	(+
	 (*
          (+
           (* 4 Ax1 (expt Ax2 2) Ay1)
           (* -4 (expt Ax1 2) Ax2 Ay2))
          Bw1)
	 (*
          (+
           (*
            (+ (* -1 Aw2 Ax1 Ax2)
               (* -3 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Ay2))
          Bx1)
	 (*
          (+
           (* 3 Aw2 (expt Ax1 2) Ax2)
           (* -3 Aw1 Ax1 (expt Ax2 2)))
          By1))
	By2))
      Cy1))
    (expt Dw1 2))
   (*
    (+
     (*
      (+
       (* 3 (expt Ax2 2)
	  (expt Ay1 3))
       (* -6 Ax1 Ax2 (expt Ay1 2) Ay2)
       (* 3 (expt Ax1 2) Ay1
	  (expt Ay2 2)))
      Bx2)
     (*
      (+
       (* -3 Ax1 (expt Ax2 2)
	  (expt Ay1 2))
       (* 6 (expt Ax1 2) Ax2 Ay1 Ay2)
       (* -3 (expt Ax1 3)
	  (expt Ay2 2)))
      By2))
    (expt Dw1 3))
   (*
    (+
     (*
      (+
       (* -1 Ay1 (expt Ay2 2) Bw2
	  (expt Bx1 2))
       (* Ay1 (expt Ay2 2) Bw1 Bx1
	  Bx2)
       (*
	(+
	 (*
          (+ (* Ax2 Ay1 Ay2)
             (* Ax1 (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1 Ay2)
               (* Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+ (* Aw2 Ay1 Ay2)
               (* -2 Aw1 (expt Ay2 2)))
            Bx1))
          Bx2))
	By1)
       (*
	(+ (* -1 Ax1 Ax2 Ay2 Bw2)
	   (*
            (+ (* -1 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Ay2 Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* 2 Ax2 Ay1 Ay2)
             (* -3 Ax1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+ (* -2 Aw2 Ay1 Ay2)
             (* 3 Aw1 (expt Ay2 2)))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -1 (expt Ax2 2) Ay1)
             (* 2 Ax1 Ax2 Ay2))
            Bw1)
           (*
            (+ (* Aw2 Ax2 Ay1)
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Ay2))
            Bx1))
          By1)
	 (*
          (+ (* -1 Aw2 Ax1 Ax2)
             (* Aw1 (expt Ax2 2)))
          (expt By1 2)))
	By2))
      (expt Cw1 2))
     (*
      (+
       (*
	(+
	 (* 2 Ax2 (expt Ay1 2) Ay2)
	 (* -2 Ax1 Ay1 (expt Ay2 2)))
	Bx2)
       (*
	(+
	 (* (expt Ax2 2)
            (expt Ay1 2))
	 (* -4 Ax1 Ax2 Ay1 Ay2)
	 (* 3 (expt Ax1 2)
            (expt Ay2 2)))
	By2))
      (expt Cw1 3))
     (*
      (+
       (*
	(+
	 (* Ay1 (expt Ay2 2) Bw1 Bw2
            Bx1)
	 (* -1 Ay1 (expt Ay2 2)
            (expt Bw1 2) Bx2)
	 (*
          (+
           (*
            (+ (* Ax2 Ay1 Ay2)
               (* -2 Ax1 (expt Ay2 2)))
            Bw1 Bw2)
           (*
            (+ (* -2 Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            Bw2 Bx1)
           (*
            (+ (* Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            Bw1 Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1)
               (* -1 Aw1 Ax2))
            Ay2 Bw2)
           (* -1 Aw1 Aw2 Ay2 Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* -2 Ax2 Ay1 Ay2)
               (* 3 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (*
            (+ (* 2 Aw2 Ay1 Ay2)
               (* -3 Aw1 (expt Ay2 2)))
            Bw1 Bx1)
           (*
            (+
             (*
              (+ (* Aw2 Ax2 Ay1)
		 (*
		  (+ (* -4 Aw2 Ax1)
		     (* 2 Aw1 Ax2))
		  Ay2))
              Bw1)
             (*
              (+
               (* -1 (expt Aw2 2) Ay1)
               (* 2 Aw1 Aw2 Ay2))
              Bx1))
            By1)
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* -1 Aw1 Aw2 Ax2))
            (expt By1 2)))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -2 Ax2 (expt Ay1 2) Ay2)
           (* 2 Ax1 Ay1 (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* -2 Aw2 (expt Ay1 2) Ay2)
           (* 2 Aw1 Ay1 (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (* -2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Ay1 Ay2)
           (* -6 Aw1 Ax1 (expt Ay2 2)))
          By2))
	(expt Cw1 2)))
      Cx1)
     (*
      (+
       (*
	(+
	 (* 2 Aw2 (expt Ay1 2) Ay2)
	 (* -2 Aw1 Ay1 (expt Ay2 2)))
	Bw2)
       (*
	(+
	 (* (expt Aw2 2)
            (expt Ay1 2))
	 (* -4 Aw1 Aw2 Ay1 Ay2)
	 (* 3 (expt Aw1 2)
            (expt Ay2 2)))
	By2))
      Cw1 (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (*
          (+ (* -3 Ax2 Ay1 Ay2)
             (* 2 Ax1 (expt Ay2 2)))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* 4 Aw2 Ay1 Ay2)
             (* -2 Aw1 (expt Ay2 2)))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (*
            (+ (* -3 Aw2 Ay1 Ay2)
               (* Aw1 (expt Ay2 2)))
            Bw1 Bx1))
          Bx2)
	 (*
          (+
           (* (expt Ax2 2) Ay1 Bw1 Bw2)
           (*
            (+ (* -2 Aw2 Ax2 Ay1)
               (*
		(+ (* -4 Aw2 Ax1)
		   (* 3 Aw1 Ax2))
		Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax2 Ay1)
		 (* -2 Aw1 Ax2 Ay2))
              Bw1)
             (*
              (+
               (* -1 (expt Aw2 2) Ay1)
               (* 3 Aw1 Aw2 Ay2))
              Bx1))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Bw2)
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
            Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* -2 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -3 Aw2 Ax2 Ay1)
               (*
		(+ (* 4 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		Ay2))
            Bw1 Bx1)
           (*
            (+
             (* 2 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (* -1 Aw1 (expt Ax2 2) Bw1)
             (*
              (+
               (* -2 (expt Aw2 2) Ax1)
               (* 3 Aw1 Aw2 Ax2))
              Bx1))
            By1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -1 (expt Ax2 2)
              (expt Ay1 2))
           (* 4 Ax1 Ax2 Ay1 Ay2)
           (* -3 (expt Ax1 2)
              (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* -2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Ay1 Ay2)
           (* 2 Aw1 Ax1 (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Ay2))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+ (* Ax2 Ay1 Ay2)
             (* -1 Ax1 (expt Ay2 2)))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* -2 Aw2 Ay1 Ay2)
             (* Aw1 (expt Ay2 2)))
          Bw1 Bw2 Bx1)
	 (* Aw2 Ay1 Ay2 (expt Bw1 2)
            Bx2)
	 (*
          (+
           (*
            (+ (* -2 Aw2 Ax2 Ay1)
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -1 Aw1 Ax2))
		Ay2))
            Bw1 Bw2)
           (*
            (+
             (* 3 (expt Aw2 2) Ay1)
             (* -2 Aw1 Aw2 Ay2))
            Bw2 Bx1)
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* -1 Aw1 Aw2 Ay2))
            Bw1 Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* -3 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
            Bw2)
           (* Aw1 (expt Aw2 2) Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* Aw2 Ax2 Ay1)
               (* -2 Aw2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
            Bw1 Bx1)
           (*
            (+
             (*
              (+
               (* 2 (expt Aw2 2) Ax1)
               (* -1 Aw1 Aw2 Ax2))
              Bw1)
             (* -1 Aw1 (expt Aw2 2) Bx1))
            By1))
          By2)
	 (*
          (+
           (*
            (+
             (* 4 Aw2 Ax2 (expt Ay1 2))
             (* -8 Aw2 Ax1 Ay1 Ay2)
             (* 4 Aw1 Ax1 (expt Ay2 2)))
            Bw2)
           (*
            (+
             (* 2 (expt Aw2 2)
		(expt Ay1 2))
             (* -2 (expt Aw1 2)
		(expt Ay2 2)))
            Bx2)
           (*
            (+
             (* -4 (expt Aw2 2) Ax1 Ay1)
             (*
              (+ (* 8 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              Ay2))
            By2))
          Cw1))
	Cx1)
       (*
	(+
	 (*
          (+
           (* -3 (expt Aw2 2)
              (expt Ay1 2))
           (* 4 Aw1 Aw2 Ay1 Ay2)
           (* -1 (expt Aw1 2)
              (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ay1)
           (* -2 (expt Aw1 2) Aw2 Ay2))
          By2))
	(expt Cx1 2)))
      Cy1)
     (*
      (+
       (*
	(+ (* -1 (expt Ax2 2) Ay1)
	   (* Ax1 Ax2 Ay2))
	(expt Bw1 2) Bw2)
       (*
	(+ (* 4 Aw2 Ax2 Ay1)
	   (*
            (+ (* -2 Aw2 Ax1)
               (* -1 Aw1 Ax2))
            Ay2))
	Bw1 Bw2 Bx1)
       (*
	(+ (* -3 (expt Aw2 2) Ay1)
	   (* 2 Aw1 Aw2 Ay2))
	Bw2 (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* -2 Aw2 Ax2 Ay1)
             (* Aw2 Ax1 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* 2 (expt Aw2 2) Ay1)
             (* -1 Aw1 Aw2 Ay2))
          Bw1 Bx1))
	Bx2)
       (*
	(+
	 (*
          (+ (* -2 Aw2 Ax1 Ax2)
             (* Aw1 (expt Ax2 2)))
          Bw1 Bw2)
	 (*
          (+ (* 3 (expt Aw2 2) Ax1)
             (* -2 Aw1 Aw2 Ax2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* -1 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
            Bw1)
           (* -1 Aw1 (expt Aw2 2) Bx1))
          Bx2))
	By1)
       (*
	(+
	 (* Aw2 Ax1 Ax2 (expt Bw1 2))
	 (*
          (+ (* -1 (expt Aw2 2) Ax1)
             (* -1 Aw1 Aw2 Ax2))
          Bw1 Bx1)
	 (* Aw1 (expt Aw2 2)
            (expt Bx1 2)))
	By2)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 6 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Ay2))
          Bw2)
	 (*
          (+
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Ay2))
          Bx2)
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ax1 2))
           (* -4 Aw1 Aw2 Ax1 Ax2)
           (* (expt Aw1 2)
              (expt Ax2 2)))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 6 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Ay2))
          Bw2)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ay1)
           (* 2 (expt Aw1 2) Aw2 Ay2))
          Bx2)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ax1)
           (* 2 (expt Aw1 2) Aw2 Ax2))
          By2))
	Cx1))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (* -3 (expt Aw2 2)
            (expt Ax1 2))
	 (* 4 Aw1 Aw2 Ax1 Ax2)
	 (* -1 (expt Aw1 2)
            (expt Ax2 2)))
	Bw2)
       (*
	(+
	 (* 2 Aw1 (expt Aw2 2) Ax1)
	 (* -2 (expt Aw1 2) Aw2 Ax2))
	Bx2))
      (expt Cy1 3))
     (*
      (+
       (* 2 Ay1 (expt Ay2 2) Bw1 Bw2
	  (expt Bx1 2))
       (* -2 Ay1 (expt Ay2 2)
	  (expt Bw1 2) Bx1 Bx2)
       (*
	(+
	 (* -4 Ax1 (expt Ay2 2) Bw1 Bw2
            Bx1)
	 (*
          (+ (* -4 Aw2 Ay1 Ay2)
             (* 2 Aw1 (expt Ay2 2)))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 4 Ax2 Ay1 Ay2)
               (* -2 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (* 4 Aw1 (expt Ay2 2) Bw1
              Bx1))
          Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* -2 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
          Bw1 Bw2)
	 (*
          (+ (* 4 Aw2 Ax2 Ay1)
             (*
              (+ (* 4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax2 Ay1)
               (*
		(+ (* 4 Aw2 Ax1)
		   (* -4 Aw1 Ax2))
		Ay2))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
            Bx1))
          Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* -4 Aw2 Ax1 Ax2)
             (* 2 Aw1 (expt Ax2 2)))
          Bw2)
	 (*
          (+ (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
          Bx2))
	(expt By1 3))
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1 Ay2)
             (* 6 Ax1 (expt Ay2 2)))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* 4 Aw2 Ay1 Ay2)
             (* -6 Aw1 (expt Ay2 2)))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* 2 (expt Ax2 2) Ay1)
             (* -4 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -8 Aw2 Ax1)
               (* 8 Aw1 Ax2))
            Ay2 Bw1 Bx1)
           (*
            (+
             (* -2 (expt Aw2 2) Ay1)
             (* 4 Aw1 Aw2 Ay2))
            (expt Bx1 2)))
          By1)
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Bx1))
          (expt By1 2)))
	By2)
       (*
	(+
	 (*
          (+
           (* Ax2 (expt Ay1 2) Ay2)
           (* -1 Ax1 Ay1 (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* -6 Ax2 (expt Ay1 2) Ay2)
             (* 6 Ax1 Ay1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* Aw2 (expt Ay1 2) Ay2)
             (* -1 Aw1 Ay1 (expt Ay2 2)))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (* 2 (expt Ax2 2)
		(expt Ay1 2))
             (* -5 Ax1 Ax2 Ay1 Ay2)
             (* 3 (expt Ax1 2)
		(expt Ay2 2)))
            Bw2)
           (*
            (+
             (* 4 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -5 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1 Ay2)
             (* -1 Aw1 Ax1 (expt Ay2 2)))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* -3 (expt Ax2 2)
		(expt Ay1 2))
             (* 12 Ax1 Ax2 Ay1 Ay2)
             (* -9 (expt Ax1 2)
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -2 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1 Ay2)
             (* 3 Aw1 Ax1 (expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+ (* -5 Aw2 Ax1 Ax2)
		 (* Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Ay2))
            By1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -1 Ax2 (expt Ay1 2) Ay2)
           (* Ax1 Ay1 (expt Ay2 2)))
          Bw1 Bw2)
	 (*
          (+
           (* 6 Aw2 (expt Ay1 2) Ay2)
           (* -6 Aw1 Ay1 (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+
           (* -1 Aw2 (expt Ay1 2) Ay2)
           (* Aw1 Ay1 (expt Ay2 2)))
          Bw1 Bx2)
	 (*
          (+
           (*
            (+
             (* -4 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -2 Aw2 Ax1)
		 (* 5 Aw1 Ax2))
              Ay1 Ay2)
             (* Aw1 Ax1 (expt Ay2 2)))
            Bw2)
           (*
            (+
             (* -2 (expt Aw2 2)
		(expt Ay1 2))
             (* 5 Aw1 Aw2 Ay1 Ay2)
             (* -3 (expt Aw1 2)
		(expt Ay2 2)))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* -1 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* 2 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1 Ay2)
             (* -3 Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 3 (expt Aw2 2)
		(expt Ay1 2))
             (* -12 Aw1 Aw2 Ay1 Ay2)
             (* 9 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1)
           (*
            (+
             (*
              (+
               (* -1 (expt Aw2 2) Ax1)
               (* 5 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              Ay2))
            By1))
          By2))
	Cx1)
       (*
	(+
	 (*
          (+
           (* 4 (expt Ax2 2)
              (expt Ay1 2))
           (* -7 Ax1 Ax2 Ay1 Ay2)
           (* 3 (expt Ax1 2)
              (expt Ay2 2)))
          Bw1 Bw2)
	 (*
          (+
           (* -8 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 2 Aw2 Ax1)
               (* 7 Aw1 Ax2))
            Ay1 Ay2)
           (* -1 Aw1 Ax1 (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* 8 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* -7 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1 Ay2)
             (* Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -4 (expt Aw2 2)
		(expt Ay1 2))
             (* 7 Aw1 Aw2 Ay1 Ay2)
             (* -3 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 12 Aw2 Ax1 Ax2)
		 (* -6 Aw1 (expt Ax2 2)))
              Ay1)
             (* -6 Aw2 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+
               (* 6 (expt Aw2 2) Ax1)
               (* -12 Aw1 Aw2 Ax2))
              Ay1)
             (* 6 (expt Aw1 2) Ax2 Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -7 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* 7 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            By1))
          By2))
	Cy1))
      Dw1)
     (*
      (+
       (*
	(+
	 (* -3 (expt Ax2 2)
            (expt Ay1 3))
	 (* 6 Ax1 Ax2 (expt Ay1 2) Ay2)
	 (* -3 (expt Ax1 2) Ay1
            (expt Ay2 2)))
	Bw2)
       (*
	(+
	 (* -6 Aw2 Ax2 (expt Ay1 3))
	 (*
          (+ (* 6 Aw2 Ax1)
             (* 6 Aw1 Ax2))
          (expt Ay1 2) Ay2)
	 (* -6 Aw1 Ax1 Ay1 (expt Ay2 2)))
	Bx2)
       (*
	(+
	 (*
          (+ (* 6 Aw2 Ax1 Ax2)
             (* 3 Aw1 (expt Ax2 2)))
          (expt Ay1 2))
	 (*
          (+ (* -6 Aw2 (expt Ax1 2))
             (* -12 Aw1 Ax1 Ax2))
          Ay1 Ay2)
	 (* 9 Aw1 (expt Ax1 2)
            (expt Ay2 2)))
	By2))
      (expt Dw1 2)))
    Dx1)
   (*
    (+
     (* -1 Ay1 (expt Ay2 2)
	(expt Bw1 2) Bw2 Bx1)
     (* Ay1 (expt Ay2 2)
	(expt Bw1 3) Bx2)
     (*
      (+
       (*
	(+ (* -2 Ax2 Ay1 Ay2)
	   (* 3 Ax1 (expt Ay2 2)))
	(expt Bw1 2) Bw2)
       (*
	(+ (* 4 Aw2 Ay1 Ay2)
	   (* -2 Aw1 (expt Ay2 2)))
	Bw1 Bw2 Bx1)
       (*
	(+ (* -2 Aw2 Ay1 Ay2)
	   (* -1 Aw1 (expt Ay2 2)))
	(expt Bw1 2) Bx2))
      By1)
     (*
      (+
       (*
	(+ (* 2 Aw2 Ax2 Ay1)
	   (*
            (+ (* -6 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Ay2))
	Bw1 Bw2)
       (*
	(+ (* -3 (expt Aw2 2) Ay1)
	   (* 2 Aw1 Aw2 Ay2))
	Bw2 Bx1)
       (*
	(+ (* (expt Aw2 2) Ay1)
	   (* 2 Aw1 Aw2 Ay2))
	Bw1 Bx2))
      (expt By1 2))
     (*
      (+
       (*
	(+ (* 3 (expt Aw2 2) Ax1)
	   (* -2 Aw1 Aw2 Ax2))
	Bw2)
       (* -1 Aw1 (expt Aw2 2) Bx2))
      (expt By1 3))
     (*
      (+
       (*
	(+ (* 2 Ax2 Ay1 Ay2)
	   (* -3 Ax1 (expt Ay2 2)))
	(expt Bw1 3))
       (*
	(+ (* -2 Aw2 Ay1 Ay2)
	   (* 3 Aw1 (expt Ay2 2)))
	(expt Bw1 2) Bx1)
       (*
	(+
	 (*
          (+ (* -2 Aw2 Ax2 Ay1)
             (*
              (+ (* 6 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay2))
          (expt Bw1 2))
	 (*
          (+ (* 2 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
          Bw1 Bx1))
	By1)
       (*
	(+
	 (*
          (+ (* -3 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
          Bw1)
	 (* Aw1 (expt Aw2 2) Bx1))
	(expt By1 2)))
      By2)
     (*
      (+
       (*
	(+
	 (* 3 Ax2 (expt Ay1 2) Ay2)
	 (* -3 Ax1 Ay1 (expt Ay2 2)))
	Bw1 Bw2)
       (*
	(+
	 (* -4 Aw2 (expt Ay1 2) Ay2)
	 (* 4 Aw1 Ay1 (expt Ay2 2)))
	Bw2 Bx1)
       (*
	(+
	 (* 3 Aw2 (expt Ay1 2) Ay2)
	 (* -3 Aw1 Ay1 (expt Ay2 2)))
	Bw1 Bx2)
       (*
	(+
	 (*
          (+
           (* -2 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 6 Aw2 Ax1)
               (* -1 Aw1 Ax2))
            Ay1 Ay2)
           (* -3 Aw1 Ax1 (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ay1 2))
           (* -1 Aw1 Aw2 Ay1 Ay2)
           (* 2 (expt Aw1 2)
              (expt Ay2 2)))
          Bx2))
	By1)
       (*
	(+
	 (*
          (+
           (* 3 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -6 Aw2 Ax1)
               (* -6 Aw1 Ax2))
            Ay1 Ay2)
           (* 9 Aw1 Ax1 (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -2 (expt Aw2 2)
              (expt Ay1 2))
           (* 8 Aw1 Aw2 Ay1 Ay2)
           (* -6 (expt Aw1 2)
              (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+
             (* 3 (expt Aw2 2) Ax1)
             (* -1 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
               (* 4 (expt Aw1 2) Ax2))
            Ay2))
          By1))
	By2))
      Cw1)
     (*
      (+
       (*
	(+
	 (* -2 Aw2 (expt Ay1 2) Ay2)
	 (* 2 Aw1 Ay1 (expt Ay2 2)))
	Bw1 Bw2)
       (*
	(+
	 (* 3 (expt Aw2 2)
            (expt Ay1 2))
	 (* -4 Aw1 Aw2 Ay1 Ay2)
	 (* (expt Aw1 2)
            (expt Ay2 2)))
	Bw2 By1)
       (*
	(+
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ay1 2))
           (* 4 Aw1 Aw2 Ay1 Ay2)
           (* -3 (expt Aw1 2)
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ay1)
           (* 2 (expt Aw1 2) Aw2 Ay2))
          By1))
	By2))
      Cx1)
     (*
      (+
       (*
	(+
	 (* -4 Aw2 Ax2 (expt Ay1 2))
	 (*
          (+ (* 6 Aw2 Ax1)
             (* Aw1 Ax2))
          Ay1 Ay2)
	 (* -3 Aw1 Ax1 (expt Ay2 2)))
	Bw1 Bw2)
       (*
	(+
	 (* 6 (expt Aw2 2)
            (expt Ay1 2))
	 (* -8 Aw1 Aw2 Ay1 Ay2)
	 (* 2 (expt Aw1 2)
            (expt Ay2 2)))
	Bw2 Bx1)
       (*
	(+
	 (* -2 (expt Aw2 2)
            (expt Ay1 2))
	 (* Aw1 Aw2 Ay1 Ay2)
	 (* (expt Aw1 2)
            (expt Ay2 2)))
	Bw1 Bx2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -9 (expt Aw2 2) Ax1)
             (* 6 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            Ay2))
          Bw2)
	 (*
          (+
           (* 3 Aw1 (expt Aw2 2) Ay1)
           (* -3 (expt Aw1 2) Aw2 Ay2))
          Bx2))
	By1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 3 (expt Aw2 2) Ax1)
             (* Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -6 Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            Ay2))
          Bw1)
	 (*
          (+
           (* -4 Aw1 (expt Aw2 2) Ay1)
           (* 4 (expt Aw1 2) Aw2 Ay2))
          Bx1)
	 (*
          (+
           (* 3 Aw1 (expt Aw2 2) Ax1)
           (* -3 (expt Aw1 2) Aw2 Ax2))
          By1))
	By2))
      Cy1)
     (*
      (+
       (*
	(+
	 (* 6 Aw2 Ax2 (expt Ay1 3))
	 (*
          (+ (* -6 Aw2 Ax1)
             (* -6 Aw1 Ax2))
          (expt Ay1 2) Ay2)
	 (* 6 Aw1 Ax1 Ay1 (expt Ay2 2)))
	Bw2)
       (*
	(+
	 (* 3 (expt Aw2 2)
            (expt Ay1 3))
	 (* -6 Aw1 Aw2 (expt Ay1 2) Ay2)
	 (* 3 (expt Aw1 2) Ay1
            (expt Ay2 2)))
	Bx2)
       (*
	(+
	 (*
          (+ (* -3 (expt Aw2 2) Ax1)
             (* -6 Aw1 Aw2 Ax2))
          (expt Ay1 2))
	 (*
          (+ (* 12 Aw1 Aw2 Ax1)
             (* 6 (expt Aw1 2) Ax2))
          Ay1 Ay2)
	 (* -9 (expt Aw1 2) Ax1
            (expt Ay2 2)))
	By2))
      Dw1))
    (expt Dx1 2))
   (*
    (+
     (*
      (+
       (* -3 (expt Aw2 2)
	  (expt Ay1 3))
       (* 6 Aw1 Aw2 (expt Ay1 2) Ay2)
       (* -3 (expt Aw1 2) Ay1
	  (expt Ay2 2)))
      Bw2)
     (*
      (+
       (* 3 Aw1 (expt Aw2 2)
	  (expt Ay1 2))
       (* -6 (expt Aw1 2) Aw2 Ay1 Ay2)
       (* 3 (expt Aw1 3)
	  (expt Ay2 2)))
      By2))
    (expt Dx1 3))
   (*
    (+
     (*
      (+
       (* Ax2 Ay1 Ay2 Bw2
	  (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* -2 Ax2 Ay1 Ay2)
             (* Ax1 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+ (* Aw2 Ay1 Ay2)
             (* -1 Aw1 (expt Ay2 2)))
          (expt Bx1 2)))
	Bx2)
       (*
	(+
	 (*
          (+ (* -1 (expt Ax2 2) Ay1)
             (* -1 Ax1 Ax2 Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* 3 (expt Ax2 2) Ay1)
             (* -2 Ax1 Ax2 Ay2))
            Bw1)
           (*
            (+ (* -2 Aw2 Ax2 Ay1)
               (*
		(+ (* -1 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Ay2))
            Bx1))
          Bx2))
	By1)
       (*
	(+
	 (* Ax1 (expt Ax2 2) Bw2)
	 (*
          (+ (* 2 Aw2 Ax1 Ax2)
             (* -3 Aw1 (expt Ax2 2)))
          Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* -1 (expt Ax2 2) Ay1)
             (* 2 Ax1 Ax2 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* Aw2 Ax2 Ay1)
             (* -2 Aw1 Ax2 Ay2))
          (expt Bx1 2))
	 (*
          (+
           (* -1 Ax1 (expt Ax2 2) Bw1)
           (*
            (+ (* -1 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Bx1))
          By1))
	By2))
      (expt Cw1 2))
     (*
      (+
       (*
	(+
	 (* -3 (expt Ax2 2)
            (expt Ay1 2))
	 (* 4 Ax1 Ax2 Ay1 Ay2)
	 (* -1 (expt Ax1 2)
            (expt Ay2 2)))
	Bx2)
       (*
	(+
	 (* 2 Ax1 (expt Ax2 2) Ay1)
	 (* -2 (expt Ax1 2) Ax2 Ay2))
	By2))
      (expt Cw1 3))
     (*
      (+
       (*
	(+
	 (* -1 Ax1 (expt Ay2 2) Bw1 Bw2
            Bx1)
	 (*
          (+ (* -2 Aw2 Ay1 Ay2)
             (* Aw1 (expt Ay2 2)))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 2 Ax2 Ay1 Ay2)
               (* -1 Ax1 (expt Ay2 2)))
            (expt Bw1 2))
           (* Aw1 (expt Ay2 2) Bw1 Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (* -2 (expt Ax2 2) Ay1)
             (* 3 Ax1 Ax2 Ay2))
            Bw1 Bw2)
           (*
            (+ (* 4 Aw2 Ax2 Ay1)
               (*
		(+ (* 2 Aw2 Ax1)
		   (* -3 Aw1 Ax2))
		Ay2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* -4 Aw2 Ax2 Ay1)
		 (*
		  (+ (* 3 Aw2 Ax1)
		     (* -2 Aw1 Ax2))
		  Ay2))
              Bw1)
             (*
              (+
               (* 2 (expt Aw2 2) Ay1)
               (* -3 Aw1 Aw2 Ay2))
              Bx1))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Bw2)
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Bx2))
          (expt By1 2))
	 (*
          (+
           (*
            (+ (* (expt Ax2 2) Ay1)
               (* -2 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* -2 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Ay2 Bw1 Bx1)
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
            (expt Bx1 2))
           (*
            (+
             (*
              (+ (* 3 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Bw1)
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -3 Aw1 Aw2 Ax2))
              Bx1))
            By1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* 3 (expt Ax2 2)
              (expt Ay1 2))
           (* -4 Ax1 Ax2 Ay1 Ay2)
           (* (expt Ax1 2)
              (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* 6 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -4 Aw2 Ax1)
               (* -4 Aw1 Ax2))
            Ay1 Ay2)
           (* 2 Aw1 Ax1 (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* 4 Aw1 Ax1 Ax2))
            Ay2))
          By2))
	(expt Cw1 2)))
      Cx1)
     (*
      (+
       (*
	(+ (* -1 Ax2 Ay1 Ay2)
	   (* Ax1 (expt Ay2 2)))
	(expt Bw1 2) Bw2)
       (*
	(+ (* 2 Aw2 Ay1 Ay2)
	   (* -1 Aw1 (expt Ay2 2)))
	Bw1 Bw2 Bx1)
       (* -1 Aw2 Ay1 Ay2 (expt Bw1 2)
	  Bx2)
       (*
	(+
	 (*
          (+ (* 2 Aw2 Ax2 Ay1)
             (*
              (+ (* -4 Aw2 Ax1)
		 (* Aw1 Ax2))
              Ay2))
          Bw1 Bw2)
	 (*
          (+ (* -3 (expt Aw2 2) Ay1)
             (* 2 Aw1 Aw2 Ay2))
          Bw2 Bx1)
	 (*
          (+ (* (expt Aw2 2) Ay1)
             (* Aw1 Aw2 Ay2))
          Bw1 Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* 3 (expt Aw2 2) Ax1)
             (* -2 Aw1 Aw2 Ax2))
          Bw2)
	 (* -1 Aw1 (expt Aw2 2) Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* -1 Aw2 Ax2 Ay1)
             (* 2 Aw2 Ax1 Ay2))
          (expt Bw1 2))
	 (*
          (+ (* (expt Aw2 2) Ay1)
             (* -2 Aw1 Aw2 Ay2))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* Aw1 Aw2 Ax2))
            Bw1)
           (* Aw1 (expt Aw2 2) Bx1))
          By1))
	By2)
       (*
	(+
	 (*
          (+
           (* -6 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 4 Aw2 Ax1)
               (* 4 Aw1 Ax2))
            Ay1 Ay2)
           (* -2 Aw1 Ax1 (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (* -3 (expt Aw2 2)
              (expt Ay1 2))
           (* 4 Aw1 Aw2 Ay1 Ay2)
           (* -1 (expt Aw1 2)
              (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -4 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            Ay2))
          By2))
	Cw1))
      (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (* 3 (expt Aw2 2)
            (expt Ay1 2))
	 (* -4 Aw1 Aw2 Ay1 Ay2)
	 (* (expt Aw1 2)
            (expt Ay2 2)))
	Bw2)
       (*
	(+
	 (* -2 Aw1 (expt Aw2 2) Ay1)
	 (* 2 (expt Aw1 2) Aw2 Ay2))
	By2))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (*
          (+ (* 2 (expt Ax2 2) Ay1)
             (* -1 Ax1 Ax2 Ay2))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* -2 Aw2 Ax2 Ay1)
             (* Aw1 Ax2 Ay2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -3 (expt Ax2 2) Ay1)
             (* 2 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 4 Aw2 Ax2 Ay1)
               (*
		(+ (* -1 Aw2 Ax1)
		   (* -2 Aw1 Ax2))
		Ay2))
            Bw1 Bx1)
           (*
            (+
             (* -1 (expt Aw2 2) Ay1)
             (* Aw1 Aw2 Ay2))
            (expt Bx1 2)))
          Bx2)
	 (*
          (+
           (* -1 Ax1 (expt Ax2 2) Bw1
              Bw2)
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Bw2 Bx1)
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1 Ax2)
		 (* 3 Aw1 (expt Ax2 2)))
              Bw1)
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Bx1))
            Bx2))
          By1)
	 (*
          (+
           (* Ax1 (expt Ax2 2)
              (expt Bw1 2))
           (*
            (+ (* -1 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Bw1 Bx1)
           (* Aw1 Aw2 Ax2 (expt Bx1 2)))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -2 Ax1 (expt Ax2 2) Ay1)
           (* 2 (expt Ax1 2) Ax2 Ay2))
          Bw2)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 6 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            Ay2))
          Bx2)
	 (*
          (+
           (* 2 Aw2 (expt Ax1 2) Ax2)
           (* -2 Aw1 Ax1 (expt Ax2 2)))
          By2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+ (* (expt Ax2 2) Ay1)
             (* -1 Ax1 Ax2 Ay2))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* -4 Aw2 Ax2 Ay1)
             (*
              (+ (* 2 Aw2 Ax1)
		 (* Aw1 Ax2))
              Ay2))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* 3 (expt Aw2 2) Ay1)
             (* -2 Aw1 Aw2 Ay2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax2 Ay1)
               (* -1 Aw2 Ax1 Ay2))
            (expt Bw1 2))
           (*
            (+
             (* -2 (expt Aw2 2) Ay1)
             (* Aw1 Aw2 Ay2))
            Bw1 Bx1))
          Bx2)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Bw1 Bw2)
           (*
            (+
             (* -3 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
            Bw2 Bx1)
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Bw1)
             (* Aw1 (expt Aw2 2) Bx1))
            Bx2))
          By1)
	 (*
          (+
           (* -1 Aw2 Ax1 Ax2
              (expt Bw1 2))
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* Aw1 Aw2 Ax2))
            Bw1 Bx1)
           (* -1 Aw1 (expt Aw2 2)
              (expt Bx1 2)))
          By2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 8 Aw2 Ax1 Ax2)
		 (* -4 Aw1 (expt Ax2 2)))
              Ay1)
             (* -4 Aw2 (expt Ax1 2) Ay2))
            Bw2)
           (*
            (+
             (*
              (+
               (* 4 (expt Aw2 2) Ax1)
               (* -8 Aw1 Aw2 Ax2))
              Ay1)
             (* 4 (expt Aw1 2) Ax2 Ay2))
            Bx2)
           (*
            (+
             (* -2 (expt Aw2 2)
		(expt Ax1 2))
             (* 2 (expt Aw1 2)
		(expt Ax2 2)))
            By2))
          Cw1))
	Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -6 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            Ay2))
          Bw2)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ay1)
           (* -2 (expt Aw1 2) Aw2 Ay2))
          Bx2)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ax1)
           (* -2 (expt Aw1 2) Aw2 Ax2))
          By2))
	(expt Cx1 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -2 Aw2 (expt Ax1 2) Ax2)
           (* 2 Aw1 Ax1 (expt Ax2 2)))
          Bw2)
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ax1 2))
           (* 4 Aw1 Aw2 Ax1 Ax2)
           (* -3 (expt Aw1 2)
              (expt Ax2 2)))
          Bx2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ax1 2))
           (* -4 Aw1 Aw2 Ax1 Ax2)
           (* (expt Aw1 2)
              (expt Ax2 2)))
          Bw2)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ax1)
           (* 2 (expt Aw1 2) Aw2 Ax2))
          Bx2))
	Cx1))
      (expt Cy1 2))
     (*
      (+
       (*
	(+ (* -4 Ax2 Ay1 Ay2)
	   (* 2 Ax1 (expt Ay2 2)))
	Bw1 Bw2 (expt Bx1 2))
       (*
	(+ (* 4 Aw2 Ay1 Ay2)
	   (* -2 Aw1 (expt Ay2 2)))
	Bw2 (expt Bx1 3))
       (*
	(+
	 (*
          (+ (* 4 Ax2 Ay1 Ay2)
             (* -2 Ax1 (expt Ay2 2)))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* -4 Aw2 Ay1 Ay2)
             (* 2 Aw1 (expt Ay2 2)))
          Bw1 (expt Bx1 2)))
	Bx2)
       (*
	(+
	 (* 4 (expt Ax2 2) Ay1 Bw1 Bw2
            Bx1)
	 (*
          (+ (* -4 Aw2 Ax2 Ay1)
             (*
              (+ (* -4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -6 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
            (expt Bw1 2))
           (*
            (+ (* 8 Aw2 Ax2 Ay1)
               (* -8 Aw1 Ax2 Ay2))
            Bw1 Bx1)
           (*
            (+
             (* -2 (expt Aw2 2) Ay1)
             (* 4 Aw1 Aw2 Ay2))
            (expt Bx1 2)))
          Bx2))
	By1)
       (*
	(+
	 (* -2 Ax1 (expt Ax2 2) Bw1 Bw2)
	 (*
          (+ (* 4 Aw2 Ax1 Ax2)
             (* -2 Aw1 (expt Ax2 2)))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 6 Aw1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Bx1))
          Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* 2 (expt Ax2 2) Ay1)
             (* -4 Ax1 Ax2 Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* -4 Aw2 Ax2 Ay1)
             (*
              (+ (* 4 Aw2 Ax1)
		 (* 4 Aw1 Ax2))
              Ay2))
          Bw1 (expt Bx1 2))
	 (*
          (+ (* 2 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
          (expt Bx1 3))
	 (*
          (+
           (* 2 Ax1 (expt Ax2 2)
              (expt Bw1 2))
           (* -4 Aw1 (expt Ax2 2) Bw1
              Bx1)
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            (expt Bx1 2)))
          By1))
	By2)
       (*
	(+
	 (*
          (+
           (* -3 (expt Ax2 2)
              (expt Ay1 2))
           (* 5 Ax1 Ax2 Ay1 Ay2)
           (* -2 (expt Ax1 2)
              (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* 9 (expt Ax2 2)
		(expt Ay1 2))
             (* -12 Ax1 Ax2 Ay1 Ay2)
             (* 3 (expt Ax1 2)
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -6 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* 5 Aw2 Ax1)
		 (* 2 Aw1 Ax2))
              Ay1 Ay2)
             (* -1 Aw1 Ax1 (expt Ay2 2)))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (* Ax1 (expt Ax2 2) Ay1)
             (* -1 (expt Ax1 2) Ax2 Ay2))
            Bw2)
           (*
            (+
             (*
              (+ (* 2 Aw2 Ax1 Ax2)
		 (* -3 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -1 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* -6 Ax1 (expt Ax2 2) Ay1)
             (* 6 (expt Ax1 2) Ax2 Ay2))
            Bw1)
           (*
            (+
             (*
              (+ (* 5 Aw2 Ax1 Ax2)
		 (* Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -4 Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* -1 Aw2 (expt Ax1 2) Ax2)
             (* Aw1 Ax1 (expt Ax2 2)))
            By1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -3 (expt Ax2 2)
              (expt Ay1 2))
           (* 7 Ax1 Ax2 Ay1 Ay2)
           (* -4 (expt Ax1 2)
              (expt Ay2 2)))
          Bw1 Bw2)
	 (*
          (+
           (* 6 Aw2 Ax2 (expt Ay1 2))
           (* -12 Aw2 Ax1 Ay1 Ay2)
           (* 6 Aw1 Ax1 (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 Ax2 (expt Ay1 2))
             (*
              (+ (* 7 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              Ay1 Ay2)
             (* Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 3 (expt Aw2 2)
		(expt Ay1 2))
             (* -3 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1 Ax2)
		 (* Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* 8 Aw2 (expt Ax1 2))
               (* -7 Aw1 Ax1 Ax2))
              Ay2))
            Bw2)
           (*
            (+
             (*
              (+
               (* -1 (expt Aw2 2) Ax1)
               (* 2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -7 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 7 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -8 Aw2 (expt Ax1 2))
               (* 2 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (* -6 (expt Aw2 2) Ax1 Ay1)
             (*
              (+ (* 12 Aw1 Aw2 Ax1)
		 (* -6 (expt Aw1 2) Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* 4 (expt Aw2 2)
		(expt Ax1 2))
             (* -7 Aw1 Aw2 Ax1 Ax2)
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            By1))
          By2))
	Cx1)
       (*
	(+
	 (*
          (+
           (* -1 Ax1 (expt Ax2 2) Ay1)
           (* (expt Ax1 2) Ax2 Ay2))
          Bw1 Bw2)
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 4 Aw2 (expt Ax1 2))
             (* -5 Aw1 Ax1 Ax2))
            Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1 Ax2)
		 (* 3 Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* Aw2 (expt Ax1 2))
               (* -2 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -5 Aw1 Aw2 Ax1)
		 (* 6 (expt Aw1 2) Ax2))
              Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 (expt Ax1 2) Ax2)
             (* 6 Aw1 Ax1 (expt Ax2 2)))
            Bw2)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 12 Aw1 Aw2 Ax1 Ax2)
             (* -9 (expt Aw1 2)
		(expt Ax2 2)))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* Aw2 (expt Ax1 2) Ax2)
             (* -1 Aw1 Ax1 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2)
		(expt Ax1 2))
             (* -5 Aw1 Aw2 Ax1 Ax2)
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            Bx1))
          By2))
	Cy1))
      Dw1)
     (*
      (+
       (*
	(+
	 (* 3 Ax1 (expt Ax2 2)
            (expt Ay1 2))
	 (* -6 (expt Ax1 2) Ax2 Ay1 Ay2)
	 (* 3 (expt Ax1 3)
            (expt Ay2 2)))
	Bw2)
       (*
	(+
	 (*
          (+ (* 6 Aw2 Ax1 Ax2)
             (* -9 Aw1 (expt Ax2 2)))
          (expt Ay1 2))
	 (*
          (+ (* -6 Aw2 (expt Ax1 2))
             (* 12 Aw1 Ax1 Ax2))
          Ay1 Ay2)
	 (* -3 Aw1 (expt Ax1 2)
            (expt Ay2 2)))
	Bx2)
       (*
	(+
	 (*
          (+
           (* -6 Aw2 (expt Ax1 2) Ax2)
           (* 6 Aw1 Ax1 (expt Ax2 2)))
          Ay1)
	 (*
          (+ (* 6 Aw2 (expt Ax1 3))
             (* -6 Aw1 (expt Ax1 2) Ax2))
          Ay2))
	By2))
      (expt Dw1 2))
     (*
      (+
       (*
	(+ (* 4 Ax2 Ay1 Ay2)
	   (* -2 Ax1 (expt Ay2 2)))
	(expt Bw1 2) Bw2 Bx1)
       (*
	(+ (* -4 Aw2 Ay1 Ay2)
	   (* 2 Aw1 (expt Ay2 2)))
	Bw1 Bw2 (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* -4 Ax2 Ay1 Ay2)
             (* 2 Ax1 (expt Ay2 2)))
          (expt Bw1 3))
	 (*
          (+ (* 4 Aw2 Ay1 Ay2)
             (* -2 Aw1 (expt Ay2 2)))
          (expt Bw1 2) Bx1))
	Bx2)
       (*
	(+
	 (*
          (+ (* 2 (expt Ax2 2) Ay1)
             (* -4 Ax1 Ax2 Ay2))
          (expt Bw1 2) Bw2)
	 (*
          (+ (* -8 Aw2 Ax2 Ay1)
             (* 8 Aw2 Ax1 Ay2))
          Bw1 Bw2 Bx1)
	 (*
          (+ (* 6 (expt Aw2 2) Ay1)
             (* -4 Aw1 Aw2 Ay2))
          Bw2 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* 4 Aw2 Ax2 Ay1)
               (*
		(+ (* -4 Aw2 Ax1)
		   (* 4 Aw1 Ax2))
		Ay2))
            (expt Bw1 2))
           (* -4 (expt Aw2 2) Ay1 Bw1
              Bx1))
          Bx2))
	By1)
       (*
	(+
	 (*
          (+ (* 4 Aw2 Ax1 Ax2)
             (* -2 Aw1 (expt Ax2 2)))
          Bw1 Bw2)
	 (*
          (+ (* -6 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Bw1)
           (* 2 Aw1 (expt Aw2 2) Bx1))
          Bx2))
	(expt By1 2))
       (*
	(+
	 (*
          (+ (* -2 (expt Ax2 2) Ay1)
             (* 4 Ax1 Ax2 Ay2))
          (expt Bw1 3))
	 (*
          (+ (* 4 Aw2 Ax2 Ay1)
             (*
              (+ (* -4 Aw2 Ax1)
		 (* -4 Aw1 Ax2))
              Ay2))
          (expt Bw1 2) Bx1)
	 (*
          (+ (* -2 (expt Aw2 2) Ay1)
             (* 4 Aw1 Aw2 Ay2))
          Bw1 (expt Bx1 2))
	 (*
          (+
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            (expt Bw1 2))
           (* 4 (expt Aw2 2) Ax1 Bw1 Bx1)
           (* -2 Aw1 (expt Aw2 2)
              (expt Bx1 2)))
          By1))
	By2)
       (*
	(+
	 (*
          (+
           (* -3 (expt Ax2 2)
              (expt Ay1 2))
           (* 3 (expt Ax1 2)
              (expt Ay2 2)))
          Bw1 Bw2)
	 (*
          (+
           (* 6 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* 2 Aw2 Ax1)
               (* -7 Aw1 Ax2))
            Ay1 Ay2)
           (* -1 Aw1 Ax1 (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (* -6 Aw2 Ax2 (expt Ay1 2))
             (* 12 Aw1 Ax2 Ay1 Ay2)
             (* -6 Aw1 Ax1 (expt Ay2 2)))
            Bw1)
           (*
            (+
             (* 3 (expt Aw2 2)
		(expt Ay1 2))
             (* -7 Aw1 Aw2 Ay1 Ay2)
             (* 4 (expt Aw1 2)
		(expt Ay2 2)))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+ (* -2 Aw2 Ax1 Ax2)
		 (* Aw1 (expt Ax2 2)))
              Ay1)
             (*
              (+
               (* -6 Aw2 (expt Ax1 2))
               (* 7 Aw1 Ax1 Ax2))
              Ay2))
            Bw2)
           (*
            (+
             (*
              (+
               (* -1 (expt Aw2 2) Ax1)
               (* 2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 7 Aw1 Aw2 Ax1)
		 (* -8 (expt Aw1 2) Ax2))
              Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* 6 Aw1 (expt Ax2 2) Ay1)
             (*
              (+
               (* 6 Aw2 (expt Ax1 2))
               (* -12 Aw1 Ax1 Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -7 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* 8 (expt Aw1 2) Ax2))
              Ay2))
            Bx1)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 7 Aw1 Aw2 Ax1 Ax2)
             (* -4 (expt Aw1 2)
		(expt Ax2 2)))
            By1))
          By2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* 6 Aw2 Ax2 (expt Ay1 2))
           (*
            (+ (* -2 Aw2 Ax1)
               (* -5 Aw1 Ax2))
            Ay1 Ay2)
           (* Aw1 Ax1 (expt Ay2 2)))
          Bw1 Bw2)
	 (*
          (+
           (* -9 (expt Aw2 2)
              (expt Ay1 2))
           (* 12 Aw1 Aw2 Ay1 Ay2)
           (* -3 (expt Aw1 2)
              (expt Ay2 2)))
          Bw2 Bx1)
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ay1 2))
           (* -5 Aw1 Aw2 Ay1 Ay2)
           (* 2 (expt Aw1 2)
              (expt Ay2 2)))
          Bw1 Bx2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3 (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* -2 Aw1 Aw2 Ax1)
		 (* (expt Aw1 2) Ax2))
              Ay2))
            Bw2)
           (*
            (+
             (* -1 Aw1 (expt Aw2 2) Ay1)
             (* (expt Aw1 2) Aw2 Ay2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1 (expt Aw2 2) Ax1)
               (* -5 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 2 Aw1 Aw2 Ax1)
		 (* 4 (expt Aw1 2) Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (* 6 Aw1 (expt Aw2 2) Ay1)
             (* -6 (expt Aw1 2) Aw2 Ay2))
            Bx1)
           (*
            (+
             (* -1 Aw1 (expt Aw2 2) Ax1)
             (* (expt Aw1 2) Aw2 Ax2))
            By1))
          By2))
	Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -6 Aw2 (expt Ax1 2))
             (* 5 Aw1 Ax1 Ax2))
            Ay2))
          Bw1 Bw2)
	 (*
          (+
           (*
            (+
             (* -3 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* 2 Aw1 Aw2 Ax1)
               (* -1 (expt Aw1 2) Ax2))
            Ay2))
          Bw2 Bx1)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -2 Aw1 Aw2 Ax2))
              Ay1)
             (*
              (+ (* 5 Aw1 Aw2 Ax1)
		 (* -4 (expt Aw1 2) Ax2))
              Ay2))
            Bw1)
           (*
            (+
             (* Aw1 (expt Aw2 2) Ay1)
             (* -1 (expt Aw1 2) Aw2 Ay2))
            Bx1))
          Bx2)
	 (*
          (+
           (*
            (+
             (* 9 (expt Aw2 2)
		(expt Ax1 2))
             (* -12 Aw1 Aw2 Ax1 Ax2)
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            Bw2)
           (*
            (+
             (* -6 Aw1 (expt Aw2 2) Ax1)
             (* 6 (expt Aw1 2) Aw2 Ax2))
            Bx2))
          By1)
	 (*
          (+
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 5 Aw1 Aw2 Ax1 Ax2)
             (* -2 (expt Aw1 2)
		(expt Ax2 2)))
            Bw1)
           (*
            (+
             (* Aw1 (expt Aw2 2) Ax1)
             (* -1 (expt Aw1 2) Aw2 Ax2))
            Bx1))
          By2))
	Cy1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -12 Aw2 Ax1 Ax2)
               (* 6 Aw1 (expt Ax2 2)))
            (expt Ay1 2))
           (* 12 Aw2 (expt Ax1 2) Ay1
              Ay2)
           (* -6 Aw1 (expt Ax1 2)
              (expt Ay2 2)))
          Bw2)
	 (*
          (+
           (*
            (+
             (* -6 (expt Aw2 2) Ax1)
             (* 12 Aw1 Aw2 Ax2))
            (expt Ay1 2))
           (* -12 (expt Aw1 2) Ax2 Ay1
              Ay2)
           (* 6 (expt Aw1 2) Ax1
              (expt Ay2 2)))
          Bx2)
	 (*
          (+
           (*
            (+
             (* 6 (expt Aw2 2)
		(expt Ax1 2))
             (* -6 (expt Aw1 2)
		(expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -12 Aw1 Aw2 (expt Ax1 2))
             (* 12 (expt Aw1 2) Ax1 Ax2))
            Ay2))
          By2))
	Dw1))
      Dx1)
     (*
      (+
       (*
	(+
	 (*
          (+ (* 9 (expt Aw2 2) Ax1)
             (* -6 Aw1 Aw2 Ax2))
          (expt Ay1 2))
	 (*
          (+ (* -12 Aw1 Aw2 Ax1)
             (* 6 (expt Aw1 2) Ax2))
          Ay1 Ay2)
	 (* 3 (expt Aw1 2) Ax1
            (expt Ay2 2)))
	Bw2)
       (*
	(+
	 (* -3 Aw1 (expt Aw2 2)
            (expt Ay1 2))
	 (* 6 (expt Aw1 2) Aw2 Ay1 Ay2)
	 (* -3 (expt Aw1 3)
            (expt Ay2 2)))
	Bx2)
       (*
	(+
	 (*
          (+
           (* -6 Aw1 (expt Aw2 2) Ax1)
           (* 6 (expt Aw1 2) Aw2 Ax2))
          Ay1)
	 (*
          (+
           (* 6 (expt Aw1 2) Aw2 Ax1)
           (* -6 (expt Aw1 3) Ax2))
          Ay2))
	By2))
      (expt Dx1 2)))
    Dy1)
   (*
    (+
     (*
      (+ (* -3 (expt Ax2 2) Ay1)
	 (* 2 Ax1 Ax2 Ay2))
      (expt Bw1 2) Bw2 Bx1)
     (*
      (+ (* 6 Aw2 Ax2 Ay1)
	 (*
	  (+ (* -2 Aw2 Ax1)
	     (* -2 Aw1 Ax2))
	  Ay2))
      Bw1 Bw2 (expt Bx1 2))
     (*
      (+ (* -3 (expt Aw2 2) Ay1)
	 (* 2 Aw1 Aw2 Ay2))
      Bw2 (expt Bx1 3))
     (*
      (+
       (*
	(+ (* 3 (expt Ax2 2) Ay1)
	   (* -2 Ax1 Ax2 Ay2))
	(expt Bw1 3))
       (*
	(+ (* -6 Aw2 Ax2 Ay1)
	   (*
            (+ (* 2 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            Ay2))
	(expt Bw1 2) Bx1)
       (*
	(+ (* 3 (expt Aw2 2) Ay1)
	   (* -2 Aw1 Aw2 Ay2))
	Bw1 (expt Bx1 2)))
      Bx2)
     (*
      (+
       (* Ax1 (expt Ax2 2)
	  (expt Bw1 2) Bw2)
       (*
	(+ (* -4 Aw2 Ax1 Ax2)
	   (* 2 Aw1 (expt Ax2 2)))
	Bw1 Bw2 Bx1)
       (*
	(+ (* 3 (expt Aw2 2) Ax1)
	   (* -2 Aw1 Aw2 Ax2))
	Bw2 (expt Bx1 2))
       (*
	(+
	 (*
          (+ (* 2 Aw2 Ax1 Ax2)
             (* -3 Aw1 (expt Ax2 2)))
          (expt Bw1 2))
	 (*
          (+ (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
          Bw1 Bx1)
	 (* -1 Aw1 (expt Aw2 2)
            (expt Bx1 2)))
	Bx2))
      By1)
     (*
      (+
       (* -1 Ax1 (expt Ax2 2)
	  (expt Bw1 3))
       (*
	(+ (* 2 Aw2 Ax1 Ax2)
	   (* Aw1 (expt Ax2 2)))
	(expt Bw1 2) Bx1)
       (*
	(+ (* -1 (expt Aw2 2) Ax1)
	   (* -2 Aw1 Aw2 Ax2))
	Bw1 (expt Bx1 2))
       (* Aw1 (expt Aw2 2)
	  (expt Bx1 3)))
      By2)
     (*
      (+
       (*
	(+
	 (* 3 Ax1 (expt Ax2 2) Ay1)
	 (* -3 (expt Ax1 2) Ax2 Ay2))
	Bw1 Bw2)
       (*
	(+
	 (*
          (+ (* -6 Aw2 Ax1 Ax2)
             (* 3 Aw1 (expt Ax2 2)))
          Ay1)
	 (*
          (+ (* 2 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
          Ay2))
	Bw2 Bx1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 6 Aw2 Ax1 Ax2)
               (* -9 Aw1 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -3 Aw2 (expt Ax1 2))
             (* 6 Aw1 Ax1 Ax2))
            Ay2))
          Bw1)
	 (*
          (+
           (*
            (+
             (* -3 (expt Aw2 2) Ax1)
             (* 6 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* Aw1 Aw2 Ax1)
               (* -4 (expt Aw1 2) Ax2))
            Ay2))
          Bx1))
	Bx2)
       (*
	(+
	 (*
          (+
           (* 4 Aw2 (expt Ax1 2) Ax2)
           (* -4 Aw1 Ax1 (expt Ax2 2)))
          Bw2)
	 (*
          (+
           (* 2 (expt Aw2 2)
              (expt Ax1 2))
           (* -8 Aw1 Aw2 Ax1 Ax2)
           (* 6 (expt Aw1 2)
              (expt Ax2 2)))
          Bx2))
	By1)
       (*
	(+
	 (*
          (+
           (* -3 Aw2 (expt Ax1 2) Ax2)
           (* 3 Aw1 Ax1 (expt Ax2 2)))
          Bw1)
	 (*
          (+
           (* (expt Aw2 2)
              (expt Ax1 2))
           (* Aw1 Aw2 Ax1 Ax2)
           (* -2 (expt Aw1 2)
              (expt Ax2 2)))
          Bx1))
	By2))
      Cw1)
     (*
      (+
       (*
	(+
	 (*
          (+ (* -6 Aw2 Ax1 Ax2)
             (* 3 Aw1 (expt Ax2 2)))
          Ay1)
	 (*
          (+ (* 4 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
          Ay2))
	Bw1 Bw2)
       (*
	(+
	 (*
          (+ (* 9 (expt Aw2 2) Ax1)
             (* -6 Aw1 Aw2 Ax2))
          Ay1)
	 (*
          (+ (* -6 Aw1 Aw2 Ax1)
             (* 3 (expt Aw1 2) Ax2))
          Ay2))
	Bw2 Bx1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -3 (expt Aw2 2) Ax1)
             (* 6 Aw1 Aw2 Ax2))
            Ay1)
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            Ay2))
          Bw1)
	 (*
          (+
           (* -3 Aw1 (expt Aw2 2) Ay1)
           (* 3 (expt Aw1 2) Aw2 Ay2))
          Bx1))
	Bx2)
       (*
	(+
	 (*
          (+
           (* -6 (expt Aw2 2)
              (expt Ax1 2))
           (* 8 Aw1 Aw2 Ax1 Ax2)
           (* -2 (expt Aw1 2)
              (expt Ax2 2)))
          Bw2)
	 (*
          (+
           (* 4 Aw1 (expt Aw2 2) Ax1)
           (* -4 (expt Aw1 2) Aw2 Ax2))
          Bx2))
	By1)
       (*
	(+
	 (*
          (+
           (* 2 (expt Aw2 2)
              (expt Ax1 2))
           (* -1 Aw1 Aw2 Ax1 Ax2)
           (* -1 (expt Aw1 2)
              (expt Ax2 2)))
          Bw1)
	 (*
          (+
           (* -3 Aw1 (expt Aw2 2) Ax1)
           (* 3 (expt Aw1 2) Aw2 Ax2))
          Bx1))
	By2))
      Cx1)
     (*
      (+
       (*
	(+
	 (* 2 Aw2 (expt Ax1 2) Ax2)
	 (* -2 Aw1 Ax1 (expt Ax2 2)))
	Bw1 Bw2)
       (*
	(+
	 (* -3 (expt Aw2 2)
            (expt Ax1 2))
	 (* 4 Aw1 Aw2 Ax1 Ax2)
	 (* -1 (expt Aw1 2)
            (expt Ax2 2)))
	Bw2 Bx1)
       (*
	(+
	 (*
          (+
           (* (expt Aw2 2)
              (expt Ax1 2))
           (* -4 Aw1 Aw2 Ax1 Ax2)
           (* 3 (expt Aw1 2)
              (expt Ax2 2)))
          Bw1)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ax1)
           (* -2 (expt Aw1 2) Aw2 Ax2))
          Bx1))
	Bx2))
      Cy1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 6 Aw2 (expt Ax1 2) Ax2)
           (* -6 Aw1 Ax1 (expt Ax2 2)))
          Ay1)
	 (*
          (+ (* -6 Aw2 (expt Ax1 3))
             (* 6 Aw1 (expt Ax1 2) Ax2))
          Ay2))
	Bw2)
       (*
	(+
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ax1 2))
           (* -12 Aw1 Aw2 Ax1 Ax2)
           (* 9 (expt Aw1 2)
              (expt Ax2 2)))
          Ay1)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Ay2))
	Bx2)
       (*
	(+
	 (* -3 (expt Aw2 2)
            (expt Ax1 3))
	 (* 6 Aw1 Aw2 (expt Ax1 2) Ax2)
	 (* -3 (expt Aw1 2) Ax1
            (expt Ax2 2)))
	By2))
      Dw1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -9 (expt Aw2 2)
              (expt Ax1 2))
           (* 12 Aw1 Aw2 Ax1 Ax2)
           (* -3 (expt Aw1 2)
              (expt Ax2 2)))
          Ay1)
	 (*
          (+
           (* 6 Aw1 Aw2 (expt Ax1 2))
           (* -6 (expt Aw1 2) Ax1 Ax2))
          Ay2))
	Bw2)
       (*
	(+
	 (*
          (+
           (* 6 Aw1 (expt Aw2 2) Ax1)
           (* -6 (expt Aw1 2) Aw2 Ax2))
          Ay1)
	 (*
          (+
           (* -6 (expt Aw1 2) Aw2 Ax1)
           (* 6 (expt Aw1 3) Ax2))
          Ay2))
	Bx2)
       (*
	(+
	 (* 3 Aw1 (expt Aw2 2)
            (expt Ax1 2))
	 (* -6 (expt Aw1 2) Aw2 Ax1 Ax2)
	 (* 3 (expt Aw1 3)
            (expt Ax2 2)))
	By2))
      Dx1))
    (expt Dy1 2))
   (*
    (+
     (*
      (+
       (* 3 (expt Aw2 2)
	  (expt Ax1 3))
       (* -6 Aw1 Aw2 (expt Ax1 2) Ax2)
       (* 3 (expt Aw1 2) Ax1
	  (expt Ax2 2)))
      Bw2)
     (*
      (+
       (* -3 Aw1 (expt Aw2 2)
	  (expt Ax1 2))
       (* 6 (expt Aw1 2) Aw2 Ax1 Ax2)
       (* -3 (expt Aw1 3)
	  (expt Ax2 2)))
      Bx2))
    (expt Dy1 3))))



(defun intersection-rational-power-basis-cubic/quadratic-c6
    (Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1 Ax2 Bx2 Cx2 Ay2 By2 Cy2 Aw2 Bw2 Cw2)
  (declare (ignore Bx2 Cx2 By2 Bw2 Cy2 Cw2))
  (+
   (*
    (+
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1 Ax2 Ay1 (expt Ay2 2))
           (* Ax1 (expt Ay2 3)))
          Bw1 Bx1)
	 (*
          (+
           (* Aw2 Ay1 (expt Ay2 2))
           (* -1 Aw1 (expt Ay2 3)))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* (expt Ax2 2) Ay1 Ay2)
             (* -1 Ax1 Ax2 (expt Ay2 2)))
            Bw1)
           (*
            (+ (* -1 Aw2 Ax2 Ay1 Ay2)
               (*
		(+ (* -1 Aw2 Ax1)
		   (* 2 Aw1 Ax2))
		(expt Ay2 2)))
            Bx1))
          By1)
	 (*
          (+ (* Aw2 Ax1 Ax2)
             (* -1 Aw1 (expt Ax2 2)))
          Ay2 (expt By1 2)))
	Cw1)
       (*
	(+
	 (* -1 (expt Ax2 2)
            (expt Ay1 2) Ay2)
	 (* 2 Ax1 Ax2 Ay1 (expt Ay2 2))
	 (* -1 (expt Ax1 2)
            (expt Ay2 3)))
	(expt Cw1 2)))
      Cx1)
     (*
      (+
       (*
	(+
	 (* Ax2 Ay1 (expt Ay2 2))
	 (* -1 Ax1 (expt Ay2 3)))
	(expt Bw1 2))
       (*
	(+
	 (* -1 Aw2 Ay1 (expt Ay2 2))
	 (* Aw1 (expt Ay2 3)))
	Bw1 Bx1)
       (*
	(+
	 (*
          (+ (* -1 Aw2 Ax2 Ay1 Ay2)
             (*
              (+ (* 2 Aw2 Ax1)
		 (* -1 Aw1 Ax2))
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* (expt Aw2 2) Ay1 Ay2)
           (* -1 Aw1 Aw2 (expt Ay2 2)))
          Bx1))
	By1)
       (*
	(+ (* -1 (expt Aw2 2) Ax1)
	   (* Aw1 Aw2 Ax2))
	Ay2 (expt By1 2))
       (*
	(+
	 (* 2 Aw2 Ax2 (expt Ay1 2) Ay2)
	 (*
          (+ (* -2 Aw2 Ax1)
             (* -2 Aw1 Ax2))
          Ay1 (expt Ay2 2))
	 (* 2 Aw1 Ax1 (expt Ay2 3)))
	Cw1))
      (expt Cx1 2))
     (*
      (+
       (* -1 (expt Aw2 2)
	  (expt Ay1 2) Ay2)
       (* 2 Aw1 Aw2 Ay1 (expt Ay2 2))
       (* -1 (expt Aw1 2)
	  (expt Ay2 3)))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* (expt Ax2 2) Ay1 Ay2)
           (* -1 Ax1 Ax2 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+ (* -1 Aw2 Ax2 Ay1 Ay2)
             (* Aw1 Ax2 (expt Ay2 2)))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -1 (expt Ax2 3) Ay1)
             (* Ax1 (expt Ax2 2) Ay2))
            Bw1)
           (*
            (+
             (* Aw2 (expt Ax2 2) Ay1)
             (*
              (+ (* Aw2 Ax1 Ax2)
		 (* -2 Aw1 (expt Ax2 2)))
              Ay2))
            Bx1))
          By1)
	 (*
          (+
           (* -1 Aw2 Ax1 (expt Ax2 2))
           (* Aw1 (expt Ax2 3)))
          (expt By1 2)))
	Cw1)
       (*
	(+
	 (* (expt Ax2 3)
            (expt Ay1 2))
	 (* -2 Ax1 (expt Ax2 2) Ay1 Ay2)
	 (* (expt Ax1 2) Ax2
            (expt Ay2 2)))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (* -2 (expt Ax2 2) Ay1 Ay2)
           (* 2 Ax1 Ax2 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+ (* 3 Aw2 Ax2 Ay1 Ay2)
             (*
              (+ (* -1 Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+
           (* -1 (expt Aw2 2) Ay1 Ay2)
           (* Aw1 Aw2 (expt Ay2 2)))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* Aw2 (expt Ax2 2) Ay1)
             (*
              (+ (* -3 Aw2 Ax1 Ax2)
		 (* 2 Aw1 (expt Ax2 2)))
              Ay2))
            Bw1)
           (*
            (+
             (* -1 (expt Aw2 2) Ax2 Ay1)
             (* (expt Aw2 2) Ax1 Ay2))
            Bx1))
          By1)
	 (*
          (+
           (* (expt Aw2 2) Ax1 Ax2)
           (* -1 Aw1 Aw2 (expt Ax2 2)))
          (expt By1 2))
	 (*
          (+
           (* -2 Aw2 (expt Ax2 2)
              (expt Ay1 2))
           (* 4 Aw1 (expt Ax2 2) Ay1 Ay2)
           (*
            (+
             (* 2 Aw2 (expt Ax1 2))
             (* -4 Aw1 Ax1 Ax2))
            (expt Ay2 2)))
          Cw1))
	Cx1)
       (*
	(+
	 (* (expt Aw2 2) Ax2
            (expt Ay1 2))
	 (*
          (+ (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
          Ay1 Ay2)
	 (*
          (+ (* -2 Aw1 Aw2 Ax1)
             (* 3 (expt Aw1 2) Ax2))
          (expt Ay2 2)))
	(expt Cx1 2)))
      Cy1)
     (*
      (+
       (*
	(+ (* (expt Ax2 3) Ay1)
	   (* -1 Ax1 (expt Ax2 2) Ay2))
	(expt Bw1 2))
       (*
	(+
	 (* -2 Aw2 (expt Ax2 2) Ay1)
	 (*
          (+ (* Aw2 Ax1 Ax2)
             (* Aw1 (expt Ax2 2)))
          Ay2))
	Bw1 Bx1)
       (*
	(+
	 (* (expt Aw2 2) Ax2 Ay1)
	 (* -1 Aw1 Aw2 Ax2 Ay2))
	(expt Bx1 2))
       (*
	(+
	 (*
          (+
           (* Aw2 Ax1 (expt Ax2 2))
           (* -1 Aw1 (expt Ax2 3)))
          Bw1)
	 (*
          (+
           (* -1 (expt Aw2 2) Ax1 Ax2)
           (* Aw1 Aw2 (expt Ax2 2)))
          Bx1))
	By1)
       (*
	(+
	 (*
          (+
           (* 2 Aw2 Ax1 (expt Ax2 2))
           (* -2 Aw1 (expt Ax2 3)))
          Ay1)
	 (*
          (+
           (* -2 Aw2 (expt Ax1 2) Ax2)
           (* 2 Aw1 Ax1 (expt Ax2 2)))
          Ay2))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -2 (expt Aw2 2) Ax1 Ax2)
           (* 2 Aw1 Aw2 (expt Ax2 2)))
          Ay1)
	 (*
          (+
           (* -1 (expt Aw2 2)
              (expt Ax1 2))
           (* 4 Aw1 Aw2 Ax1 Ax2)
           (* -3 (expt Aw1 2)
              (expt Ax2 2)))
          Ay2))
	Cx1))
      (expt Cy1 2))
     (*
      (+
       (* (expt Aw2 2)
	  (expt Ax1 2) Ax2)
       (* -2 Aw1 Aw2 Ax1 (expt Ax2 2))
       (* (expt Aw1 2)
	  (expt Ax2 3)))
      (expt Cy1 3)))
    Dw1)
   (*
    (+
     (*
      (+ (* Ax2 Ay1 (expt Ay2 2))
	 (* -1 Ax1 (expt Ay2 3)))
      Bw1 (expt Bx1 2))
     (*
      (+
       (* -1 Aw2 Ay1 (expt Ay2 2))
       (* Aw1 (expt Ay2 3)))
      (expt Bx1 3))
     (*
      (+
       (*
	(+
	 (* -2 (expt Ax2 2) Ay1 Ay2)
	 (* 2 Ax1 Ax2 (expt Ay2 2)))
	Bw1 Bx1)
       (*
	(+ (* 2 Aw2 Ax2 Ay1 Ay2)
	   (*
            (+ (* Aw2 Ax1)
               (* -3 Aw1 Ax2))
            (expt Ay2 2)))
	(expt Bx1 2)))
      By1)
     (*
      (+
       (*
	(+ (* (expt Ax2 3) Ay1)
	   (* -1 Ax1 (expt Ax2 2) Ay2))
	Bw1)
       (*
	(+
	 (* -1 Aw2 (expt Ax2 2) Ay1)
	 (*
          (+ (* -2 Aw2 Ax1 Ax2)
             (* 3 Aw1 (expt Ax2 2)))
          Ay2))
	Bx1))
      (expt By1 2))
     (*
      (+ (* Aw2 Ax1 (expt Ax2 2))
	 (* -1 Aw1 (expt Ax2 3)))
      (expt By1 3))
     (*
      (+
       (*
	(+
	 (* (expt Ax2 2)
            (expt Ay1 2) Ay2)
	 (* -2 Ax1 Ax2 Ay1 (expt Ay2 2))
	 (* (expt Ax1 2)
            (expt Ay2 3)))
	Bx1)
       (*
	(+
	 (* -1 (expt Ax2 3)
            (expt Ay1 2))
	 (* 2 Ax1 (expt Ax2 2) Ay1 Ay2)
	 (* -1 (expt Ax1 2) Ax2
            (expt Ay2 2)))
	By1))
      Cw1)
     (*
      (+
       (*
	(+
	 (* 2 (expt Ax2 2)
            (expt Ay1 2) Ay2)
	 (* -4 Ax1 Ax2 Ay1 (expt Ay2 2))
	 (* 2 (expt Ax1 2)
            (expt Ay2 3)))
	Bw1)
       (*
	(+
	 (* -3 Aw2 Ax2 (expt Ay1 2) Ay2)
	 (*
          (+ (* 3 Aw2 Ax1)
             (* 3 Aw1 Ax2))
          Ay1 (expt Ay2 2))
	 (* -3 Aw1 Ax1 (expt Ay2 3)))
	Bx1)
       (*
	(+
	 (* Aw2 (expt Ax2 2)
            (expt Ay1 2))
	 (*
          (+ (* Aw2 Ax1 Ax2)
             (* -3 Aw1 (expt Ax2 2)))
          Ay1 Ay2)
	 (*
          (+ (* -2 Aw2 (expt Ax1 2))
             (* 3 Aw1 Ax1 Ax2))
          (expt Ay2 2)))
	By1))
      Cx1)
     (*
      (+
       (*
	(+
	 (* -2 (expt Ax2 3)
            (expt Ay1 2))
	 (* 4 Ax1 (expt Ax2 2) Ay1 Ay2)
	 (* -2 (expt Ax1 2) Ax2
            (expt Ay2 2)))
	Bw1)
       (*
	(+
	 (* 2 Aw2 (expt Ax2 2)
            (expt Ay1 2))
	 (*
          (+ (* -1 Aw2 Ax1 Ax2)
             (* -3 Aw1 (expt Ax2 2)))
          Ay1 Ay2)
	 (*
          (+ (* -1 Aw2 (expt Ax1 2))
             (* 3 Aw1 Ax1 Ax2))
          (expt Ay2 2)))
	Bx1)
       (*
	(+
	 (*
          (+
           (* -3 Aw2 Ax1 (expt Ax2 2))
           (* 3 Aw1 (expt Ax2 3)))
          Ay1)
	 (*
          (+
           (* 3 Aw2 (expt Ax1 2) Ax2)
           (* -3 Aw1 Ax1 (expt Ax2 2)))
          Ay2))
	By1))
      Cy1))
    (expt Dw1 2))
   (*
    (+
     (* (expt Ax2 3)
	(expt Ay1 3))
     (* -3 Ax1 (expt Ax2 2)
	(expt Ay1 2) Ay2)
     (* 3 (expt Ax1 2) Ax2 Ay1
	(expt Ay2 2))
     (* -1 (expt Ax1 3)
	(expt Ay2 3)))
    (expt Dw1 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* Ax2 Ay1 (expt Ay2 2))
	 (* -1 Ax1 (expt Ay2 3)))
	Bw1 Bx1)
       (*
	(+
	 (* -1 Aw2 Ay1 (expt Ay2 2))
	 (* Aw1 (expt Ay2 3)))
	(expt Bx1 2))
       (*
	(+
	 (*
          (+
           (* -1 (expt Ax2 2) Ay1 Ay2)
           (* Ax1 Ax2 (expt Ay2 2)))
          Bw1)
	 (*
          (+ (* Aw2 Ax2 Ay1 Ay2)
             (*
              (+ (* Aw2 Ax1)
		 (* -2 Aw1 Ax2))
              (expt Ay2 2)))
          Bx1))
	By1)
       (*
	(+ (* -1 Aw2 Ax1 Ax2)
	   (* Aw1 (expt Ax2 2)))
	Ay2 (expt By1 2)))
      (expt Cw1 2))
     (*
      (+
       (* (expt Ax2 2)
	  (expt Ay1 2) Ay2)
       (* -2 Ax1 Ax2 Ay1 (expt Ay2 2))
       (* (expt Ax1 2)
	  (expt Ay2 3)))
      (expt Cw1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1 Ax2 Ay1 (expt Ay2 2))
           (* Ax1 (expt Ay2 3)))
          (expt Bw1 2))
	 (*
          (+
           (* Aw2 Ay1 (expt Ay2 2))
           (* -1 Aw1 (expt Ay2 3)))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+ (* Aw2 Ax2 Ay1 Ay2)
               (*
		(+ (* -2 Aw2 Ax1)
		   (* Aw1 Ax2))
		(expt Ay2 2)))
            Bw1)
           (*
            (+
             (* -1 (expt Aw2 2) Ay1 Ay2)
             (* Aw1 Aw2 (expt Ay2 2)))
            Bx1))
          By1)
	 (*
          (+ (* (expt Aw2 2) Ax1)
             (* -1 Aw1 Aw2 Ax2))
          Ay2 (expt By1 2)))
	Cw1)
       (*
	(+
	 (* -2 Aw2 Ax2 (expt Ay1 2) Ay2)
	 (*
          (+ (* 2 Aw2 Ax1)
             (* 2 Aw1 Ax2))
          Ay1 (expt Ay2 2))
	 (* -2 Aw1 Ax1 (expt Ay2 3)))
	(expt Cw1 2)))
      Cx1)
     (*
      (+
       (* (expt Aw2 2)
	  (expt Ay1 2) Ay2)
       (* -2 Aw1 Aw2 Ay1 (expt Ay2 2))
       (* (expt Aw1 2)
	  (expt Ay2 3)))
      Cw1 (expt Cx1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* (expt Ax2 2) Ay1 Ay2)
           (* -1 Ax1 Ax2 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+ (* -3 Aw2 Ax2 Ay1 Ay2)
             (*
              (+ (* 2 Aw2 Ax1)
		 (* Aw1 Ax2))
              (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+
           (* 2 (expt Aw2 2) Ay1 Ay2)
           (* -2 Aw1 Aw2 (expt Ay2 2)))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* Aw2 (expt Ax2 2) Ay1)
             (* -1 Aw1 (expt Ax2 2) Ay2))
            Bw1)
           (*
            (+
             (* -1 (expt Aw2 2) Ax2 Ay1)
             (*
              (+
               (* -2 (expt Aw2 2) Ax1)
               (* 3 Aw1 Aw2 Ax2))
              Ay2))
            Bx1))
          By1)
	 (*
          (+
           (* (expt Aw2 2) Ax1 Ax2)
           (* -1 Aw1 Aw2 (expt Ax2 2)))
          (expt By1 2)))
	Cw1)
       (*
	(+
	 (* -1 Aw2 (expt Ax2 2)
            (expt Ay1 2))
	 (*
          (+ (* 4 Aw2 Ax1 Ax2)
             (* -2 Aw1 (expt Ax2 2)))
          Ay1 Ay2)
	 (*
          (+ (* -3 Aw2 (expt Ax1 2))
             (* 2 Aw1 Ax1 Ax2))
          (expt Ay2 2)))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+ (* Aw2 Ax2 Ay1 Ay2)
             (* -1 Aw2 Ax1 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+
           (* -1 (expt Aw2 2) Ay1 Ay2)
           (* Aw1 Aw2 (expt Ay2 2)))
          Bw1 Bx1)
	 (*
          (+
           (*
            (+
             (* -1 (expt Aw2 2) Ax2 Ay1)
             (*
              (+
               (* 2 (expt Aw2 2) Ax1)
               (* -1 Aw1 Aw2 Ax2))
              Ay2))
            Bw1)
           (*
            (+ (* (expt Aw2 3) Ay1)
               (* -1 Aw1 (expt Aw2 2) Ay2))
            Bx1))
          By1)
	 (*
          (+ (* -1 (expt Aw2 3) Ax1)
             (* Aw1 (expt Aw2 2) Ax2))
          (expt By1 2))
	 (*
          (+
           (* 2 (expt Aw2 2) Ax2
              (expt Ay1 2))
           (* -4 (expt Aw2 2) Ax1 Ay1
              Ay2)
           (*
            (+ (* 4 Aw1 Aw2 Ax1)
               (* -2 (expt Aw1 2) Ax2))
            (expt Ay2 2)))
          Cw1))
	Cx1)
       (*
	(+
	 (* -1 (expt Aw2 3)
            (expt Ay1 2))
	 (* 2 Aw1 (expt Aw2 2) Ay1 Ay2)
	 (* -1 (expt Aw1 2) Aw2
            (expt Ay2 2)))
	(expt Cx1 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -1 Aw2 (expt Ax2 2) Ay1)
	 (* Aw2 Ax1 Ax2 Ay2))
	(expt Bw1 2))
       (*
	(+
	 (* 2 (expt Aw2 2) Ax2 Ay1)
	 (*
          (+ (* -1 (expt Aw2 2) Ax1)
             (* -1 Aw1 Aw2 Ax2))
          Ay2))
	Bw1 Bx1)
       (*
	(+ (* -1 (expt Aw2 3) Ay1)
	   (* Aw1 (expt Aw2 2) Ay2))
	(expt Bx1 2))
       (*
	(+
	 (*
          (+
           (* -1 (expt Aw2 2) Ax1 Ax2)
           (* Aw1 Aw2 (expt Ax2 2)))
          Bw1)
	 (*
          (+ (* (expt Aw2 3) Ax1)
             (* -1 Aw1 (expt Aw2 2) Ax2))
          Bx1))
	By1)
       (*
	(+
	 (*
          (+
           (* -2 (expt Aw2 2) Ax1 Ax2)
           (* 2 Aw1 Aw2 (expt Ax2 2)))
          Ay1)
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ax1 2))
           (* -4 Aw1 Aw2 Ax1 Ax2)
           (* (expt Aw1 2)
              (expt Ax2 2)))
          Ay2))
	Cw1)
       (*
	(+
	 (*
          (+ (* 2 (expt Aw2 3) Ax1)
             (* -2 Aw1 (expt Aw2 2) Ax2))
          Ay1)
	 (*
          (+
           (* -2 Aw1 (expt Aw2 2) Ax1)
           (* 2 (expt Aw1 2) Aw2 Ax2))
          Ay2))
	Cx1))
      (expt Cy1 2))
     (*
      (+
       (* -1 (expt Aw2 3)
	  (expt Ax1 2))
       (* 2 Aw1 (expt Aw2 2) Ax1 Ax2)
       (* -1 (expt Aw1 2) Aw2
	  (expt Ax2 2)))
      (expt Cy1 3))
     (*
      (+
       (*
	(+
	 (* -2 Ax2 Ay1 (expt Ay2 2))
	 (* 2 Ax1 (expt Ay2 3)))
	(expt Bw1 2) Bx1)
       (*
	(+
	 (* 2 Aw2 Ay1 (expt Ay2 2))
	 (* -2 Aw1 (expt Ay2 3)))
	Bw1 (expt Bx1 2))
       (*
	(+
	 (*
          (+
           (* 2 (expt Ax2 2) Ay1 Ay2)
           (* -2 Ax1 Ax2 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+ (* -4 Aw2 Ax1)
             (* 4 Aw1 Ax2))
          (expt Ay2 2) Bw1 Bx1)
	 (*
          (+
           (* -2 (expt Aw2 2) Ay1 Ay2)
           (* 2 Aw1 Aw2 (expt Ay2 2)))
          (expt Bx1 2)))
	By1)
       (*
	(+
	 (*
          (+
           (* -2 Aw2 (expt Ax2 2) Ay1)
           (*
            (+ (* 4 Aw2 Ax1 Ax2)
               (* -2 Aw1 (expt Ax2 2)))
            Ay2))
          Bw1)
	 (*
          (+
           (* 2 (expt Aw2 2) Ax2 Ay1)
           (*
            (+
             (* 2 (expt Aw2 2) Ax1)
             (* -4 Aw1 Aw2 Ax2))
            Ay2))
          Bx1))
	(expt By1 2))
       (*
	(+
	 (* -2 (expt Aw2 2) Ax1 Ax2)
	 (* 2 Aw1 Aw2 (expt Ax2 2)))
	(expt By1 3))
       (*
	(+
	 (*
          (+
           (* -3 (expt Ax2 2)
              (expt Ay1 2) Ay2)
           (* 6 Ax1 Ax2 Ay1 (expt Ay2 2))
           (* -3 (expt Ax1 2)
              (expt Ay2 3)))
          Bw1)
	 (*
          (+
           (* Aw2 Ax2 (expt Ay1 2) Ay2)
           (*
            (+ (* -1 Aw2 Ax1)
               (* -1 Aw1 Ax2))
            Ay1 (expt Ay2 2))
           (* Aw1 Ax1 (expt Ay2 3)))
          Bx1)
	 (*
          (+
           (* 2 Aw2 (expt Ax2 2)
              (expt Ay1 2))
           (*
            (+ (* -5 Aw2 Ax1 Ax2)
               (* Aw1 (expt Ax2 2)))
            Ay1 Ay2)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            (expt Ay2 2)))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -1 Aw2 Ax2 (expt Ay1 2)
              Ay2)
           (*
            (+ (* Aw2 Ax1)
               (* Aw1 Ax2))
            Ay1 (expt Ay2 2))
           (* -1 Aw1 Ax1 (expt Ay2 3)))
          Bw1)
	 (*
          (+
           (* 3 (expt Aw2 2)
              (expt Ay1 2) Ay2)
           (* -6 Aw1 Aw2 Ay1
              (expt Ay2 2))
           (* 3 (expt Aw1 2)
              (expt Ay2 3)))
          Bx1)
	 (*
          (+
           (* -2 (expt Aw2 2) Ax2
              (expt Ay1 2))
           (*
            (+
             (* -1 (expt Aw2 2) Ax1)
             (* 5 Aw1 Aw2 Ax2))
            Ay1 Ay2)
           (*
            (+ (* Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            (expt Ay2 2)))
          By1))
	Cx1)
       (*
	(+
	 (*
          (+
           (* 4 Aw2 (expt Ax2 2)
              (expt Ay1 2))
           (*
            (+ (* -7 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Ay1 Ay2)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -4 (expt Aw2 2) Ax2
              (expt Ay1 2))
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* 7 Aw1 Aw2 Ax2))
            Ay1 Ay2)
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+
             (* 6 (expt Aw2 2) Ax1 Ax2)
             (* -6 Aw1 Aw2 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            Ay2))
          By1))
	Cy1))
      Dw1)
     (*
      (+
       (* -3 Aw2 (expt Ax2 2)
	  (expt Ay1 3))
       (*
	(+ (* 6 Aw2 Ax1 Ax2)
	   (* 3 Aw1 (expt Ax2 2)))
	(expt Ay1 2) Ay2)
       (*
	(+ (* -3 Aw2 (expt Ax1 2))
	   (* -6 Aw1 Ax1 Ax2))
	Ay1 (expt Ay2 2))
       (* 3 Aw1 (expt Ax1 2)
	  (expt Ay2 3)))
      (expt Dw1 2)))
    Dx1)
   (*
    (+
     (*
      (+ (* Ax2 Ay1 (expt Ay2 2))
	 (* -1 Ax1 (expt Ay2 3)))
      (expt Bw1 3))
     (*
      (+
       (* -1 Aw2 Ay1 (expt Ay2 2))
       (* Aw1 (expt Ay2 3)))
      (expt Bw1 2) Bx1)
     (*
      (+
       (*
	(+ (* -2 Aw2 Ax2 Ay1 Ay2)
	   (*
            (+ (* 3 Aw2 Ax1)
               (* -1 Aw1 Ax2))
            (expt Ay2 2)))
	(expt Bw1 2))
       (*
	(+
	 (* 2 (expt Aw2 2) Ay1 Ay2)
	 (* -2 Aw1 Aw2 (expt Ay2 2)))
	Bw1 Bx1))
      By1)
     (*
      (+
       (*
	(+
	 (* (expt Aw2 2) Ax2 Ay1)
	 (*
          (+ (* -3 (expt Aw2 2) Ax1)
             (* 2 Aw1 Aw2 Ax2))
          Ay2))
	Bw1)
       (*
	(+ (* -1 (expt Aw2 3) Ay1)
	   (* Aw1 (expt Aw2 2) Ay2))
	Bx1))
      (expt By1 2))
     (*
      (+ (* (expt Aw2 3) Ax1)
	 (* -1 Aw1 (expt Aw2 2) Ax2))
      (expt By1 3))
     (*
      (+
       (*
	(+
	 (* 3 Aw2 Ax2 (expt Ay1 2) Ay2)
	 (*
          (+ (* -3 Aw2 Ax1)
             (* -3 Aw1 Ax2))
          Ay1 (expt Ay2 2))
	 (* 3 Aw1 Ax1 (expt Ay2 3)))
	Bw1)
       (*
	(+
	 (* -2 (expt Aw2 2)
            (expt Ay1 2) Ay2)
	 (* 4 Aw1 Aw2 Ay1 (expt Ay2 2))
	 (* -2 (expt Aw1 2)
            (expt Ay2 3)))
	Bx1)
       (*
	(+
	 (* -1 (expt Aw2 2) Ax2
            (expt Ay1 2))
	 (*
          (+ (* 3 (expt Aw2 2) Ax1)
             (* -1 Aw1 Aw2 Ax2))
          Ay1 Ay2)
	 (*
          (+ (* -3 Aw1 Aw2 Ax1)
             (* 2 (expt Aw1 2) Ax2))
          (expt Ay2 2)))
	By1))
      Cw1)
     (*
      (+
       (*
	(+
	 (* -1 (expt Aw2 2)
            (expt Ay1 2) Ay2)
	 (* 2 Aw1 Aw2 Ay1 (expt Ay2 2))
	 (* -1 (expt Aw1 2)
            (expt Ay2 3)))
	Bw1)
       (*
	(+
	 (* (expt Aw2 3)
            (expt Ay1 2))
	 (* -2 Aw1 (expt Aw2 2) Ay1 Ay2)
	 (* (expt Aw1 2) Aw2
            (expt Ay2 2)))
	By1))
      Cx1)
     (*
      (+
       (*
	(+
	 (* -2 (expt Aw2 2) Ax2
            (expt Ay1 2))
	 (*
          (+ (* 3 (expt Aw2 2) Ax1)
             (* Aw1 Aw2 Ax2))
          Ay1 Ay2)
	 (*
          (+ (* -3 Aw1 Aw2 Ax1)
             (* (expt Aw1 2) Ax2))
          (expt Ay2 2)))
	Bw1)
       (*
	(+
	 (* 2 (expt Aw2 3)
            (expt Ay1 2))
	 (* -4 Aw1 (expt Aw2 2) Ay1 Ay2)
	 (* 2 (expt Aw1 2) Aw2
            (expt Ay2 2)))
	Bx1)
       (*
	(+
	 (*
          (+ (* -3 (expt Aw2 3) Ax1)
             (* 3 Aw1 (expt Aw2 2) Ax2))
          Ay1)
	 (*
          (+
           (* 3 Aw1 (expt Aw2 2) Ax1)
           (* -3 (expt Aw1 2) Aw2 Ax2))
          Ay2))
	By1))
      Cy1)
     (*
      (+
       (* 3 (expt Aw2 2) Ax2
	  (expt Ay1 3))
       (*
	(+ (* -3 (expt Aw2 2) Ax1)
	   (* -6 Aw1 Aw2 Ax2))
	(expt Ay1 2) Ay2)
       (*
	(+ (* 6 Aw1 Aw2 Ax1)
	   (* 3 (expt Aw1 2) Ax2))
	Ay1 (expt Ay2 2))
       (* -3 (expt Aw1 2) Ax1
	  (expt Ay2 3)))
      Dw1))
    (expt Dx1 2))
   (*
    (+
     (* -1 (expt Aw2 3)
	(expt Ay1 3))
     (* 3 Aw1 (expt Aw2 2)
	(expt Ay1 2) Ay2)
     (* -3 (expt Aw1 2) Aw2 Ay1
	(expt Ay2 2))
     (* (expt Aw1 3)
	(expt Ay2 3)))
    (expt Dx1 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -1 (expt Ax2 2) Ay1 Ay2)
	 (* Ax1 Ax2 (expt Ay2 2)))
	Bw1 Bx1)
       (*
	(+ (* Aw2 Ax2 Ay1 Ay2)
	   (* -1 Aw1 Ax2 (expt Ay2 2)))
	(expt Bx1 2))
       (*
	(+
	 (*
          (+ (* (expt Ax2 3) Ay1)
             (* -1 Ax1 (expt Ax2 2) Ay2))
          Bw1)
	 (*
          (+
           (* -1 Aw2 (expt Ax2 2) Ay1)
           (*
            (+ (* -1 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Ay2))
          Bx1))
	By1)
       (*
	(+
	 (* Aw2 Ax1 (expt Ax2 2))
	 (* -1 Aw1 (expt Ax2 3)))
	(expt By1 2)))
      (expt Cw1 2))
     (*
      (+
       (* -1 (expt Ax2 3)
	  (expt Ay1 2))
       (* 2 Ax1 (expt Ax2 2) Ay1 Ay2)
       (* -1 (expt Ax1 2) Ax2
	  (expt Ay2 2)))
      (expt Cw1 3))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* (expt Ax2 2) Ay1 Ay2)
           (* -1 Ax1 Ax2 (expt Ay2 2)))
          (expt Bw1 2))
	 (*
          (+ (* -1 Aw2 Ax1)
             (* Aw1 Ax2))
          (expt Ay2 2) Bw1 Bx1)
	 (*
          (+
           (* -1 (expt Aw2 2) Ay1 Ay2)
           (* Aw1 Aw2 (expt Ay2 2)))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -2 Aw2 (expt Ax2 2) Ay1)
             (*
              (+ (* 3 Aw2 Ax1 Ax2)
		 (* -1 Aw1 (expt Ax2 2)))
              Ay2))
            Bw1)
           (*
            (+
             (* 2 (expt Aw2 2) Ax2 Ay1)
             (*
              (+
               (* (expt Aw2 2) Ax1)
               (* -3 Aw1 Aw2 Ax2))
              Ay2))
            Bx1))
          By1)
	 (*
          (+
           (* -2 (expt Aw2 2) Ax1 Ax2)
           (* 2 Aw1 Aw2 (expt Ax2 2)))
          (expt By1 2)))
	Cw1)
       (*
	(+
	 (* 3 Aw2 (expt Ax2 2)
            (expt Ay1 2))
	 (*
          (+ (* -4 Aw2 Ax1 Ax2)
             (* -2 Aw1 (expt Ax2 2)))
          Ay1 Ay2)
	 (*
          (+ (* Aw2 (expt Ax1 2))
             (* 2 Aw1 Ax1 Ax2))
          (expt Ay2 2)))
	(expt Cw1 2)))
      Cx1)
     (*
      (+
       (*
	(+ (* -1 Aw2 Ax2 Ay1 Ay2)
	   (* Aw2 Ax1 (expt Ay2 2)))
	(expt Bw1 2))
       (*
	(+
	 (* (expt Aw2 2) Ay1 Ay2)
	 (* -1 Aw1 Aw2 (expt Ay2 2)))
	Bw1 Bx1)
       (*
	(+
	 (*
          (+
           (* (expt Aw2 2) Ax2 Ay1)
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* Aw1 Aw2 Ax2))
            Ay2))
          Bw1)
	 (*
          (+ (* -1 (expt Aw2 3) Ay1)
             (* Aw1 (expt Aw2 2) Ay2))
          Bx1))
	By1)
       (*
	(+ (* (expt Aw2 3) Ax1)
	   (* -1 Aw1 (expt Aw2 2) Ax2))
	(expt By1 2))
       (*
	(+
	 (* -3 (expt Aw2 2) Ax2
            (expt Ay1 2))
	 (*
          (+ (* 2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
          Ay1 Ay2)
	 (*
          (+ (* -2 Aw1 Aw2 Ax1)
             (* -1 (expt Aw1 2) Ax2))
          (expt Ay2 2)))
	Cw1))
      (expt Cx1 2))
     (*
      (+
       (* (expt Aw2 3)
	  (expt Ay1 2))
       (* -2 Aw1 (expt Aw2 2) Ay1 Ay2)
       (* (expt Aw1 2) Aw2
	  (expt Ay2 2)))
      (expt Cx1 3))
     (*
      (+
       (*
	(+
	 (*
          (+ (* -1 (expt Ax2 3) Ay1)
             (* Ax1 (expt Ax2 2) Ay2))
          (expt Bw1 2))
	 (*
          (+
           (* 2 Aw2 (expt Ax2 2) Ay1)
           (*
            (+ (* -1 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Ay2))
          Bw1 Bx1)
	 (*
          (+
           (* -1 (expt Aw2 2) Ax2 Ay1)
           (* Aw1 Aw2 Ax2 Ay2))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* -1 Aw2 Ax1 (expt Ax2 2))
             (* Aw1 (expt Ax2 3)))
            Bw1)
           (*
            (+
             (* (expt Aw2 2) Ax1 Ax2)
             (* -1 Aw1 Aw2 (expt Ax2 2)))
            Bx1))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -2 Aw2 Ax1 (expt Ax2 2))
           (* 2 Aw1 (expt Ax2 3)))
          Ay1)
	 (*
          (+
           (* 2 Aw2 (expt Ax1 2) Ax2)
           (* -2 Aw1 Ax1 (expt Ax2 2)))
          Ay2))
	(expt Cw1 2))
       (*
	(+
	 (*
          (+
           (* Aw2 (expt Ax2 2) Ay1)
           (* -1 Aw2 Ax1 Ax2 Ay2))
          (expt Bw1 2))
	 (*
          (+
           (* -2 (expt Aw2 2) Ax2 Ay1)
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* Aw1 Aw2 Ax2))
            Ay2))
          Bw1 Bx1)
	 (*
          (+ (* (expt Aw2 3) Ay1)
             (* -1 Aw1 (expt Aw2 2) Ay2))
          (expt Bx1 2))
	 (*
          (+
           (*
            (+
             (* (expt Aw2 2) Ax1 Ax2)
             (* -1 Aw1 Aw2 (expt Ax2 2)))
            Bw1)
           (*
            (+
             (* -1 (expt Aw2 3) Ax1)
             (* Aw1 (expt Aw2 2) Ax2))
            Bx1))
          By1)
	 (*
          (+
           (*
            (+
             (* 4 (expt Aw2 2) Ax1 Ax2)
             (* -4 Aw1 Aw2 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -2 (expt Aw2 2)
		(expt Ax1 2))
             (* 2 (expt Aw1 2)
		(expt Ax2 2)))
            Ay2))
          Cw1))
	Cx1)
       (*
	(+
	 (*
          (+ (* -2 (expt Aw2 3) Ax1)
             (* 2 Aw1 (expt Aw2 2) Ax2))
          Ay1)
	 (*
          (+
           (* 2 Aw1 (expt Aw2 2) Ax1)
           (* -2 (expt Aw1 2) Aw2 Ax2))
          Ay2))
	(expt Cx1 2)))
      Cy1)
     (*
      (+
       (*
	(+
	 (* -1 (expt Aw2 2)
            (expt Ax1 2) Ax2)
	 (* 2 Aw1 Aw2 Ax1 (expt Ax2 2))
	 (* -1 (expt Aw1 2)
            (expt Ax2 3)))
	Cw1)
       (*
	(+
	 (* (expt Aw2 3)
            (expt Ax1 2))
	 (* -2 Aw1 (expt Aw2 2) Ax1 Ax2)
	 (* (expt Aw1 2) Aw2
            (expt Ax2 2)))
	Cx1))
      (expt Cy1 2))
     (*
      (+
       (*
	(+
	 (* 2 (expt Ax2 2) Ay1 Ay2)
	 (* -2 Ax1 Ax2 (expt Ay2 2)))
	(expt Bw1 2) Bx1)
       (*
	(+ (* -4 Aw2 Ax2 Ay1 Ay2)
	   (*
            (+ (* 2 Aw2 Ax1)
               (* 2 Aw1 Ax2))
            (expt Ay2 2)))
	Bw1 (expt Bx1 2))
       (*
	(+
	 (* 2 (expt Aw2 2) Ay1 Ay2)
	 (* -2 Aw1 Aw2 (expt Ay2 2)))
	(expt Bx1 3))
       (*
	(+
	 (*
          (+ (* -2 (expt Ax2 3) Ay1)
             (* 2 Ax1 (expt Ax2 2) Ay2))
          (expt Bw1 2))
	 (*
          (+
           (* 4 Aw2 (expt Ax2 2) Ay1)
           (* -4 Aw1 (expt Ax2 2) Ay2))
          Bw1 Bx1)
	 (*
          (+
           (* -2 (expt Aw2 2) Ax2 Ay1)
           (*
            (+
             (* -2 (expt Aw2 2) Ax1)
             (* 4 Aw1 Aw2 Ax2))
            Ay2))
          (expt Bx1 2)))
	By1)
       (*
	(+
	 (*
          (+
           (* -2 Aw2 Ax1 (expt Ax2 2))
           (* 2 Aw1 (expt Ax2 3)))
          Bw1)
	 (*
          (+
           (* 2 (expt Aw2 2) Ax1 Ax2)
           (* -2 Aw1 Aw2 (expt Ax2 2)))
          Bx1))
	(expt By1 2))
       (*
	(+
	 (*
          (+
           (* 3 (expt Ax2 3)
              (expt Ay1 2))
           (* -6 Ax1 (expt Ax2 2) Ay1
              Ay2)
           (* 3 (expt Ax1 2) Ax2
              (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -3 Aw2 (expt Ax2 2)
              (expt Ay1 2))
           (*
            (+ (* 5 Aw2 Ax1 Ax2)
               (* Aw1 (expt Ax2 2)))
            Ay1 Ay2)
           (*
            (+
             (* -2 Aw2 (expt Ax1 2))
             (* -1 Aw1 Ax1 Ax2))
            (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+
             (* Aw2 Ax1 (expt Ax2 2))
             (* -1 Aw1 (expt Ax2 3)))
            Ay1)
           (*
            (+
             (* -1 Aw2 (expt Ax1 2) Ax2)
             (* Aw1 Ax1 (expt Ax2 2)))
            Ay2))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+
           (* -3 Aw2 (expt Ax2 2)
              (expt Ay1 2))
           (*
            (+ (* 7 Aw2 Ax1 Ax2)
               (* -1 Aw1 (expt Ax2 2)))
            Ay1 Ay2)
           (*
            (+
             (* -4 Aw2 (expt Ax1 2))
             (* Aw1 Ax1 Ax2))
            (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* 3 (expt Aw2 2) Ax2
              (expt Ay1 2))
           (* -6 (expt Aw2 2) Ax1 Ay1
              Ay2)
           (*
            (+ (* 6 Aw1 Aw2 Ax1)
               (* -3 (expt Aw1 2) Ax2))
            (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+
             (* -1 (expt Aw2 2) Ax1 Ax2)
             (* Aw1 Aw2 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 4 (expt Aw2 2)
		(expt Ax1 2))
             (* -7 Aw1 Aw2 Ax1 Ax2)
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            Ay2))
          By1))
	Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1 Aw2 Ax1 (expt Ax2 2))
             (* Aw1 (expt Ax2 3)))
            Ay1)
           (*
            (+
             (* Aw2 (expt Ax1 2) Ax2)
             (* -1 Aw1 Ax1 (expt Ax2 2)))
            Ay2))
          Bw1)
	 (*
          (+
           (*
            (+
             (* (expt Aw2 2) Ax1 Ax2)
             (* -1 Aw1 Aw2 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* 2 (expt Aw2 2)
		(expt Ax1 2))
             (* -5 Aw1 Aw2 Ax1 Ax2)
             (* 3 (expt Aw1 2)
		(expt Ax2 2)))
            Ay2))
          Bx1)
	 (*
          (+
           (* -3 (expt Aw2 2)
              (expt Ax1 2) Ax2)
           (* 6 Aw1 Aw2 Ax1 (expt Ax2 2))
           (* -3 (expt Aw1 2)
              (expt Ax2 3)))
          By1))
	Cy1))
      Dw1)
     (*
      (+
       (*
	(+
	 (* 3 Aw2 Ax1 (expt Ax2 2))
	 (* -3 Aw1 (expt Ax2 3)))
	(expt Ay1 2))
       (*
	(+
	 (* -6 Aw2 (expt Ax1 2) Ax2)
	 (* 6 Aw1 Ax1 (expt Ax2 2)))
	Ay1 Ay2)
       (*
	(+ (* 3 Aw2 (expt Ax1 3))
	   (* -3 Aw1 (expt Ax1 2) Ax2))
	(expt Ay2 2)))
      (expt Dw1 2))
     (*
      (+
       (*
	(+
	 (* -2 (expt Ax2 2) Ay1 Ay2)
	 (* 2 Ax1 Ax2 (expt Ay2 2)))
	(expt Bw1 3))
       (*
	(+ (* 4 Aw2 Ax2 Ay1 Ay2)
	   (*
            (+ (* -2 Aw2 Ax1)
               (* -2 Aw1 Ax2))
            (expt Ay2 2)))
	(expt Bw1 2) Bx1)
       (*
	(+
	 (* -2 (expt Aw2 2) Ay1 Ay2)
	 (* 2 Aw1 Aw2 (expt Ay2 2)))
	Bw1 (expt Bx1 2))
       (*
	(+
	 (*
          (+
           (* 2 Aw2 (expt Ax2 2) Ay1)
           (*
            (+ (* -4 Aw2 Ax1 Ax2)
               (* 2 Aw1 (expt Ax2 2)))
            Ay2))
          (expt Bw1 2))
	 (*
          (+
           (* -4 (expt Aw2 2) Ax2 Ay1)
           (* 4 (expt Aw2 2) Ax1 Ay2))
          Bw1 Bx1)
	 (*
          (+ (* 2 (expt Aw2 3) Ay1)
             (* -2 Aw1 (expt Aw2 2) Ay2))
          (expt Bx1 2)))
	By1)
       (*
	(+
	 (*
          (+
           (* 2 (expt Aw2 2) Ax1 Ax2)
           (* -2 Aw1 Aw2 (expt Ax2 2)))
          Bw1)
	 (*
          (+ (* -2 (expt Aw2 3) Ax1)
             (* 2 Aw1 (expt Aw2 2) Ax2))
          Bx1))
	(expt By1 2))
       (*
	(+
	 (*
          (+
           (* -3 Aw2 (expt Ax2 2)
              (expt Ay1 2))
           (* 6 Aw1 (expt Ax2 2) Ay1 Ay2)
           (*
            (+
             (* 3 Aw2 (expt Ax1 2))
             (* -6 Aw1 Ax1 Ax2))
            (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* 3 (expt Aw2 2) Ax2
              (expt Ay1 2))
           (*
            (+ (* (expt Aw2 2) Ax1)
               (* -7 Aw1 Aw2 Ax2))
            Ay1 Ay2)
           (*
            (+ (* -1 Aw1 Aw2 Ax1)
               (* 4 (expt Aw1 2) Ax2))
            (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+
             (* -1 (expt Aw2 2) Ax1 Ax2)
             (* Aw1 Aw2 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 7 Aw1 Aw2 Ax1 Ax2)
             (* -4 (expt Aw1 2)
		(expt Ax2 2)))
            Ay2))
          By1))
	Cw1)
       (*
	(+
	 (*
          (+
           (* 3 (expt Aw2 2) Ax2
              (expt Ay1 2))
           (*
            (+
             (* -1 (expt Aw2 2) Ax1)
             (* -5 Aw1 Aw2 Ax2))
            Ay1 Ay2)
           (*
            (+ (* Aw1 Aw2 Ax1)
               (* 2 (expt Aw1 2) Ax2))
            (expt Ay2 2)))
          Bw1)
	 (*
          (+
           (* -3 (expt Aw2 3)
              (expt Ay1 2))
           (* 6 Aw1 (expt Aw2 2) Ay1 Ay2)
           (* -3 (expt Aw1 2) Aw2
              (expt Ay2 2)))
          Bx1)
	 (*
          (+
           (*
            (+ (* (expt Aw2 3) Ax1)
               (* -1 Aw1 (expt Aw2 2) Ax2))
            Ay1)
           (*
            (+
             (* -1 Aw1 (expt Aw2 2) Ax1)
             (* (expt Aw1 2) Aw2 Ax2))
            Ay2))
          By1))
	Cx1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* (expt Aw2 2) Ax1 Ax2)
             (* -1 Aw1 Aw2 (expt Ax2 2)))
            Ay1)
           (*
            (+
             (* -3 (expt Aw2 2)
		(expt Ax1 2))
             (* 5 Aw1 Aw2 Ax1 Ax2)
             (* -2 (expt Aw1 2)
		(expt Ax2 2)))
            Ay2))
          Bw1)
	 (*
          (+
           (*
            (+
             (* -1 (expt Aw2 3) Ax1)
             (* Aw1 (expt Aw2 2) Ax2))
            Ay1)
           (*
            (+
             (* Aw1 (expt Aw2 2) Ax1)
             (* -1 (expt Aw1 2) Aw2 Ax2))
            Ay2))
          Bx1)
	 (*
          (+
           (* 3 (expt Aw2 3)
              (expt Ax1 2))
           (* -6 Aw1 (expt Aw2 2) Ax1
              Ax2)
           (* 3 (expt Aw1 2) Aw2
              (expt Ax2 2)))
          By1))
	Cy1)
       (*
	(+
	 (*
          (+
           (* -6 (expt Aw2 2) Ax1 Ax2)
           (* 6 Aw1 Aw2 (expt Ax2 2)))
          (expt Ay1 2))
	 (*
          (+
           (* 6 (expt Aw2 2)
              (expt Ax1 2))
           (* -6 (expt Aw1 2)
              (expt Ax2 2)))
          Ay1 Ay2)
	 (*
          (+
           (* -6 Aw1 Aw2 (expt Ax1 2))
           (* 6 (expt Aw1 2) Ax1 Ax2))
          (expt Ay2 2)))
	Dw1))
      Dx1)
     (*
      (+
       (*
	(+ (* 3 (expt Aw2 3) Ax1)
	   (* -3 Aw1 (expt Aw2 2) Ax2))
	(expt Ay1 2))
       (*
	(+
	 (* -6 Aw1 (expt Aw2 2) Ax1)
	 (* 6 (expt Aw1 2) Aw2 Ax2))
	Ay1 Ay2)
       (*
	(+
	 (* 3 (expt Aw1 2) Aw2 Ax1)
	 (* -3 (expt Aw1 3) Ax2))
	(expt Ay2 2)))
      (expt Dx1 2)))
    Dy1)
   (*
    (+
     (*
      (+ (* (expt Ax2 3) Ay1)
	 (* -1 Ax1 (expt Ax2 2) Ay2))
      (expt Bw1 3))
     (*
      (+
       (* -3 Aw2 (expt Ax2 2) Ay1)
       (*
	(+ (* 2 Aw2 Ax1 Ax2)
	   (* Aw1 (expt Ax2 2)))
	Ay2))
      (expt Bw1 2) Bx1)
     (*
      (+
       (* 3 (expt Aw2 2) Ax2 Ay1)
       (*
	(+ (* -1 (expt Aw2 2) Ax1)
	   (* -2 Aw1 Aw2 Ax2))
	Ay2))
      Bw1 (expt Bx1 2))
     (*
      (+ (* -1 (expt Aw2 3) Ay1)
	 (* Aw1 (expt Aw2 2) Ay2))
      (expt Bx1 3))
     (*
      (+
       (*
	(+
	 (* Aw2 Ax1 (expt Ax2 2))
	 (* -1 Aw1 (expt Ax2 3)))
	(expt Bw1 2))
       (*
	(+
	 (* -2 (expt Aw2 2) Ax1 Ax2)
	 (* 2 Aw1 Aw2 (expt Ax2 2)))
	Bw1 Bx1)
       (*
	(+ (* (expt Aw2 3) Ax1)
	   (* -1 Aw1 (expt Aw2 2) Ax2))
	(expt Bx1 2)))
      By1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 3 Aw2 Ax1 (expt Ax2 2))
           (* -3 Aw1 (expt Ax2 3)))
          Ay1)
	 (*
          (+
           (* -3 Aw2 (expt Ax1 2) Ax2)
           (* 3 Aw1 Ax1 (expt Ax2 2)))
          Ay2))
	Bw1)
       (*
	(+
	 (*
          (+
           (* -3 (expt Aw2 2) Ax1 Ax2)
           (* 3 Aw1 Aw2 (expt Ax2 2)))
          Ay1)
	 (*
          (+
           (* (expt Aw2 2)
              (expt Ax1 2))
           (* Aw1 Aw2 Ax1 Ax2)
           (* -2 (expt Aw1 2)
              (expt Ax2 2)))
          Ay2))
	Bx1)
       (*
	(+
	 (* 2 (expt Aw2 2)
            (expt Ax1 2) Ax2)
	 (* -4 Aw1 Aw2 Ax1 (expt Ax2 2))
	 (* 2 (expt Aw1 2)
            (expt Ax2 3)))
	By1))
      Cw1)
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -3 (expt Aw2 2) Ax1 Ax2)
           (* 3 Aw1 Aw2 (expt Ax2 2)))
          Ay1)
	 (*
          (+
           (* 2 (expt Aw2 2)
              (expt Ax1 2))
           (* -1 Aw1 Aw2 Ax1 Ax2)
           (* -1 (expt Aw1 2)
              (expt Ax2 2)))
          Ay2))
	Bw1)
       (*
	(+
	 (*
          (+ (* 3 (expt Aw2 3) Ax1)
             (* -3 Aw1 (expt Aw2 2) Ax2))
          Ay1)
	 (*
          (+
           (* -3 Aw1 (expt Aw2 2) Ax1)
           (* 3 (expt Aw1 2) Aw2 Ax2))
          Ay2))
	Bx1)
       (*
	(+
	 (* -2 (expt Aw2 3)
            (expt Ax1 2))
	 (* 4 Aw1 (expt Aw2 2) Ax1 Ax2)
	 (* -2 (expt Aw1 2) Aw2
            (expt Ax2 2)))
	By1))
      Cx1)
     (*
      (+
       (*
	(+
	 (* (expt Aw2 2)
            (expt Ax1 2) Ax2)
	 (* -2 Aw1 Aw2 Ax1 (expt Ax2 2))
	 (* (expt Aw1 2)
            (expt Ax2 3)))
	Bw1)
       (*
	(+
	 (* -1 (expt Aw2 3)
            (expt Ax1 2))
	 (* 2 Aw1 (expt Aw2 2) Ax1 Ax2)
	 (* -1 (expt Aw1 2) Aw2
            (expt Ax2 2)))
	Bx1))
      Cy1)
     (*
      (+
       (*
	(+
	 (* 3 (expt Aw2 2)
            (expt Ax1 2) Ax2)
	 (* -6 Aw1 Aw2 Ax1 (expt Ax2 2))
	 (* 3 (expt Aw1 2)
            (expt Ax2 3)))
	Ay1)
       (*
	(+
	 (* -3 (expt Aw2 2)
            (expt Ax1 3))
	 (* 6 Aw1 Aw2 (expt Ax1 2) Ax2)
	 (* -3 (expt Aw1 2) Ax1
            (expt Ax2 2)))
	Ay2))
      Dw1)
     (*
      (+
       (*
	(+
	 (* -3 (expt Aw2 3)
            (expt Ax1 2))
	 (* 6 Aw1 (expt Aw2 2) Ax1 Ax2)
	 (* -3 (expt Aw1 2) Aw2
            (expt Ax2 2)))
	Ay1)
       (*
	(+
	 (* 3 Aw1 (expt Aw2 2)
            (expt Ax1 2))
	 (* -6 (expt Aw1 2) Aw2 Ax1 Ax2)
	 (* 3 (expt Aw1 3)
            (expt Ax2 2)))
	Ay2))
      Dx1))
    (expt Dy1 2))
   (*
    (+
     (* (expt Aw2 3)
	(expt Ax1 3))
     (* -3 Aw1 (expt Aw2 2)
	(expt Ax1 2) Ax2)
     (* 3 (expt Aw1 2) Aw2 Ax1
	(expt Ax2 2))
     (* -1 (expt Aw1 3)
	(expt Ax2 3)))
    (expt Dy1 3))))


