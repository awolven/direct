(in-package :direct)


(defun rational-cubic-bezier/cubic-bezier-c1
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (+
   (*
    (+
     (*
      (+
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1))
      (expt XA3 3))
     (*
      (+
       (* 27 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -18 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1))
      (expt XA3 2) XB0)
     (*
      (+
       (* -27 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1))
      XA3 (expt XB0 2))
     (* 9 (expt WA0 3) (expt WA3 3)
	(expt WB0 3) (expt XB0 3))
     (*
      (+
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA3 2))
       (* 18 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1 XA3
	  XB0)
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1))
    (expt YA0 3))
   (*
    (+
     (*
      (+
       (* 81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3))
       (* -81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1))
      XA2 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 108 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	XA2 XA3)
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	XA2)
       (*
	(+
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	XA3))
      (expt XB0 2))
     (* -81 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (* 54 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1 XA2
	  XA3)
       (* 27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA3 2))
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2)
	 (* -108 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA3))
	XB0)
       (* 81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1))
    (expt YA0 2) YA1)
   (*
    (+
     (*
      (+
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3))
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1))
      XA1 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA1 XA3)
       (*
	(+
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA1)
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA3))
      (expt XB0 2))
     (* 243 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (* -162 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1 XA1
	  XA3)
       (* -81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA3 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA3))
	XB0)
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1))
    YA0 (expt YA1 2))
   (*
    (+
     (*
      (+
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3))
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1))
      XA0 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA0 XA3)
       (*
	(+
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA0)
       (*
	(+
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA3))
      (expt XB0 2))
     (* -243 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (* 162 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1 XA0
	  XA3)
       (* 81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA3 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* -324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA3))
	XB0)
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1))
    (expt YA1 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	(expt XA2 2) XA3)
       (*
	(+
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	XA1 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            XA2))
          XA3)
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA2)
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 81 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2))
	 (*
          (+
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          XB0)
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1))
	XA1 XA2 XA3)
       (*
	(+
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA1 XA2)
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA2))
          XA3)
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA2)
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA1 XA2)
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2))
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          XB0)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1))
	XA0 XA2 XA3)
       (*
	(+
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA2)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA3))
	(expt XB0 2))
       (* 729 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA2)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (*
          (+
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA3))
          XB0)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1))
      (expt YA1 2)))
    YA2)
   (*
    (+
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2))
	 (*
          (+
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2))
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            XA0)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1)
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0)
	 (*
          (+
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA1)
	 (*
          (+
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA2)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 486 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -162 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* -486 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB0 3) (expt XB0 3))
       (*
	(+
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0 XA2)
	 (*
          (+
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (*
          (+
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA0)
           (* 972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA3))
          XB0)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 486 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 (expt XB0 2)))
	XB1))
      YA0)
     (*
      (+
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1))
	XA0 XA1 XA3)
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA3))
	(expt XB0 2))
       (* -729 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA1)
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA3)
	 (*
          (+
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA3))
          XB0)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1))
      YA1))
    (expt YA2 2))
   (*
    (+
     (*
      (+
       (* -243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3))
       (* 243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1))
      (expt XA0 2) XA3)
     (*
      (+
       (*
	(+
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	(expt XA0 2))
       (*
	(+
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	XA0 XA3))
      XB0)
     (*
      (+
       (*
	(+
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	XA0)
       (*
	(+
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	XA3))
      (expt XB0 2))
     (* 243 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (* -81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XA0 2))
       (* -162 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  XA0 XA3)
       (*
	(+
	 (* 324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0)
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA3))
	XB0)
       (* -243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1))
    (expt YA2 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	(expt XA2 3))
       (*
	(+
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	XA1 XA2 XA3)
       (*
	(+
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -27 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA1 XA2)
	 (*
          (+
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* 36 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA1)
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA2))
          XA3)
	 (*
          (+
           (* -27 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 27 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -9 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (*
            (+
             (* 729 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -243 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA2)
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* -27 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA1
            XA2)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2))
          XA3)
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA3 2))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA0)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -36 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA3))
          XB0)
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1))
	XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1))
          XA2)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 648 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1))
            XA1)
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA2)
	 (*
          (+
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* -486 WA0 (expt WA1 3))
             (* -81 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2))
          XA3)
	 (*
          (+
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -648 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+ (* -324 WA0 (expt WA1 3))
               (* -54 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA3))
          XB0)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1))
	XA0 (expt XA2 2))
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA0 XA1 XA3)
       (*
	(+
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA2)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 486 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* 486 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1))
            XA1))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -486 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 162 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA2)
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* 486 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* -972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA3))
          XB0)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2) XA2)
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0 (expt XA2 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1 XA3)
	 (*
          (+
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 3))
               (* -648 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1))
              XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA1))
            XA2)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB1))
              XA0)
             (*
              (+
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB1))
              XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 162 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA1)
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 324 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1))
            XA2)
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 486 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XB0 3))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1 XA0)
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA0)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA1))
            XA3)
           (*
            (+
             (*
              (+
               (* 324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 648 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1 XA2)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA3))
            XB0)
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XB0 2)))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA1 XA2)
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA0 2) XA3)
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA0)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA1))
            XA2)
           (*
            (+
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA2)
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA3))
          (expt XB0 2))
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XB0 3))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA0)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA3)
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1)
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA2)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA3))
            XB0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XB0 2)))
          XB1))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA0 2))
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0 XA2))
	XB0)
       (*
	(+
	 (*
          (+
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0)
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA2))
	(expt XB0 2))
       (* -243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA0 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0 XA2)
	 (*
          (+
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA0)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2))
          XB0)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1))
      (expt YA2 2)))
    YA3)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA1 3))
       (*
	(+
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	XA0 XA1 XA2)
       (*
	(+
	 (* -27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1))
	(expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (* 27 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA1))
          XA2)
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -36 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (*
            (+ (* -729 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 243 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA2)
	 (*
          (+
           (* -27 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 9 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+ (* 243 WA0 (expt WA1 3))
             (* -243 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* 27 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA0 2))
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1))
          XA2)
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0
            XA3)
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 36 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2)
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA3))
          XB0)
	 (*
          (+
           (*
            (+ (* -243 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1))
      YA0)
     (*
      (+
       (*
	(+
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA0 (expt XA1 2))
       (*
	(+
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* -243 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -216 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA2))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 243 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* -81 WA0 (expt WA1 3))
               (* 108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA2))
	(expt XB0 2))
       (*
	(+ (* -243 WA0 (expt WA1 3))
	   (* 162 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2))
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (* -108 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA2)
	 (*
          (+
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA0)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2))
          XB0)
	 (*
          (+ (* 243 WA0 (expt WA1 3))
             (* -162 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1
          (expt XB0 2)))
	XB1))
      YA1)
     (*
      (+
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA0 2) XA1)
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1))
	XB0)
       (*
	(+
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA1))
	(expt XB0 2))
       (* 81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2))
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (*
          (+
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1))
          XB0)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XB0 2)))
	XB1))
      YA2))
    (expt YA3 2))
   (*
    (+
     (*
      (+
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1))
      (expt XA0 3))
     (*
      (+
       (* -27 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 18 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1))
      (expt XA0 2) XB0)
     (*
      (+
       (* 27 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1))
      XA0 (expt XB0 2))
     (* -9 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA0 2))
       (* -18 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1 XA0
	  XB0)
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1))
    (expt YA3 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA1 XA2)
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* -27 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1))
	(expt XA3 3))
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA1 XA2)
	 (*
          (+
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 54 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* -18 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA1)
           (*
            (+
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 162 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA1
            XA2)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 18 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA3 2))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA0)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -486 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1))
	XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1))
          XA2)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1)
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -135 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (* 135 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+ (* 162 WA0 (expt WA1 3))
             (* 27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1
          (expt XA3 2))
	 (*
          (+
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -324 WA0 (expt WA1 3))
               (* -54 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 486 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* 243 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA2)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -324 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1))
            XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA2))
          XA3)
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0)
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA2)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2))
	 (*
          (+
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2) XA2)
	 (*
          (+
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA1)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 3))
               (* 648 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1))
              XA0)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA1))
            XA2)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            (expt XA1 2))
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1 XA2)
           (*
            (+
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* -324 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 189 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1))
              XA0)
             (*
              (+
               (*
		(+
		 (* -2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* 729 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -189 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1))
              XA1)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA2))
            XA3)
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA2)
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1 XA2)
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA2))
            XA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* 972 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -648 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1 XA2)
             (*
              (+
               (*
		(+
		 (* -486 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 324 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA1 XA2)
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA0)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0 XA1)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA1)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA2))
            XA3)
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA2)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA2)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA2))
            XA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1)
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA2)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA0 2))
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2))
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA0 2))
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA1)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2))
	 (*
          (+
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 324 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 486 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) XA0)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1)
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA2)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA0 2))
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA1)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2))
	 (* -324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA3))
          XB0))
	XB1))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* 54 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* -36 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA1)
           (*
            (+
             (* -486 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB1))
              XA0)
             (*
              (+
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB1))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 36 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* 18 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 324 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -324 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 3))
               (*
		(+
		 (* -324 WA0 (expt WA1 3))
		 (* 189 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2)
		WB1))
              XA1)
             (*
              (+
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 135 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB1))
              XA2))
            XA3)
           (*
            (+
             (* 54 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* -18 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2)
           (*
            (+
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA0 2))
           (* -135 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA1 2))
           (*
            (+
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA2)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA2))
            XA3)
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 324 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -36 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -324 WA0 (expt WA1 3))
		 (* -54 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (*
		(+
		 (* -486 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 324 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2)
             (*
              (+
               (*
		(+
		 (* 324 WA0 (expt WA1 3))
		 (* -324 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 36 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -648 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA1)
           (*
            (+
             (* -486 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA1 2))
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0 XA1)
           (*
            (+
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* -729 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 189 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1))
              XA0)
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA1))
            XA2)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 3))
               (*
		(+
		 (* 324 WA0 (expt WA1 3))
		 (* -189 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2)
		WB1))
              XA0)
             (*
              (+
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -27 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB1))
              XA2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 324 WA0 (expt WA1 3))
               (* -189 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -324 WA0 (expt WA1 3))
		 (* -54 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 648 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2)
             (*
              (+
               (* -324 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA3))
            XB0))
          XB1))
	YA1)
       (*
	(+
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            (expt XA0 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA0 XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0 XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -162 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 135 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA0 XA1)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA0)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1))
              XA1))
            XA2)
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -135 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB1))
              XA0)
             (*
              (+
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 27 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB1))
              XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA0)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA0)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -486 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 324 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1 XA2)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA3))
            XB0))
          XB1))
	YA2))
      YA3)
     (*
      (+
       (*
	(+
	 (* -27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1))
	(expt XA0 3))
       (*
	(+
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA0 2) XA1)
       (*
	(+
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA0 (expt XA1 2))
       (*
	(+
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1))
	XA2)
       (*
	(+
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1))
	(expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA1))
          XA2)
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -243 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA0)
	 (*
          (+ (* 243 WA0 (expt WA1 3))
             (* -162 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA1)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2)
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -18 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+ (* -162 WA0 (expt WA1 3))
             (* -27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1 XA0
          XA1)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1))
          XA2)
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0
            XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 162 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* 108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA1)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2)
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA3))
          XB0))
	XB1))
      (expt YA3 2)))
    YB0)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          XA0)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -27 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 9 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 486 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -162 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -162 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA1))
          XA2)
	 (*
          (+
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (*
            (+ (* -243 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 81 WA0 (expt WA1 3))
               (* -108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* -27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1))
	(expt XA3 3))
       (*
	(+
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA0 2))
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -486 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* 243 WA0 (expt WA1 3))
               (* -243 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA0 2))
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 162 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -162 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -81 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA3 2)))
	XB1))
      YA0)
     (*
      (+
       (*
	(+
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA0 (expt XA1 2))
       (*
	(+
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA1))
	XA2)
       (*
	(+
	 (*
          (+
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 729 WA0 (expt WA1 3))
               (* -243 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* -243 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          XA1)
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+ (* -243 WA0 (expt WA1 3))
             (* 162 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3)
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2))
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+ (* 81 WA0 (expt WA1 3))
             (* -54 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1
          (expt XA3 2)))
	XB1))
      YA1)
     (*
      (+
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA0 2) XA1)
       (*
	(+
	 (*
          (+
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA0 2))
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA0 XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -729 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 243 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -324 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1))
            XA1))
          XA2)
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 81 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2))
          XA3)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -162 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2)))
	XB1))
      YA2)
     (*
      (+
       (*
	(+
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1))
	(expt XA0 3))
       (*
	(+
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA0 2) XA1)
       (*
	(+
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	XA0 (expt XA1 2))
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 243 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -81 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -486 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3))
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 162 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1))
          XA0)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1))
          (expt XA0 2))
	 (*
          (+
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1))
          XA0 XA1)
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA0)
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 3))
               (* -486 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3) XA1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA2))
          XA3)
	 (* -27 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -162 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -162 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* -108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA1)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2))
          XA3)
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA3 2)))
	XB1))
      YA3))
    (expt YB0 2))
   (*
    (+
     (* -9 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XA0 3))
     (* 81 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3)
	(expt XA0 2) XA1)
     (* -243 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3) XA0
	(expt XA1 2))
     (* 243 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XA1 3))
     (*
      (+
       (*
	(+
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XA0 2))
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) XA0 XA1)
       (* -729 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XA1 2)))
      XA2)
     (*
      (+
       (*
	(+
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* 486 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB0 3) XA0)
       (* 729 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA1))
      (expt XA2 2))
     (* -243 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XA2 3))
     (*
      (+
       (*
	(+
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* 27 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XA0 2))
       (*
	(+
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* 486 WA0 (expt WA1 3))
             (* 81 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB0 3) XA0 XA1)
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB0 3) (expt XA1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -486 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA1))
	XA2)
       (* 243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 2)))
      XA3)
     (*
      (+
       (*
	(+
	 (*
          (+ (* -243 WA0 (expt WA1 3))
             (* 243 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* -27 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) XA0)
       (*
	(+ (* 243 WA0 (expt WA1 3))
	   (* -162 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB0 3) XA1)
       (* -81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA2))
      (expt XA3 2))
     (* 9 (expt WA0 3) (expt WA3 3)
	(expt WB0 3) (expt XA3 3)))
    (expt YB0 3))
   (*
    (+
     (*
      (+
       (* 81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XA2 3))
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA1
            XA2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0)
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2))
	(expt XA3 2))
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA3 3))
       (*
	(+
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA1
            XA2)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 18 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (*
          (+
           (* 81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA2)
	 (*
          (+
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2)))
      (expt YA0 2))
     (*
      (+
       (* -243 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 2) WB1
	  XA1 (expt XA2 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2))
	XA3)
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2))
	(expt XA3 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (* 135 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+ (* 162 WA0 (expt WA1 3))
             (* 27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA2)
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2)))
      YA0 YA1)
     (*
      (+
       (* 243 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 2) WB1
	  XA0 (expt XA2 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA2))
	XA3)
       (*
	(+
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1))
	(expt XA3 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA2)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2)))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2) XA2)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0 (expt XA2 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1 XA0)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1))
          (expt XA3 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1 XA2)
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA2))
            XA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA2)
           (*
            (+
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 162 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2)))
	YA0)
       (*
	(+
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA1 XA2)
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA0)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2))
          XA3)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0
            (expt XA3 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA2)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA2))
            XA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2)))
	YA1))
      YA2)
     (*
      (+
       (* 81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XA0 2) XA2)
       (*
	(+
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA0 2))
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0 XA2))
	XA3)
       (*
	(+
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA0 2))
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA0 XA1)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2))
	 (* -324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -162 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 XA0)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA1)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA3))
	(expt XB0 2)))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 3))
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          (expt XA2 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 3))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA0 2))
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA0)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA1))
            XA2))
          XA3)
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0
            (expt XA3 2))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA0 2))
           (* -135 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA1 2))
           (*
            (+
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA2)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA2))
            XA3)
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 162 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (*
              (+
               (* 162 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2)))
	YA0)
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            (expt XA1 2))
	 (*
          (+
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1))
          XA2)
	 (*
          (+
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          (expt XA2 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA2))
          XA3)
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 324 WA0 (expt WA1 3))
               (* -189 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* 108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA3))
          (expt XB0 2)))
	YA1)
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2) XA1)
	 (*
          (+
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2)))
          XA2)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0 (expt XA2 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA0)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA0)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 162 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA3))
          (expt XB0 2)))
	YA2))
      YA3)
     (*
      (+
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA0 3))
       (* -27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA0 2) XA1)
       (* 81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1 XA0
	  (expt XA1 2))
       (* -81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA1 3))
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2))
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1))
	XA2)
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -18 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+ (* -162 WA0 (expt WA1 3))
             (* -27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1 XA0
          XA1)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1))
          XA2)
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0
            XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 81 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA0)
	 (*
          (+ (* -81 WA0 (expt WA1 3))
             (* 54 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2)
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA3))
	(expt XB0 2)))
      (expt YA3 2))
     (*
      (+
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 3))
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          (expt XA2 2))
	 (* -324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 3))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA0 2))
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1))
            XA2)
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -36 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* -216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA1)
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2))
          (expt XA3 2))
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA3 3))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA0 2))
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1))
            XA2)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 36 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 324 WA0 (expt WA1 3))
		 (* 54 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (*
		(+
		 (* 486 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -324 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -162 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 (expt XA3 2)))
          XB0))
	YA0)
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            (expt XA1 2))
	 (*
          (+
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1))
          XA2)
	 (*
          (+
           (* -972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          (expt XA2 2))
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 648 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2))
          (expt XA3 2))
	 (*
          (+
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 324 WA0 (expt WA1 3))
		 (* 54 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -648 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2))
            XA3)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* -108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2)))
          XB0))
	YA1)
       (*
	(+
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2) XA1)
	 (*
          (+
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA0 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA0 XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2)))
          XA2)
	 (* 324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (* 972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -648 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1 XA0)
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 648 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1 XA0)
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 486 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -324 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1 XA2))
            XA3)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA3 2)))
          XB0))
	YA2)
       (*
	(+
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA0 3))
	 (* 108 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2) XA1)
	 (* -324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            (expt XA1 2))
	 (* 324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          (expt XA2 2))
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 36 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+ (* 324 WA0 (expt WA1 3))
               (* 54 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA0)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA1))
            XA2))
          XA3)
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0
            (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 324 WA0 (expt WA1 3))
               (* 54 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 486 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -324 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1))
            XA2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -324 WA0 (expt WA1 3))
		 (* 324 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -36 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 324 WA0 (expt WA1 3))
               (* -216 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA2))
            XA3)
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA3 2)))
          XB0))
	YA3))
      YB0)
     (*
      (+
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA0 3))
       (* -81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA0 2) XA1)
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1 XA0
	  (expt XA1 2))
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -486 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 XA0)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA1))
	(expt XA2 2))
       (* 243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 243 WA0 (expt WA1 3))
               (* -243 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA0)
	 (*
          (+ (* -243 WA0 (expt WA1 3))
             (* 162 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2))
	(expt XA3 2))
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA3 3)))
      (expt YB0 2)))
    YB1)))


