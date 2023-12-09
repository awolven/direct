(in-package :direct)


(defun rational-cubic-bezier/cubic-bezier-c3
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (+
   (*
    (+
     (*
      (+
       (* -84 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* -189 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2))
       (* 27 (expt WA0 3)
	  (expt WA3 3) (expt WB1 3))
       (*
	(+
	 (* -63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2)
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3))
      (expt XA3 3))
     (*
      (+
       (* 252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -504 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* 189 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2))
       (*
	(+
	 (* 126 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2)
       (* -6 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3))
      (expt XA3 2) XB0)
     (*
      (+
       (* -252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* -63 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2)
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3))
      XA3 (expt XB0 2))
     (* 84 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 378 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2))
	(expt XA3 2))
       (*
	(+
	 (* 504 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -378 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2))
	XA3 XB0)
       (* -252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (*
	(+
	 (* -189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* 81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3)))
	XA3)
       (* 189 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (* -27 (expt WA0 3)
	(expt WA3 3) (expt WB1 3)
	(expt XB1 3))
     (*
      (+
       (*
	(+
	 (* 63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2 (expt XA3 2))
       (*
	(+
	 (* -126 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2 XA3 XB0)
       (* 63 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XB0 2))
       (*
	(+
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2 XA3)
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2 XB0))
	XB1))
      XB2)
     (*
      (+
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XA3 2))
       (* 6 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3 XA3
	  XB0)
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XB0 2)))
      XB3))
    (expt YA0 3))
   (*
    (+
     (*
      (+
       (* 756 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3))
       (* -2268 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1)
       (* 1701 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2))
       (* -243 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB1 3))
       (*
	(+
	 (* 567 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2))
	 (* -486 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1))
	WB2)
       (* -27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB3))
      XA2 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* -1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 3024 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -1134 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 36 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	XA2 XA3)
       (*
	(+
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -567 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* 756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 189 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2)
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	XA2)
       (*
	(+
	 (* 1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 378 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2)
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	XA3))
      (expt XB0 2))
     (* -756 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* 1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -2268 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 486 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2))
	XA2 XA3)
       (*
	(+
	 (* 756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -1134 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA2)
	 (*
          (+
           (* -3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA3))
	XB0)
       (* 2268 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (*
	(+
	 (* 567 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3)))
	XA2)
       (*
	(+
	 (* 1134 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -486 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3)))
	XA3)
       (* -1701 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (* 243 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB1 3)
	(expt XB1 3))
     (*
      (+
       (*
	(+
	 (* -378 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2))
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1))
	WB2 XA2 XA3)
       (*
	(+
	 (* -189 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2))
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1))
	WB2 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA2)
	 (*
          (+
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA3))
	XB0)
       (* -567 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XB0 2))
       (*
	(+
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2 XA2)
	 (* -324 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2 XA3)
	 (* 486 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2 XB0))
	XB1))
      XB2)
     (*
      (+
       (* 18 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB3 XA2
	  XA3)
       (* 9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XA3 2))
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA2)
	 (* -36 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA3))
	XB0)
       (* 27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XB0 2)))
      XB3))
    (expt YA0 2) YA1)
   (*
    (+
     (*
      (+
       (* -2268 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3))
       (* 6804 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1)
       (* -5103 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2))
       (* 729 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB1 3))
       (*
	(+
	 (* -1701 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2))
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1))
	WB2)
       (* 81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3))
      XA1 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -9072 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* 2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* -108 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA1 XA3)
       (*
	(+
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2)
	 (* 27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA1)
       (*
	(+
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -1134 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA3))
      (expt XB0 2))
     (* 2268 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 6804 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2))
	XA1 XA3)
       (*
	(+
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA1)
	 (*
          (+
           (* 9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA3))
	XB0)
       (* -6804 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (*
	(+
	 (* -1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)))
	XA1)
       (*
	(+
	 (* -3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)))
	XA3)
       (* 5103 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (* -729 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB1 3)
	(expt XB1 3))
     (*
      (+
       (*
	(+
	 (* 1134 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2))
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1))
	WB2 XA1 XA3)
       (*
	(+
	 (* 567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2))
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1))
	WB2 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA1)
	 (*
          (+
           (* -2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA3))
	XB0)
       (* 1701 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XB0 2))
       (*
	(+
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA1)
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA3)
	 (* -1458 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XB0))
	XB1))
      XB2)
     (*
      (+
       (* -54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3 XA1
	  XA3)
       (* -27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XA3 2))
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA1)
	 (* 108 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA3))
	XB0)
       (* -81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XB0 2)))
      XB3))
    YA0 (expt YA1 2))
   (*
    (+
     (*
      (+
       (* 2268 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3))
       (* -6804 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1)
       (* 5103 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2))
       (* -729 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB1 3))
       (*
	(+
	 (* 1701 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2))
	 (* -1458 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1))
	WB2)
       (* -81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3))
      XA0 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 9072 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* -2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 108 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA0 XA3)
       (*
	(+
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2)
	 (* -27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA0)
       (*
	(+
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 1134 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA3))
      (expt XB0 2))
     (* -2268 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -6804 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2))
	XA0 XA3)
       (*
	(+
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0)
	 (*
          (+
           (* -9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA3))
	XB0)
       (* 6804 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (*
	(+
	 (* 1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)))
	XA0)
       (*
	(+
	 (* 3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)))
	XA3)
       (* -5103 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (* 729 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB1 3)
	(expt XB1 3))
     (*
      (+
       (*
	(+
	 (* -1134 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2))
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1))
	WB2 XA0 XA3)
       (*
	(+
	 (* -567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2))
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1))
	WB2 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0)
	 (*
          (+
           (* 2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA3))
	XB0)
       (* -1701 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XB0 2))
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA0)
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA3)
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XB0))
	XB1))
      XB2)
     (*
      (+
       (* 54 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3 XA0
	  XA3)
       (* 27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XA3 2))
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0)
	 (* -108 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA3))
	XB0)
       (* 81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XB0 2)))
      XB3))
    (expt YA1 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -5103 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3))
	 (*
          (+
           (* -1701 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	(expt XA2 2) XA3)
       (*
	(+
	 (* 1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -4536 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 3402 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -486 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	XA1 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 6048 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 72 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA1)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2)
             (* -108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            XA2))
          XA3)
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA2)
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -567 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 27 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -36 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -1512 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA2)
           (*
            (+
             (*
              (+
               (* 4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -6048 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA3))
          XB0)
	 (*
          (+
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 4536 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA1)
	 (*
          (+
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -1701 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 729 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3)))
          XA3)
	 (*
          (+
           (* 5103 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -3402 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 486 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB1 3) (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* 567 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA2)
           (*
            (+
             (*
              (+
               (* -1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA3))
          XB0)
	 (*
          (+
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XB0 2))
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA2)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA3)
           (*
            (+
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2))
          XA3)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA3 2))
	 (*
          (+
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2)
           (*
            (+
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -72 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA3))
          XB0)
	 (*
          (+
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB3 (expt XB0 2)))
	XB3))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3))
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3))
	XA1 XA2 XA3)
       (*
	(+
	 (* -2268 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 6804 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -5103 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 729 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 1458 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA1 XA2)
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -9072 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 2268 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA2))
          XA3)
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -4536 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA2)
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 2268 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA1 XA2)
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -1458 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA2)
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 9072 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -6804 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA3))
          XB0)
	 (*
          (+
           (* 20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -6804 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA0)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA1)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA2)
	 (*
          (+
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1458 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3)))
          XA3)
	 (*
          (+
           (* -15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 5103 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -729 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB1 3) (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA1 XA2)
	 (*
          (+
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA2)
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2268 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA3))
          XB0)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XB0 2))
	 (*
          (+
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA3)
           (*
            (+
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1458 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA1 XA2)
	 (*
          (+
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2))
          XA3)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA3 2))
	 (*
          (+
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA3))
          XB0)
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB3 (expt XB0 2)))
	XB3))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3))
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3))
	XA0 XA2 XA3)
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA3))
	(expt XB0 2))
       (* 6804 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA2)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA3))
          XB0)
	 (* -20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA2)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA3)
	 (* 15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XB0))
	(expt XB1 2))
       (* -2187 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB1 3)
	  (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA2)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA3))
          XB0)
	 (* 5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XB0 2))
	 (*
          (+
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA2)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA3)
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA2)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2))
          XA3)
	 (*
          (+
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA3))
          XB0)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XB0 2)))
	XB3))
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
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2))
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -13608 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 10206 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (*
            (+
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -2916 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2))
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2)
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            XA0)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2)
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0)
	 (*
          (+
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA1)
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA2)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 4536 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -4536 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 1134 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -54 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* -4536 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA2)
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2))
            XA3))
          XB0)
	 (*
          (+
           (* -20412 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 13608 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA1)
	 (*
          (+
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 3402 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2))
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -1458 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB1 3)))
          XA3)
	 (*
          (+
           (* 15309 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -10206 (expt WA0 2)
              (expt WA2 3)))
          WA3 WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* 1458 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB1 3) (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA2)
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1))
            WB2 XA3))
          XB0)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -3402 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB2 (expt XB0 2))
	 (*
          (+
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA0)
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA2)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XA3)
           (*
            (+
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 2916 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA1 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0 XA2)
	 (*
          (+
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2))
          XA3)
	 (*
          (+
           (* -108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA0)
           (* 324 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* -108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3 XA3))
          XB0)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 162 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB3 (expt XB0 2)))
	XB3))
      YA0)
     (*
      (+
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3))
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3))
	XA0 XA1 XA3)
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA3))
	(expt XB0 2))
       (* -6804 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA3))
          XB0)
	 (* 20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA0)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA1)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA3)
	 (* -15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XB0))
	(expt XB1 2))
       (* 2187 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB1 3)
	  (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA3))
          XB0)
	 (* -5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XB0 2))
	 (*
          (+
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA3)
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA1)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          XA3)
	 (*
          (+
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA3))
          XB0)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XB0 2)))
	XB3))
      YA1))
    (expt YA2 2))
   (*
    (+
     (*
      (+
       (* -2268 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3))
       (* 6804 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1)
       (* -5103 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2))
       (* 729 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB1 3))
       (*
	(+
	 (* -1701 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2))
	 (* 1458 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1))
	WB2)
       (* 81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB3))
      (expt XA0 2) XA3)
     (*
      (+
       (*
	(+
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 1701 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (*
          (+
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	(expt XA0 2))
       (*
	(+
	 (* 4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -9072 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 3402 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2)
	 (* -108 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	XA0 XA3))
      XB0)
     (*
      (+
       (*
	(+
	 (* -4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -1134 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2)
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	XA0)
       (*
	(+
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -567 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2)
	 (* 27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	XA3))
      (expt XB0 2))
     (* 2268 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 3402 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3))
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2))
	(expt XA0 2))
       (*
	(+
	 (* -4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 6804 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -1458 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3))
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2))
	XA0 XA3)
       (*
	(+
	 (*
          (+
           (* 9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0)
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA3))
	XB0)
       (* -6804 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (*
	(+
	 (* -3402 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 1458 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3)))
	XA0)
       (*
	(+
	 (* -1701 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3)))
	XA3)
       (* 5103 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
	  XB0))
      (expt XB1 2))
     (* -729 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB1 3)
	(expt XB1 3))
     (*
      (+
       (*
	(+
	 (* 567 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2))
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1))
	WB2 (expt XA0 2))
       (*
	(+
	 (* 1134 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2))
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1))
	WB2 XA0 XA3)
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0)
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA3))
	XB0)
       (* 1701 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2
	  (expt XB0 2))
       (*
	(+
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2 XA0)
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2 XA3)
	 (* -1458 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2 XB0))
	XB1))
      XB2)
     (*
      (+
       (* -27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB3
	  (expt XA0 2))
       (* -54 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB3
	  XA0 XA3)
       (*
	(+
	 (* 108 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0)
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA3))
	XB0)
       (* -81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB3
	  (expt XB0 2)))
      XB3))
    (expt YA2 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 5103 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3))
	 (*
          (+
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	(expt XA2 3))
       (*
	(+
	 (* -2268 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 6804 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -5103 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 729 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 1458 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	XA1 XA2 XA3)
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -756 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 567 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3))
	 (*
          (+
           (* 189 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* -162 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2)
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -4536 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA1 XA2)
	 (*
          (+
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 13608 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -5103 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* 1008 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (*
              (+
               (* -252 (expt WA0 3)
		  (expt WA3 3) (expt WB0 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3) WB0 WB1))
              WB2)
             (* 12 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA1)
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA2))
          XA3)
	 (*
          (+
           (* -252 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -189 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (*
            (+
             (* -126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2)
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 252 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -252 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 63 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2)
           (* -3 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (*
            (+
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 1701 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -81 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA2)
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 2268 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* -252 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA1 XA2)
	 (*
          (+
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -10206 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 2187 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -756 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* 162 (expt WA0 3)
		(expt WA3 3) (expt WB1 3))
             (* 108 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (* 252 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 81 (expt WA0 3)
              (expt WA3 3) (expt WB1 3))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* -13608 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 10206 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA2)
           (*
            (+
             (*
              (+
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -1008 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 756 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2))
            XA3))
          XB0)
	 (*
          (+
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -6804 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 756 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* 189 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* -81 (expt WA0 3)
              (expt WA3 3) (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA1)
	 (*
          (+
           (*
            (+
             (* 5103 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -2187 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3)))
          XA3)
	 (*
          (+
           (* -5103 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 5103 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -567 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -729 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* 81 (expt WA0 3)
            (expt WA3 3)))
	(expt WB1 3) (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA1 XA2)
	 (*
          (+
           (* -1701 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* 108 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (* -63 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (*
              (+
               (* 3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA2)
           (*
            (+
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 252 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2))
             (*
              (+
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1))
            WB2 XA3))
          XB0)
	 (*
          (+
           (* -1701 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -189 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XB0 2))
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA0)
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2)
           (*
            (+
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -108 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XA3)
           (*
            (+
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1458 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 162 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA1
            XA2)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA2))
          XA3)
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3
            (expt XA3 2))
	 (*
          (+
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              XA0)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2)
           (*
            (+
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -12 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3 XA3))
          XB0)
	 (*
          (+
           (* 81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 (expt XB0 2)))
	XB3))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3))
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3))
	XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -13608 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 10206 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (*
            (+
             (* 3402 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -2916 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1))
          XA2)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 18144 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -4536 WA0 (expt WA1 3)
		  (expt WA3 2) (expt WB0 2))
               (* 1944 WA0 (expt WA1 3)
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 216 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB3))
            XA1)
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 189 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA2)
	 (*
          (+
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 1134 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2)
           (*
            (+ (* -54 WA0 (expt WA1 3))
               (* -9 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -13608 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 2916 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB1 3))
             (* 1944 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -18144 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 13608 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* 27216 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA2)
           (*
            (+
             (*
              (+
               (* -9072 WA0 (expt WA1 3))
               (* -1512 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* 6804 WA0 (expt WA1 3))
               (* 1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2))
            XA3))
          XB0)
	 (*
          (+
           (* -20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* 13608 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA0)
	 (*
          (+
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2916 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB1 3)))
          XA1)
	 (*
          (+
           (*
            (+
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3)))
          XA2)
	 (*
          (+
           (*
            (+ (* 3402 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -1458 WA0 (expt WA1 3))
             (* -243 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3)))
          XA3)
	 (*
          (+
           (* 15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -10206 WA0 (expt WA1 3))
             (* -1701 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* 1458 WA0 (expt WA1 3))
             (* 243 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB1 3) (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          XA2)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 1944 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 378 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA1)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA2)
           (*
            (+
             (*
              (+
               (* 2268 WA0 (expt WA1 3))
               (* 378 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2))
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1))
            WB2 XA3))
          XB0)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -3402 WA0 (expt WA1 3))
             (* -567 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB2 (expt XB0 2))
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1944 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2)
           (*
            (+ (* -972 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA3)
           (*
            (+
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 2916 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          XA2)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA2))
          XA3)
	 (*
          (+
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -216 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1)
           (*
            (+
             (* 324 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -18 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2)
           (*
            (+ (* -108 WA0 (expt WA1 3))
               (* -18 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            XA3))
          XB0)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB3 (expt XB0 2)))
	XB3))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3))
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3))
	XA0 (expt XA2 2))
       (*
	(+
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 13608 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -10206 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 2916 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA0 XA1 XA3)
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 27216 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* 324 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 4536 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 2268 WA0 (expt WA1 3)
		  (expt WA3 2) (expt WB0 2))
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* 4536 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 2268 WA0 (expt WA1 3)
		  (expt WA3 2) (expt WB0 2))
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB3))
            XA1))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -4536 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 4536 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1134 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 54 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA2)
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -4536 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -1458 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB1 3))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -4536 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -1458 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB1 3))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -6804 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA2)
           (*
            (+
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA3))
          XB0)
	 (*
          (+
           (* 20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -13608 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -3402 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1458 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          XA1)
	 (*
          (+
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA2)
	 (*
          (+
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          XA3)
	 (*
          (+
           (* -15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 10206 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -1458 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB1 3) (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* -3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1134 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 1134 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2268 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA2)
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA3))
          XB0)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA2)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA3)
           (*
            (+
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2916 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (* 162 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA2)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* -324 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA3))
          XB0)
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB3 (expt XB0 2)))
	XB3))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2) XA2)
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 13608 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -10206 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (*
            (+
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 2916 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0 (expt XA2 2))
	 (*
          (+
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1 XA3)
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 9072 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 3))
               (* -18144 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1)
               (* 6804 (expt WA0 2)
		  (expt WA2 3) WA3 WB0
		  (expt WB1 2))
               (*
		(+
		 (* 4536 (expt WA0 2)
                    (expt WA2 3) WA3
                    (expt WB0 2))
		 (* -1944 (expt WA0 2)
                    (expt WA2 3) WA3 WB0 WB1))
		WB2)
               (* -216 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB3))
              XA0)
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 27216 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (*
		(+
		 (* -6804 WA0 (expt WA1 2)
                    (expt WA2 2) WA3
                    (expt WB0 2))
		 (* 2916 WA0 (expt WA1 2)
                    (expt WA2 2) WA3 WB0 WB1))
		WB2)
               (* 324 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA1))
            XA2)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2)
             (* -108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* 378 (expt WA0 2) WA1 WA2
                    (expt WA3 2) (expt WB0 2))
		 (* -162 (expt WA0 2) WA1 WA2
                    (expt WA3 2) WB0 WB1))
		WB2)
               (* -18 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB3))
              XA0)
             (*
              (+
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* 378 (expt WA0 2) WA1 WA2
                    (expt WA3 2) (expt WB0 2))
		 (* -162 (expt WA0 2) WA1 WA2
                    (expt WA3 2) WB0 WB1))
		WB2)
               (* -18 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB3))
              XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* 54 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 9 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 9 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA1)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2)
             (*
              (+
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 108 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB3))
            XA2)
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 4536 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XB0 3))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -9072 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1)
               (* 13608 (expt WA0 2)
		  (expt WA2 3) WA3 WB0
		  (expt WB1 2))
               (* -2916 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB1 3))
               (* -1944 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 4374 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB1 3))
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -243 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB1 3))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -243 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB1 3))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 9072 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -6804 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -1134 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* 972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA0)
             (*
              (+
               (*
		(+
		 (* -27216 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1134 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -2916 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA1)
             (*
              (+
               (*
		(+
		 (* -13608 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 18144 (expt WA0 2)
                    (expt WA2 3)))
		WA3 (expt WB0 2) WB1)
               (*
		(+
		 (* 10206 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -13608 (expt WA0 2)
                    (expt WA2 3)))
		WA3 WB0 (expt WB1 2))
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 1944 (expt WA0 2)
                    (expt WA2 3)))
		WA3 WB0 WB1 WB2))
              XA2)
             (*
              (+
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA3))
            XB0)
           (*
            (+
             (*
              (+
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -13608 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XB0 2)))
          XB1)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 243 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA0)
           (*
            (+
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -4374 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 243 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA1)
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2916 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB1 3)))
            XA2)
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA3)
           (*
            (+
             (*
              (+
               (* -15309 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 10206 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XB0))
          (expt XB1 2))
	 (*
          (+
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -1458 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB1 3) (expt XB1 3))
	 (*
          (+
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -2268 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -378 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* 972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA0)
             (*
              (+
               (*
		(+
		 (* 6804 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -378 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* -2916 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA1)
             (*
              (+
               (*
		(+
		 (* 3402 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -4536 (expt WA0 2)
                    (expt WA2 3)))
		WA3 (expt WB0 2))
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 1944 (expt WA0 2)
                    (expt WA2 3)))
		WA3 WB0 WB1))
              WB2 XA2)
             (*
              (+
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA3))
            XB0)
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 3402 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XB0 2))
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2 XA2)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA3)
             (*
              (+
               (*
		(+
		 (* 4374 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -2916 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XB0))
            XB1))
          XB2)
	 (*
          (+
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (* -108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3 XA0)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA0)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA1))
            XA3)
           (*
            (+
             (*
              (+
               (* 108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* -324 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 216 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB3 XA2)
             (* 18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
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
              WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XB0 2)))
          XB3))
	YA0)
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA1 XA2)
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -6804 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 5103 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -1458 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA0 2) XA3)
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (*
		(+
		 (* 3402 WA0 (expt WA1 2)
                    (expt WA2 2) WA3
                    (expt WB0 2))
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3 WB0 WB1))
		WB2)
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA0)
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (*
		(+
		 (* 3402 WA0 (expt WA1 2)
                    (expt WA2 2) WA3
                    (expt WB0 2))
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3 WB0 WB1))
		WB2)
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA1))
            XA2)
           (*
            (+
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 9072 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -2268 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA2)
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA3))
          (expt XB0 2))
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XB0 3))
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB1 3))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB1 3))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 1458 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 13608 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -9072 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -10206 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 6804 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -972 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1)
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA2)
             (*
              (+
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA3))
            XB0)
           (*
            (+
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 6804 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XB0 2)))
          XB1)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1458 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA0)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA1)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA2)
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA3)
           (*
            (+
             (* 15309 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -5103 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XB0))
          (expt XB1 2))
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB1 3) (expt XB1 3))
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3402 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 2268 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -972 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA2)
             (*
              (+
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA3))
            XB0)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XB0 2))
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA2)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA3)
             (*
              (+
               (* -4374 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1458 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XB0))
            XB1))
          XB2)
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA0)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA3)
           (*
            (+
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -108 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA2)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA3))
            XB0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XB0 2)))
          XB3))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 5103 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3))
	 (*
          (+
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -1701 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA0 2))
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0 XA2))
	XB0)
       (*
	(+
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0)
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 567 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* -27 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA2))
	(expt XB0 2))
       (* -2268 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA2))
          XB0)
	 (* 6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          XA0)
	 (*
          (+
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          XA2)
	 (* -5103 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XB0))
	(expt XB1 2))
       (* 729 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB1 3)
	  (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* -567 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA2))
          XB0)
	 (* -1701 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XB0 2))
	 (*
          (+
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA0)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA2)
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* 27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA0 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0 XA2)
	 (*
          (+
           (* -108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA0)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2))
          XB0)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XB0 2)))
	XB3))
      (expt YA2 2)))
    YA3)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 6804 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -5103 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* -1701 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA1 3))
       (*
	(+
	 (* 2268 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -6804 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 5103 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -729 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -1458 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	XA0 XA1 XA2)
       (*
	(+
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 756 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -567 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* 81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3))
	 (*
          (+
           (* -189 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* 162 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2)
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3))
	(expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (* 252 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 189 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (*
            (+
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2)
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 4536 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -13608 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 5103 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 3402 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -1458 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA1))
          XA2)
	 (*
          (+
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -1008 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (*
            (+
             (* 252 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* -108 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2)
           (* -12 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 6804 WA0 (expt WA1 3))
               (* -2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+
             (* -1701 WA0 (expt WA1 3))
             (* 567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2)
           (*
            (+ (* 81 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA2)
	 (*
          (+
           (* -252 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 252 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -63 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2)
           (* 3 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+ (* 2268 WA0 (expt WA1 3))
             (* -2268 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* 252 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -252 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* -81 (expt WA0 3)
              (expt WA3 3) (expt WB1 3))
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 10206 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -2187 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1))
          XA2)
	 (*
          (+
           (* -504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 756 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* -162 (expt WA0 3)
              (expt WA3 3) (expt WB1 3))
           (* -108 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          XA0 XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 1008 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -756 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2))
            XA0)
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 3))
               (* -4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* -10206 WA0 (expt WA1 3))
               (* 3402 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 3))
               (* -486 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA2)
           (*
            (+
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 3))
             (* 6804 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -756 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3)))
          XA0)
	 (*
          (+
           (*
            (+
             (* -5103 WA0 (expt WA1 3))
             (* 1701 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* 2187 WA0 (expt WA1 3))
               (* -729 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3)))
          XA1)
	 (*
          (+
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA2)
	 (*
          (+
           (* -189 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 81 (expt WA0 3)
              (expt WA3 3) (expt WB1 3)))
          XA3)
	 (*
          (+
           (*
            (+ (* 5103 WA0 (expt WA1 3))
               (* -5103 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 567 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (*
          (+ (* -729 WA0 (expt WA1 3))
             (* 729 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3)))
	(expt WB1 3) (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* 63 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* 1701 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1))
          XA2)
	 (*
          (+
           (* 126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* -108 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 XA0 XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -252 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2))
             (*
              (+
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1))
            WB2 XA0)
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 3))
               (* 1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 3))
               (* -486 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA2)
           (*
            (+
             (* -126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 XA3))
          XB0)
	 (*
          (+
           (*
            (+ (* 1701 WA0 (expt WA1 3))
               (* -1701 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 189 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 108 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XA0)
           (*
            (+ (* 1458 WA0 (expt WA1 3))
               (* -486 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA1)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA2)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA3)
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 3))
               (* 1458 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -162 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3
            (expt XA0 2))
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1))
          XA2)
	 (* -6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3 XA0
            XA3)
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 12 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3 XA0)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* -54 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            XA1)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA2)
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              XA3))
          XB0)
	 (*
          (+
           (*
            (+ (* -81 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 (expt XB0 2)))
	XB3))
      YA0)
     (*
      (+
       (*
	(+
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -6804 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 5103 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* 1701 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA0 (expt XA1 2))
       (*
	(+
	 (* -1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 4536 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -3402 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 486 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* -2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1701 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -1134 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 486 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (* 3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -6048 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -72 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA2))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2268 WA0 (expt WA1 3))
               (* -3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+
             (* -2268 WA0 (expt WA1 3))
             (* 3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 567 WA0 (expt WA1 3))
               (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2)
           (*
            (+ (* -27 WA0 (expt WA1 3))
               (* 36 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA2))
	(expt XB0 2))
       (*
	(+ (* -2268 WA0 (expt WA1 3))
	   (* 1512 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* 2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 729 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (* -3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 4536 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -4536 WA0 (expt WA1 3))
               (* 6048 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* 3402 WA0 (expt WA1 3))
               (* -4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA2))
          XB0)
	 (*
          (+ (* 6804 WA0 (expt WA1 3))
             (* -4536 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1
          (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 1701 WA0 (expt WA1 3))
               (* -2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* -729 WA0 (expt WA1 3))
               (* 972 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3)))
          XA0)
	 (*
          (+
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          XA1)
	 (*
          (+
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA2)
	 (*
          (+ (* -5103 WA0 (expt WA1 3))
             (* 3402 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+ (* 729 WA0 (expt WA1 3))
	   (* -486 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB1 3)
	(expt XB1 3))
       (*
	(+
	 (*
          (+
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* -567 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1134 WA0 (expt WA1 3))
               (* -1512 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2))
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA2))
          XB0)
	 (*
          (+ (* -1701 WA0 (expt WA1 3))
             (* 1134 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2
          (expt XB0 2))
	 (*
          (+
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA2)
           (*
            (+ (* 1458 WA0 (expt WA1 3))
               (* -972 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA0 2))
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (* 27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (* -36 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA2)
	 (*
          (+
           (*
            (+ (* -54 WA0 (expt WA1 3))
               (* 72 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            XA0)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA2))
          XB0)
	 (*
          (+ (* 81 WA0 (expt WA1 3))
             (* -54 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB3
          (expt XB0 2)))
	XB3))
      YA1)
     (*
      (+
       (*
	(+
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 2268 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -1701 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (*
          (+
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA0 2) XA1)
       (*
	(+
	 (*
          (+
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 378 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1))
	XB0)
       (*
	(+
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -189 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA1))
	(expt XB0 2))
       (* 756 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1))
          XB0)
	 (* -2268 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA1)
	 (* 1701 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (* -243 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB1 3)
	  (expt XB1 3))
       (*
	(+
	 (*
          (+
           (* 189 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -378 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1))
          XB0)
	 (* 567 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XB0 2))
	 (*
          (+
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XB0))
          XB1))
	XB2)
       (*
	(+
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA0 2))
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (*
          (+
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1))
          XB0)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XB0 2)))
	XB3))
      YA2))
    (expt YA3 2))
   (*
    (+
     (*
      (+
       (* 84 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* 189 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2))
       (* -27 (expt WA0 3)
	  (expt WA3 3) (expt WB1 3))
       (*
	(+
	 (* 63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2)
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3))
      (expt XA0 3))
     (*
      (+
       (* -252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 504 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* -189 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2))
       (*
	(+
	 (* -126 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2)
       (* 6 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3))
      (expt XA0 2) XB0)
     (*
      (+
       (* 252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* 63 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2)
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3))
      XA0 (expt XB0 2))
     (* -84 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -378 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* 81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2))
	(expt XA0 2))
       (*
	(+
	 (* -504 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 378 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2))
	XA0 XB0)
       (* 252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (*
	(+
	 (* 189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3)))
	XA0)
       (* -189 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (* 27 (expt WA0 3)
	(expt WA3 3) (expt WB1 3)
	(expt XB1 3))
     (*
      (+
       (*
	(+
	 (* -63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2 (expt XA0 2))
       (*
	(+
	 (* 126 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2 XA0 XB0)
       (* -63 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XB0 2))
       (*
	(+
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2 XA0)
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2 XB0))
	XB1))
      XB2)
     (*
      (+
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XA0 2))
       (* -6 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3 XA0
	  XB0)
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XB0 2)))
      XB3))
    (expt YA3 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -1701 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2)
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -4536 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA1 XA2)
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* -252 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -189 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (*
            (+
             (* -126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2)
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -378 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -504 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (*
          (+
           (* 126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2)
	 (* -6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3))
	(expt XA3 3))
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA1 XA2)
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB2)
             (* -6 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA1)
           (*
            (+
             (*
              (+
               (* -4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* 54 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 9 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0)
	 (* 756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 252 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA1 XA2)
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* 4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2))
          (expt XA3 2))
	 (*
          (+
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA0)
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1)
       (*
	(+
	 (* -189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2) XA0)
	 (* 567 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (*
          (+
           (* -1701 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA2)
	 (*
          (+
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 189 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XA3))
	(expt XB1 2))
       (*
	(+
	 (*
          (+
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA1 XA2)
	 (*
          (+
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (*
              (+
               (* -1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2))
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1))
          WB2 (expt XA3 2))
	 (*
          (+
           (* -126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              XA0)
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA3))
          XB0)
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA0)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2)
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XA3))
          XB1))
	XB2)
       (*
	(+
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA1
            XA2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              XA0)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (*
            (+
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2))
          XA3)
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 (expt XA3 2))
	 (*
          (+
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              XA0)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (*
            (+
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -36 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2)
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3 XA3))
          XB0))
	XB3))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -13608 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (*
          (+
           (* 3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2)
	 (* -162 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3))
	XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -4536 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1))
          XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -3780 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 3780 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -945 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* 45 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 945 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -45 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+
             (* -1134 WA0 (expt WA1 3))
             (* -189 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2)
           (*
            (+ (* 54 WA0 (expt WA1 3))
               (* 9 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          XA2)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 3780 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -2835 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+
             (* -3402 WA0 (expt WA1 3))
             (* -567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2))
          (expt XA3 2))
	 (*
          (+
           (* -3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -9072 WA0 (expt WA1 3))
               (* -1512 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1)
       (*
	(+
	 (* 1134 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* -3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA2)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 3402 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          WB0 (expt WB1 2) XA3))
	(expt XB1 2))
       (*
	(+
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          XA2)
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -945 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 945 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -1134 WA0 (expt WA1 3))
             (* -189 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2))
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1))
          WB2 (expt XA3 2))
	 (*
          (+
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 2268 WA0 (expt WA1 3))
               (* 378 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          XB0)
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 WB1 WB2 XA3))
          XB1))
	XB2)
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          XA2)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (* 45 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -45 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2))
          XA3)
	 (*
          (+ (* 54 WA0 (expt WA1 3))
             (* 9 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB3
          (expt XA3 2))
	 (*
          (+
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -108 WA0 (expt WA1 3))
               (* -18 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB3 XA3))
          XB0))
	XB3))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 13608 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (*
          (+
           (* -3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2)
	 (* 162 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 13608 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -5103 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 1458 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* 2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1701 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 1134 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -486 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA2)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2268 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -108 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB3))
            XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA2))
          XA3)
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0)
	 (* 6804 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA2)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 6804 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA3 2))
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -13608 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1)
       (*
	(+
	 (* -1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* 5103 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* -5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA2)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) XA3))
	(expt XB1 2))
       (*
	(+
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2268 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA3 2))
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* -3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          XB0)
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XA3))
          XB1))
	XB2)
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA2)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2))
          XA3)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA3 2))
	 (*
          (+
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 XA3))
          XB0))
	XB3))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2) XA2)
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* -108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA1)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -9072 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 3))
               (* 18144 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1)
               (* -6804 (expt WA0 2)
		  (expt WA2 3) WA3 WB0
		  (expt WB1 2))
               (*
		(+
		 (* -4536 (expt WA0 2)
                    (expt WA2 3) WA3
                    (expt WB0 2))
		 (* 1944 (expt WA0 2)
                    (expt WA2 3) WA3 WB0 WB1))
		WB2)
               (* 216 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB3))
              XA0)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (*
		(+
		 (* -3402 WA0 (expt WA1 2)
                    (expt WA2 2) WA3
                    (expt WB0 2))
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3 WB0 WB1))
		WB2)
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA1))
            XA2)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2)
             (* -108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 6048 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 72 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            (expt XA1 2))
           (*
            (+
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1 XA2)
           (*
            (+
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2)
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 9072 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* -9072 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 2268 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB2)
               (*
		(+
		 (* -108 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 63 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB3))
              XA0)
             (*
              (+
               (*
		(+
		 (* -20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* 20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -5103 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB2)
               (*
		(+
		 (* 243 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -63 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB3))
              XA1)
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2)
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA2))
            XA3)
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 9072 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA2)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 15309 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1 XA2)
           (*
            (+
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -9072 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 6804 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA0)
             (*
              (+
               (*
		(+
		 (* 20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -15309 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* 2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA1)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA2))
            XA3)
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 9072 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -6048 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* 27216 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -18144 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1 XA2)
             (*
              (+
               (*
		(+
		 (* -13608 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 9072 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 6804 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA2)
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -3402 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA3))
          (expt XB1 2))
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1 XA2)
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2268 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA0)
             (*
              (+
               (*
		(+
		 (* -5103 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* 2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA1)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA2))
            XA3)
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2 XA2)
             (*
              (+
               (*
		(+
		 (* 3402 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -2268 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA3))
            XB0)
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2 XA2)
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA3))
            XB1))
          XB2)
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1 XA2)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA2))
            XA3)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -72 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (*
              (+
               (* 324 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -216 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB3 XA2)
             (*
              (+
               (*
		(+
		 (* -162 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 108 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA3))
            XB0))
          XB3))
	YA0)
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA1 XA2)
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -27216 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (*
		(+
		 (* 6804 WA0 (expt WA1 2)
                    (expt WA2 2) WA3
                    (expt WB0 2))
		 (* -2916 WA0 (expt WA1 2)
                    (expt WA2 2) WA3 WB0 WB1))
		WB2)
               (* -324 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA0)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (*
		(+
		 (* -3402 WA0 (expt WA1 2)
                    (expt WA2 2) WA3
                    (expt WB0 2))
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3 WB0 WB1))
		WB2)
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -4536 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0 XA1)
           (*
            (+
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2)
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA1)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2)
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA2))
            XA3)
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA2)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -15309 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 15309 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1)
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA2))
            XA3)
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* 27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1)
             (* -27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA2)
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA2)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA3))
          (expt XB1 2))
	 (*
          (+
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA2)
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA2))
            XA3)
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1)
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA2)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA3))
            XB0)
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA2)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA3))
            XB1))
          XB2)
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA2)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA2))
            XA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (* 324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1)
             (* -324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA2)
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA3))
            XB0))
          XB3))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -1701 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2)
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -13608 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 5103 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA0 2))
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2))
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA0 2))
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA1)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2))
	 (*
          (+
           (* 9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* -108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2)
             (*
              (+
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 108 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2)
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 4536 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) XA0)
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1)
	 (* -6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA2)
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (* -9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -9072 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* 13608 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2)
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA3))
          XB0))
	XB1)
       (*
	(+
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 3402 (expt WA0 2)
              (expt WA2 3)))
          WA3 WB0 (expt WB1 2) XA0)
	 (* 5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1)
	 (* -5103 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA2)
	 (* 1701 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA3))
	(expt XB1 2))
       (*
	(+
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 2268 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2 XA0)
           (* 3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2)
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA2)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA3))
          XB1))
	XB2)
       (*
	(+
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA0 2))
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA1)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA1 2))
	 (* -108 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3 XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3 XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA3))
          XB0))
	XB3))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 9072 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -2268 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2)
             (* -108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* -1008 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (*
              (+
               (* 252 (expt WA0 3)
		  (expt WA3 3) (expt WB0 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3) WB0 WB1))
              WB2)
             (* -12 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA1)
           (*
            (+
             (* -4536 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -2268 WA0 (expt WA1 3)
		  (expt WA3 2) (expt WB0 2))
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* -378 (expt WA0 2) WA1 WA2
                    (expt WA3 2) (expt WB0 2))
		 (* 162 (expt WA0 2) WA1 WA2
                    (expt WA3 2) WB0 WB1))
		WB2)
               (* 18 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB3))
              XA0)
             (*
              (+
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -9072 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* 2268 (expt WA0 2) WA1 WA2
                    (expt WA3 2) (expt WB0 2))
		 (* -972 (expt WA0 2) WA1 WA2
                    (expt WA3 2) WB0 WB1))
		WB2)
               (* -108 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB3))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* -504 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 1008 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (*
            (+
             (* -252 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* 108 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2)
           (* 12 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB2)
             (* 6 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* 3780 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -3780 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 945 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* -45 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2268 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 108 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -9072 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 5292 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 9072 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -5292 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1323 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* 108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2)
             (*
              (+
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -108 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB3))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 9072 WA0 (expt WA1 3))
		 (* -5292 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 3))
               (*
		(+
		 (* -9072 WA0 (expt WA1 3))
		 (* 5292 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* 2268 WA0 (expt WA1 3))
		 (* -1323 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB2)
               (*
		(+
		 (* -108 WA0 (expt WA1 3))
		 (* 63 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2)
		WB3))
              XA1)
             (*
              (+
               (* -3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -945 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB2)
               (* 45 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB3))
              XA2))
            XA3)
           (*
            (+
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB2)
             (* -6 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB3))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2)
           (*
            (+
             (*
              (+
               (* -4536 WA0 (expt WA1 3))
               (* 4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -3780 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 2835 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -6804 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 9072 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -5292 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -6804 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 3969 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -9072 WA0 (expt WA1 3))
		 (* 5292 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* 6804 WA0 (expt WA1 3))
		 (* -3969 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 WB1 WB2))
              XA1)
             (*
              (+
               (* 3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA2))
            XA3)
           (*
            (+
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -9072 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 9072 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -1008 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -9072 WA0 (expt WA1 3))
		 (* -1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (*
		(+
		 (* -13608 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 9072 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2)
             (*
              (+
               (*
		(+
		 (* 9072 WA0 (expt WA1 3))
		 (* -9072 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 1008 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 3402 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -3402 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2)
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 3))
               (* 3402 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA3))
          (expt XB1 2))
	 (*
          (+
           (*
            (+
             (* -126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 945 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2268 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1323 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0 XA2)
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2268 WA0 (expt WA1 3))
		 (* -1323 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2))
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 WB1))
              WB2 XA1)
             (*
              (+
               (* -945 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA2))
            XA3)
           (*
            (+
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 2268 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -2268 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 252 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 2268 WA0 (expt WA1 3))
		 (* 378 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (*
		(+
		 (* 3402 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -2268 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA2)
             (*
              (+
               (*
		(+
		 (* -2268 WA0 (expt WA1 3))
		 (* 2268 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -252 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB2 XA3))
            XB0)
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* -162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2)
             (*
              (+
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -972 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA3))
            XB1))
          XB2)
	 (*
          (+
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              (expt XA0 2))
           (* -45 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XA1 2))
           (*
            (+
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -63 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -108 WA0 (expt WA1 3))
               (* 63 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
             (* 45 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA2))
            XA3)
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 108 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -12 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -108 WA0 (expt WA1 3))
		 (* -18 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (*
              (+
               (*
		(+
		 (* -162 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 108 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA2)
             (*
              (+
               (*
		(+
		 (* 108 WA0 (expt WA1 3))
		 (* -108 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 12 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB3 XA3))
            XB0))
          XB3))
	YA0)
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -6048 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -648 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -72 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -18144 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 4536 WA0 (expt WA1 3)
		  (expt WA3 2) (expt WB0 2))
               (* -1944 WA0 (expt WA1 3)
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -216 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA1)
           (*
            (+
             (* -4536 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -2268 WA0 (expt WA1 3)
		  (expt WA3 2) (expt WB0 2))
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA1 2))
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0 XA1)
           (*
            (+
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* -20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 5103 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB2)
               (*
		(+
		 (* -243 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 63 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB3))
              XA0)
             (*
              (+
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2)
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA1))
            XA2)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -9072 WA0 (expt WA1 3))
		 (* 5292 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 3))
               (*
		(+
		 (* 9072 WA0 (expt WA1 3))
		 (* -5292 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* -2268 WA0 (expt WA1 3))
		 (* 1323 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB2)
               (*
		(+
		 (* 108 WA0 (expt WA1 3))
		 (* -63 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2)
		WB3))
              XA0)
             (*
              (+
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB2)
               (* -9 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB3))
              XA2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2)
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* -3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 15309 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -15309 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 9072 WA0 (expt WA1 3))
		 (* -5292 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* -6804 WA0 (expt WA1 3))
		 (* 3969 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -9072 WA0 (expt WA1 3))
		 (* -1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -27216 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 18144 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2)
             (*
              (+
               (* -9072 WA0 (expt WA1 3))
               (* 6048 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 3402 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2)
           (*
            (+ (* 3402 WA0 (expt WA1 3))
               (* -2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)
            XA3))
          (expt XB1 2))
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 5103 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* -2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -2268 WA0 (expt WA1 3))
		 (* 1323 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2))
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 2268 WA0 (expt WA1 3))
		 (* 378 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA2)
             (*
              (+
               (* 2268 WA0 (expt WA1 3))
               (* -1512 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB2
              XA3))
            XB0)
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* -162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA3))
            XB1))
          XB2)
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 108 WA0 (expt WA1 3))
               (* -63 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -108 WA0 (expt WA1 3))
		 (* -18 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* -324 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 216 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA2)
             (*
              (+
               (* -108 WA0 (expt WA1 3))
               (* 72 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB3
              XA3))
            XB0))
          XB3))
	YA1)
       (*
	(+
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2)
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            (expt XA0 2))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA0 XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2)
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (*
            (+
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2)
           (* -108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2)
             (* -18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0 XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* -54 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -9 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -945 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 45 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA0 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2)
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA0)
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2)
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB3))
              XA1))
            XA2)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2)
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 945 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB2)
               (* -45 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB3))
              XA0)
             (*
              (+
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB2)
               (* 9 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB3))
              XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2)
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -13608 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 9072 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1 XA2)
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -3402 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              XA2)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA3))
          (expt XB1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -945 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 945 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 3402 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -2268 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2 XA2)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA3))
            XB0)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2 XA2)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA3))
            XB1))
          XB2)
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XA0 2))
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 45 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA1)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA0)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (* -45 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA0)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -162 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 108 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (* -108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3 XA2)
             (* 36 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA3))
            XB0))
          XB3))
	YA2))
      YA3)
     (*
      (+
       (*
	(+
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 504 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (*
          (+
           (* -126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2)
	 (* 6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3))
	(expt XA0 3))
       (*
	(+
	 (* 756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 567 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA0 2) XA1)
       (*
	(+
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA0 (expt XA1 2))
       (*
	(+
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 4536 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1))
	XA2)
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -504 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (*
          (+
           (* 126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2)
	 (* -6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3))
	(expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 1134 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2)
           (*
            (+ (* -54 WA0 (expt WA1 3))
               (* -9 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA1))
          XA2)
	 (*
          (+
           (* -504 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2)
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2268 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -252 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA0)
	 (*
          (+ (* 2268 WA0 (expt WA1 3))
             (* -1512 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA1)
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2)
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 3402 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1))
          XA2)
	 (*
          (+
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          XA0 XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 4536 WA0 (expt WA1 3))
               (* -4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* 3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA1)
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2)
           (* -504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA3))
          XB0))
	XB1)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1701 WA0 (expt WA1 3))
             (* 1701 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -189 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XA0)
	 (*
          (+ (* 1701 WA0 (expt WA1 3))
             (* -1134 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* -567 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA2)
	 (* 189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2) XA3))
	(expt XB1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2))
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (*
            (+ (* 1134 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2))
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1))
          XA2)
	 (*
          (+
           (* -126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 XA0 XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1134 WA0 (expt WA1 3))
               (* 1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA0)
           (*
            (+ (* 1134 WA0 (expt WA1 3))
               (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA1)
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2)
           (* 126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              XA3))
          XB0)
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
            WB0 WB1 WB2 XA0)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA2)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA3))
          XB1))
	XB2)
       (*
	(+
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 (expt XA0 2))
	 (*
          (+ (* -54 WA0 (expt WA1 3))
             (* -9 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB3 XA0
          XA1)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1))
          XA2)
	 (* 6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3 XA0
            XA3)
	 (*
          (+
           (*
            (+
             (*
              (+ (* 54 WA0 (expt WA1 3))
		 (* -54 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3 XA0)
           (*
            (+ (* -54 WA0 (expt WA1 3))
               (* 36 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            XA1)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA2)
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              XA3))
          XB0))
	XB3))
      (expt YA3 2)))
    YB0)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2)
	 (* 27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          XA0)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (* 4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 1134 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -252 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 252 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -63 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2)
           (* 3 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -189 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 4536 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -4536 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1134 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -54 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* -54 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -9 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* -81 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA1))
          XA2)
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (*
            (+
             (* -2268 WA0 (expt WA1 3))
             (* 3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 2268 WA0 (expt WA1 3))
               (* -3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* -567 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2)
           (*
            (+ (* 27 WA0 (expt WA1 3))
               (* -36 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2)
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3))
	(expt XA3 3))
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA0 2))
	 (* -1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -4536 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -4536 WA0 (expt WA1 3))
               (* -756 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* 2268 WA0 (expt WA1 3))
               (* -2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 252 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA0 2))
	 (* 1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 4536 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -2268 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -252 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA3 2)))
	XB1)
       (*
	(+
	 (* 63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2
            (expt XA0 2))
	 (* -378 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* 567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1))
          XA2)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -1134 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -1134 WA0 (expt WA1 3))
               (* -189 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1134 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* 567 WA0 (expt WA1 3))
               (* -567 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 63 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XA3 2)))
	XB2)
       (*
	(+
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3
            (expt XA0 2))
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (* -27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 36 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1))
          XA2)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 54 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB3 (expt XA2 2))
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+ (* 54 WA0 (expt WA1 3))
		 (* 9 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB3 XA1)
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
            (expt WB0 2) WB3 XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -27 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -3 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 (expt XA3 2)))
	XB3))
      YA0)
     (*
      (+
       (*
	(+
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2)
	 (* -27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA0 (expt XA1 2))
       (*
	(+
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA1))
	XA2)
       (*
	(+
	 (*
          (+
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2)
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -9 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 6804 WA0 (expt WA1 3))
               (* -2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+
             (* -6804 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 1701 WA0 (expt WA1 3))
               (* -567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2)
           (*
            (+ (* -81 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          XA1)
	 (*
          (+
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 189 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -6804 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -4536 WA0 (expt WA1 3))
               (* -756 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+ (* -2268 WA0 (expt WA1 3))
             (* 1512 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3)
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2))
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* 6804 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+ (* 2268 WA0 (expt WA1 3))
             (* -1512 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1
          (expt XA3 2)))
	XB1)
       (*
	(+
	 (* -189 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA0 2))
	 (* 1134 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* -1701 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (* 3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA2)
	 (* -1701 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -1134 WA0 (expt WA1 3))
               (* -189 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2))
          XA3)
	 (*
          (+ (* -567 WA0 (expt WA1 3))
             (* 378 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2
          (expt XA3 2)))
	XB2)
       (*
	(+
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA0 2))
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          XA2)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2))
          XA3)
	 (*
          (+ (* 27 WA0 (expt WA1 3))
             (* -18 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB3
          (expt XA3 2)))
	XB3))
      YA1)
     (*
      (+
       (*
	(+
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -189 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2)
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA0 2) XA1)
       (*
	(+
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA0 2))
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (* -4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 4536 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -1134 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2)
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -1701 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 81 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2)
             (*
              (+
               (* 81 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -108 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3))
            XA1))
          XA2)
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -567 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2)
           (* 27 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB3))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -9072 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA0)
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* 6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2))
          XA3)
	 (* 756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 9072 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* -6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* 567 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 XA0 XA1)
	 (* 1701 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -2268 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2 XA0)
           (* -3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA2)
	 (* 1701 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1134 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2))
          XA3)
	 (* 189 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA3 2)))
	XB2)
       (*
	(+
	 (*
          (+
           (* -27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB3 (expt XA0 2))
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB3 XA0 XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3 XA0)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          XA2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2))
          XA3)
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA3 2)))
	XB3))
      YA2)
     (*
      (+
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2)
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3))
	(expt XA0 3))
       (*
	(+
	 (* -1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -378 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA0 2) XA1)
       (*
	(+
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 1134 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	XA0 (expt XA1 2))
       (*
	(+
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -1134 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 567 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -27 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 36 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -4536 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 4536 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -1134 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 54 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3))
          XA0)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB3))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 567 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2)
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2)
           (*
            (+
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+
             (* -1134 WA0 (expt WA1 3))
             (* -189 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2)
           (*
            (+ (* 54 WA0 (expt WA1 3))
               (* 9 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3))
          XA0 XA1)
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA0)
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2)
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -252 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 4536 WA0 (expt WA1 3))
               (* -4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* 3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3) XA1)
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA2))
          XA3)
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 252 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -4536 WA0 (expt WA1 3))
               (* 4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* -3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA1)
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2))
          XA3)
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA3 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* -567 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -63 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -1134 WA0 (expt WA1 3))
             (* -189 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB2 XA0 XA1)
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1134 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1))
          XA2)
	 (* -567 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1134 WA0 (expt WA1 3))
               (* -1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -1134 WA0 (expt WA1 3))
             (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA1)
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2))
          XA3)
	 (* -63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2
            (expt XA3 2)))
	XB2)
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
          (expt WB0 2) WB3 (expt XA0 2))
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 54 WA0 (expt WA1 3))
               (* 9 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB3 XA0 XA1)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB3 (expt XA1 2))
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1))
          XA2)
	 (* 27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
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
            (expt WB0 2) WB3 XA0)
           (*
            (+ (* 54 WA0 (expt WA1 3))
               (* -36 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            XA1)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA2))
          XA3)
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3
            (expt XA3 2)))
	XB3))
      YA3))
    (expt YB0 2))
   (*
    (+
     (* -84 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XA0 3))
     (* 756 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3)
	(expt XA0 2) XA1)
     (* -2268 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3) XA0
	(expt XA1 2))
     (* 2268 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XA1 3))
     (*
      (+
       (*
	(+
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 1512 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XA0 2))
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -2268 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) XA0 XA1)
       (* -6804 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XA1 2)))
      XA2)
     (*
      (+
       (*
	(+
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* 4536 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB0 3) XA0)
       (* 6804 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA1))
      (expt XA2 2))
     (* -2268 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XA2 3))
     (*
      (+
       (*
	(+
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -2268 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* 252 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XA0 2))
       (*
	(+
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* 4536 WA0 (expt WA1 3))
             (* 756 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB0 3) XA0 XA1)
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -4536 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB0 3) (expt XA1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -4536 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA1))
	XA2)
       (* 2268 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 2)))
      XA3)
     (*
      (+
       (*
	(+
	 (*
          (+ (* -2268 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* -252 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) XA0)
       (*
	(+ (* 2268 WA0 (expt WA1 3))
	   (* -1512 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB0 3) XA1)
       (* -756 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA2))
      (expt XA3 2))
     (* 84 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XA3 3)))
    (expt YB0 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -3402 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3))
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA1 XA2)
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* 252 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 81 (expt WA0 3)
              (expt WA3 3) (expt WB1 3))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          XA0)
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA1)
	 (*
          (+
           (* 756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 378 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2))
	(expt XA3 3))
       (*
	(+
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA1 XA2)
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* 4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0)
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA2)
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -252 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA1 XA2)
	 (*
          (+
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -162 (expt WA0 3)
		(expt WA3 3) (expt WB1 3)))
            XA0)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA1)
           (*
            (+
             (*
              (+
               (* -3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 243 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3)))
          (expt XA3 2))
	 (*
          (+
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              XA0)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
           (*
            (+
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2)
           (*
            (+
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA3))
          XB0))
	XB1)
       (*
	(+
	 (* 81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3) XA0)
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3) XA1)
	 (*
          (+
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB1 3) XA2)
	 (*
          (+
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -81 (expt WA0 3)
              (expt WA3 3)))
          (expt WB1 3) XA3))
	(expt XB1 2))
       (*
	(+
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2 XA1 XA2)
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2
            (expt XA2 2))
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2))
          XA3)
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 54 (expt WA0 3)
              (expt WA3 3)))
          WB0 WB1 WB2 (expt XA3 2))
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA0)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2)
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XA3))
          XB0))
	XB2))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 10206 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3))
	 (* -1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2))
	XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA0)
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA1)
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          XA2)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 3780 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -2835 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+
             (* -3402 WA0 (expt WA1 3))
             (* -567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -1512 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* 4536 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA2)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA0)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA1))
          XA2)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -2835 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 1215 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA0)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA1)
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1215 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -3402 WA0 (expt WA1 3))
             (* -567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* 1458 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3)))
          (expt XA3 2))
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
           (*
            (+
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2)
           (*
            (+
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 6804 WA0 (expt WA1 3))
               (* 1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA3))
          XB0))
	XB1)
       (*
	(+
	 (* -486 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3) XA0)
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3) XA1)
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB1 3) XA2)
	 (*
          (+
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -1458 WA0 (expt WA1 3))
             (* -243 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB1 3) XA3))
	(expt XB1 2))
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA1 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1))
          XA2)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2
            (expt XA2 2))
	 (*
          (+
           (* 405 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2))
          XA3)
	 (*
          (+ (* 486 WA0 (expt WA1 3))
             (* 81 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 WB1 WB2
          (expt XA3 2))
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 WB1 WB2 XA3))
          XB0))
	XB2))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -10206 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3))
	 (* 1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -10206 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 2187 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0)
	 (*
          (+
           (* -2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 6804 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA2))
          XA3)
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* -6804 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA2)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA0 XA2)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 6804 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2916 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB1 3)))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 2916 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB1 3)))
            XA1)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA2))
          XA3)
	 (*
          (+
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          (expt XA3 2))
	 (*
          (+
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
           (* 10206 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA2)
           (*
            (+
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) XA3))
          XB0))
	XB1)
       (*
	(+
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3) XA0)
	 (* -2187 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3) XA1)
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3) XA2)
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB1 3) XA3))
	(expt XB1 2))
       (*
	(+
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA2)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA2))
          XA3)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA3 2))
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XA3))
          XB0))
	XB2))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA1 2) XA2)
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 9072 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1)
               (* -13608 (expt WA0 2)
		  (expt WA2 3) WA3 WB0
		  (expt WB1 2))
               (* 2916 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB1 3))
               (* 1944 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB1 3))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 15309 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1 XA2)
           (*
            (+
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -9072 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 6804 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA0)
             (*
              (+
               (*
		(+
		 (* 20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -15309 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* 2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA1)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA2))
            XA3)
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -9072 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA2)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA0 XA1)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            (expt XA1 2))
           (*
            (+
             (* 15309 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -6561 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA1 XA2)
           (*
            (+
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 2916 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 6804 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -2916 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 1701 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB1 3)))
              XA0)
             (*
              (+
               (*
		(+
		 (* -15309 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* 6561 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1701 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB1 3)))
              XA1)
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3
		  (expt WB1 3)))
              XA2))
            XA3)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -6804 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (*
              (+
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 13608 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2) XA2)
             (*
              (+
               (*
		(+
		 (* 10206 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -6804 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA0)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA1)
           (*
            (+
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -2916 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB1 3) XA2)
           (*
            (+
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1458 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA3))
          (expt XB1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1 XA2)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA2))
            XA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2 XA2)
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA3))
            XB0))
          XB2))
	YA0)
       (*
	(+
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA1 XA2)
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -4374 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB1 3))
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB1 3))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -15309 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 15309 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1)
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA2))
            XA3)
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            (expt XA0 2))
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA0 XA1)
           (*
            (+
             (* -15309 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 6561 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* 15309 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -6561 WA0 (expt WA1 2)
		  (expt WA2 2) WA3
		  (expt WB1 3)))
              XA1)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3
		  (expt WB1 3)))
              XA2))
            XA3)
           (*
            (+
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1)
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA2)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA0)
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)
              XA1)
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)
              XA2)
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA3))
          (expt XB1 2))
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA1)
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA2)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA2))
            XA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA2)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA3))
            XB0))
          XB2))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* 2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -3402 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3))
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 10206 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -2187 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (* -6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (* -9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 6804 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -4536 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 XA0)
	 (* -6804 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA1)
	 (* 6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA2)
	 (* -2268 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          (expt XA1 2))
	 (*
          (+
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -2916 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2916 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB1 3)))
            XA0)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA1)
           (*
            (+
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 6804 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA0)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1)
           (* -10206 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              XA2)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              XA3))
          XB0))
	XB1)
       (*
	(+
	 (*
          (+
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB1 3) XA0)
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3) XA1)
	 (* 2187 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3) XA2)
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3) XA3))
	(expt XB1 2))
       (*
	(+
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2
            (expt XA0 2))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA1)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2
            (expt XA1 2))
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2 XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XA0)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA2)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA3))
          XB0))
	XB2))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 1458 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 756 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -162 (expt WA0 3)
		(expt WA3 3) (expt WB1 3))
             (* -108 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 4536 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 1458 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB1 3))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 243 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB1 3))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 6804 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -1458 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB1 3))
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -756 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 162 (expt WA0 3)
              (expt WA3 3) (expt WB1 3))
           (* 108 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -3780 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 2835 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -6804 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 9072 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -5292 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -6804 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 3969 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -9072 WA0 (expt WA1 3))
		 (* 5292 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* 6804 WA0 (expt WA1 3))
		 (* -3969 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 WB1 WB2))
              XA1)
             (*
              (+
               (* 3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA2))
            XA3)
           (*
            (+
             (* -504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -4536 WA0 (expt WA1 3))
               (* -756 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (*
              (+
               (* 4536 WA0 (expt WA1 3))
               (* -4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* 162 (expt WA0 3)
		(expt WA3 3) (expt WB1 3)))
            (expt XA0 2))
           (*
            (+
             (* 2835 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -1215 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -6804 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2916 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB1 3)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -6804 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 3969 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 2916 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -1701 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2916 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB1 3)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 6804 WA0 (expt WA1 3))
		 (* -3969 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* -2916 WA0 (expt WA1 3))
		 (* 1701 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB1 3)))
              XA1)
             (*
              (+
               (* -2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 1215 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB1 3)))
              XA2))
            XA3)
           (*
            (+
             (* 378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -162 (expt WA0 3)
		(expt WA3 3) (expt WB1 3)))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 6804 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -6804 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 756 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 6804 WA0 (expt WA1 3))
		 (* 1134 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (*
              (+
               (*
		(+
		 (* 10206 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -6804 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA2)
             (*
              (+
               (*
		(+
		 (* -6804 WA0 (expt WA1 3))
		 (* 6804 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -756 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2) XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1458 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3) XA0)
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -1458 WA0 (expt WA1 3))
               (* -243 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB1 3) XA1)
           (*
            (+
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1458 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA2)
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 3))
               (* -1458 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3) XA3))
          (expt XB1 2))
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA0 2))
           (* -405 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA1 2))
           (*
            (+
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA2)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA1)
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA2))
            XA3)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* -162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2)
             (*
              (+
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -972 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA3))
            XB0))
          XB2))
	YA0)
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 13608 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -2916 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB1 3))
             (* -1944 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 4536 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 1458 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB1 3))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 5292 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 15309 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -15309 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 9072 WA0 (expt WA1 3))
		 (* -5292 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* -6804 WA0 (expt WA1 3))
		 (* 3969 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -4536 WA0 (expt WA1 3))
               (* -756 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* 3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            (expt XA0 2))
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA0 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -2916 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB1 3)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 15309 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -3969 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -6561 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1701 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB1 3)))
              XA0)
             (*
              (+
               (* -15309 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 6561 WA0 (expt WA1 2)
		  (expt WA2 2) WA3
		  (expt WB1 3)))
              XA1))
            XA2)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -6804 WA0 (expt WA1 3))
		 (* 3969 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 (expt WB1 2))
               (*
		(+
		 (* 2916 WA0 (expt WA1 3))
		 (* -1701 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB1 3)))
              XA0)
             (*
              (+
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -243 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB1 3)))
              XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 6804 WA0 (expt WA1 3))
		 (* 1134 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -13608 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA2)
             (*
              (+
               (* 6804 WA0 (expt WA1 3))
               (* -4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)
              XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -1458 WA0 (expt WA1 3))
               (* -243 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB1 3) XA0)
           (*
            (+
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2916 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB1 3) XA1)
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 3))
             (* 972 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3) XA3))
          (expt XB1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* -567 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA0)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* -162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA3))
            XB0))
          XB2))
	YA1)
       (*
	(+
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -756 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -3780 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 756 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2)
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -243 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1215 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA0 XA1)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3
		  (expt WB1 3)))
              XA0)
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3
		  (expt WB1 3)))
              XA1))
            XA2)
           (*
            (+
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB1 3)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 2835 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -1215 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB1 3)))
              XA0)
             (*
              (+
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 243 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB1 3)))
              XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 10206 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -6804 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2) XA2)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)
		XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1458 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA0)
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA1)
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)
              XA2)
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3) XA3))
          (expt XB1 2))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA0)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA0)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2 XA2)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA3))
            XB0))
          XB2))
	YA2))
      YA3)
     (*
      (+
       (*
	(+
	 (* 252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -378 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* 81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2))
	(expt XA0 3))
       (*
	(+
	 (* -756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 1134 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3))
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2))
	(expt XA0 2) XA1)
       (*
	(+
	 (* 2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2))
	XA0 (expt XA1 2))
       (*
	(+
	 (* -2268 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3))
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (* 2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1))
	XA2)
       (*
	(+
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 378 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2))
	(expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -4536 WA0 (expt WA1 3))
             (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 3402 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2))
          XA0 XA1)
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1))
          XA2)
	 (*
          (+
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 2268 WA0 (expt WA1 3))
               (* -2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 252 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA0)
	 (*
          (+ (* -2268 WA0 (expt WA1 3))
             (* 1512 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 756 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2)
	 (* -252 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (*
            (+ (* 3402 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -1458 WA0 (expt WA1 3))
             (* -243 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA0)
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA1))
          XA2)
	 (*
          (+
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 162 (expt WA0 3)
              (expt WA3 3) (expt WB1 3)))
          XA0 XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 3))
               (* 3402 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA0)
           (*
            (+ (* 3402 WA0 (expt WA1 3))
               (* -2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)
            XA1)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA2)
           (* 378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              XA3))
          XB0))
	XB1)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 729 WA0 (expt WA1 3))
               (* -729 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 81 (expt WA0 3)
              (expt WA3 3)))
          (expt WB1 3) XA0)
	 (*
          (+ (* -729 WA0 (expt WA1 3))
             (* 486 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB1 3) XA1)
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3) XA2)
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3) XA3))
	(expt XB1 2))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -54 (expt WA0 3)
              (expt WA3 3)))
          WB0 WB1 WB2 (expt XA0 2))
	 (*
          (+ (* -486 WA0 (expt WA1 3))
             (* -81 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1))
          XA2)
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2 XA0 XA3)
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
            WB0 WB1 WB2 XA0)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA2)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA3))
          XB0))
	XB2))
      (expt YA3 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* -9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* 504 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -378 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* 1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -9072 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 6804 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -9072 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 6804 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 1134 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA0)
             (*
              (+
               (*
		(+
		 (* -13608 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 9072 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 10206 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -6804 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 972 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -1008 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 756 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2))
            XA0)
           (*
            (+
             (*
              (+
               (* 4536 WA0 (expt WA1 3))
               (* -6048 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* -3402 WA0 (expt WA1 3))
               (* 4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 486 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA2))
          (expt XA3 2))
	 (*
          (+
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          (expt XA3 3))
	 (*
          (+
           (* -504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA0 2))
           (* 3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -9072 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 6048 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1))
            XA2)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 9072 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 9072 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -9072 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 1008 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 9072 WA0 (expt WA1 3))
		 (* 1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (*
		(+
		 (* 13608 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -9072 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -4536 WA0 (expt WA1 3))
               (* 4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 (expt XA3 2)))
          XB0)
	 (*
          (+
           (* 378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              (expt XA0 2))
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2) XA0
              XA1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 6804 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1))
            XA2)
           (*
            (+
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -6804 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2)
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -6804 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 6804 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -756 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -6804 WA0 (expt WA1 3))
		 (* -1134 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (*
              (+
               (*
		(+
		 (* -10206 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 6804 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 3))
               (* -3402 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) (expt XA3 2)))
          XB1)
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1))
            XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* 162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 (expt XA3 2)))
          XB2))
	YA0)
       (*
	(+
	 (*
          (+
           (* -4536 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* -27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 18144 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -13608 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 27216 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -20412 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1134 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2))
               (*
		(+
		 (* 2916 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 3))
               (* 4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* 10206 WA0 (expt WA1 3))
               (* -3402 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            XA1)
           (*
            (+
             (* -1512 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA2))
          (expt XA3 2))
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* -9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 13608 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* -27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* 13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 9072 WA0 (expt WA1 3))
		 (* 1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 27216 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -18144 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2))
            XA3)
           (*
            (+ (* 4536 WA0 (expt WA1 3))
               (* -3024 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA0 2))
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2) XA0
              XA1)
           (* -10206 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1))
            XA2)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -6804 WA0 (expt WA1 3))
		 (* -1134 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 13608 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA2))
            XA3)
           (*
            (+
             (* -3402 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA3 2)))
          XB1)
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* 162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2))
            XA3)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2
            (expt XA3 2)))
          XB2))
	YA1)
       (*
	(+
	 (*
          (+
           (* 1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* -9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 9072 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 13608 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -10206 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -27216 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* 27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 13608 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -18144 (expt WA0 2)
                    (expt WA2 3)))
		WA3 (expt WB0 2) WB1)
               (*
		(+
		 (* -10206 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 13608 (expt WA0 2)
                    (expt WA2 3)))
		WA3 WB0 (expt WB1 2))
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -1944 (expt WA0 2)
                    (expt WA2 3)))
		WA3 WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1 WB2))
              XA1))
            XA2)
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -3402 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2))
            XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 3024 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (* -13608 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -27216 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 18144 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1 XA0)
             (* 27216 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* -13608 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 13608 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -9072 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (* 9072 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1 XA2))
            XA3)
           (* -1512 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) (expt XA0 2))
           (*
            (+
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0 XA1)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 20412 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -13608 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2) XA0)
             (* -20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1))
            XA2)
           (* 10206 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -10206 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 6804 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (* -6804 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2) XA2))
            XA3)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA3 2)))
          XB1)
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2 XA0)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2 XA2))
            XA3)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA3 2)))
          XB2))
	YA2)
       (*
	(+
	 (*
          (+
           (* -504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          (expt XA0 3))
	 (*
          (+
           (* 3024 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -2268 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA0 2) XA1)
	 (*
          (+
           (* -9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          XA0 (expt XA1 2))
	 (*
          (+
           (* 9072 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -6804 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -4536 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 6048 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -9072 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 6804 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 9072 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2))
            XA0)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* -4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 1008 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -756 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 9072 WA0 (expt WA1 3))
               (* 1512 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* -6804 WA0 (expt WA1 3))
               (* -1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2))
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2))
            XA0 XA1)
           (*
            (+
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1 WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA0)
             (*
              (+
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1 WB2))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* -504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 4536 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -4536 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 504 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* -13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 9072 WA0 (expt WA1 3))
               (* 1512 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (*
            (+
             (* 13608 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -9072 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 13608 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -9072 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -13608 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1))
            XA2)
           (* 4536 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -9072 WA0 (expt WA1 3))
		 (* 9072 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -1008 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 9072 WA0 (expt WA1 3))
               (* -6048 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
             (* -3024 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA2))
            XA3)
           (* 504 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) (expt XA0 2))
           (*
            (+
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -6804 WA0 (expt WA1 3))
               (* -1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA0 XA1)
           (*
            (+
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -10206 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 6804 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1))
            XA2)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 6804 WA0 (expt WA1 3))
		 (* -6804 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 756 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -6804 WA0 (expt WA1 3))
               (* 4536 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)
		XA2))
            XA3)
           (* -378 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              (expt XA3 2)))
          XB1)
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
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1))
            XA2)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 972 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA1)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA2))
            XA3)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA3 2)))
          XB2))
	YA3))
      YB0)
     (*
      (+
       (* 252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA0 3))
       (* -2268 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA0 2) XA1)
       (* 6804 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1 XA0
	  (expt XA1 2))
       (* -6804 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 6804 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -4536 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* -20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 6804 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (* 20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* 20412 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -13608 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 XA0)
	 (* -20412 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA1))
	(expt XA2 2))
       (* 6804 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -6804 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 6804 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -756 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* 20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -13608 WA0 (expt WA1 3))
             (* -2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (*
          (+
           (* -20412 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 13608 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -20412 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 13608 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 20412 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -6804 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (* -6804 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 6804 WA0 (expt WA1 3))
               (* -6804 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 756 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA0)
	 (*
          (+ (* -6804 WA0 (expt WA1 3))
             (* 4536 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* 2268 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2))
	(expt XA3 2))
       (* -252 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA3 3)))
      (expt YB0 2)))
    YB1)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (* 3402 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -1458 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3)))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -189 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 81 (expt WA0 3)
              (expt WA3 3) (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 3402 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1458 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB1 3)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -243 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA0)
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3402 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1458 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA1))
          XA2)
	 (*
          (+
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3)))
          XA0)
	 (*
          (+
           (*
            (+
             (* -1701 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* 729 WA0 (expt WA1 3))
               (* -972 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3)))
          XA1)
	 (*
          (+
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* -189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* 81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3)))
	(expt XA3 3))
       (*
	(+
	 (* 189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)
            (expt XA0 2))
	 (* -1134 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0
            XA1)
	 (* 1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 3402 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1))
          XA2)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -3402 (expt WA0 2)
              (expt WA2 3)))
          WA3 WB0 (expt WB1 2) (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -3402 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -3402 WA0 (expt WA1 3))
               (* -567 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 3402 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* 1701 WA0 (expt WA1 3))
               (* -1701 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 189 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3)
            (expt XA0 2))
	 (* 486 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3) XA0 XA1)
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA0)
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA1))
          XA2)
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB1 3) (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1458 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3) XA0)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 1458 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB1 3) XA1)
           (*
            (+
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1458 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -729 WA0 (expt WA1 3))
               (* 729 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -81 (expt WA0 3)
              (expt WA3 3)))
          (expt WB1 3) (expt XA3 2)))
	XB1))
      YA0)
     (*
      (+
       (*
	(+
	 (* 1701 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)))
	XA0 (expt XA1 2))
       (*
	(+
	 (*
          (+
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA0 XA1))
	XA2)
       (*
	(+
	 (*
          (+
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -6804 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2916 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -10206 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2))
             (*
              (+
               (* 4374 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -243 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB1 3)))
            XA0)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 5103 WA0 (expt WA1 3))
               (* -1701 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+
             (* -2187 WA0 (expt WA1 3))
             (* 729 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          XA1)
	 (*
          (+
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* -567 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA0 2))
	 (* 3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA0
            XA1)
	 (* -5103 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (* 10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1))
          XA2)
	 (* -5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -3402 WA0 (expt WA1 3))
               (* -567 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 6804 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2))
          XA3)
	 (*
          (+ (* -1701 WA0 (expt WA1 3))
             (* 1134 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2)
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3)
            (expt XA0 2))
	 (* -1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3) XA0 XA1)
	 (* 2187 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA0)
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)
              XA1))
          XA2)
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 1458 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB1 3) XA0)
           (*
            (+
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2916 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB1 3) XA1)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA2))
          XA3)
	 (*
          (+ (* 729 WA0 (expt WA1 3))
             (* -486 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB1 3)
          (expt XA3 2)))
	XB1))
      YA1)
     (*
      (+
       (*
	(+
	 (* -567 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3)))
	(expt XA0 2) XA1)
       (*
	(+
	 (*
          (+
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (* -3402 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 1458 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3)))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -5103 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 2187 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 6804 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2))
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2916 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB1 3)))
            XA0)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB1 3)))
            XA1))
          XA2)
	 (*
          (+
           (* -1701 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA0)
	 (*
          (+
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3)))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -1134 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (* 5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 10206 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -6804 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA0)
           (* -10206 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1))
          XA2)
	 (* 5103 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 3402 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (* -3402 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              XA2))
          XA3)
	 (* 567 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB1 3) (expt XA0 2))
	 (*
          (+
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB1 3) XA0 XA1)
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB1 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 2916 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB1 3) XA0)
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)
              XA1))
          XA2)
	 (* -2187 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1458 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA0)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA1)
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB1 3)
              XA2))
          XA3)
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3)
            (expt XA3 2)))
	XB1))
      YA2)
     (*
      (+
       (*
	(+
	 (* 189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3)))
	(expt XA0 3))
       (*
	(+
	 (* -1134 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 486 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB1 3)))
	(expt XA0 2) XA1)
       (*
	(+
	 (* 3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)))
	XA0 (expt XA1 2))
       (*
	(+
	 (* -3402 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB1 3)))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 1701 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -2268 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -729 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 3402 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2))
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1458 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -3402 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2))
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 1458 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB1 3)))
          XA0)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB1 3)))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (* 1701 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3)))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2))
           (*
            (+
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3)))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -3402 WA0 (expt WA1 3))
             (* -567 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2))
           (*
            (+ (* 1458 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3)))
          XA0 XA1)
	 (*
          (+
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB1 3)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA0)
           (*
            (+
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB1 3)))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (* 189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3)))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -1701 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 1701 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -189 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -3402 WA0 (expt WA1 3))
             (* -567 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 3402 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 3402 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1))
          XA2)
	 (* -1701 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 3))
               (* -3402 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 378 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -3402 WA0 (expt WA1 3))
             (* 2268 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)
            XA1)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA2))
          XA3)
	 (* -189 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 81 (expt WA0 3)
              (expt WA3 3)))
          (expt WB1 3) (expt XA0 2))
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 1458 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB1 3) XA0 XA1)
	 (*
          (+
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB1 3) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1458 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA0)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB1 3) XA1))
          XA2)
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB1 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 3))
               (* 1458 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -162 (expt WA0 3)
		(expt WA3 3)))
            (expt WB1 3) XA0)
           (*
            (+ (* 1458 WA0 (expt WA1 3))
               (* -972 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB1 3) XA1)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB1 3) XA2))
          XA3)
	 (* 81 (expt WA0 3)
            (expt WA3 3) (expt WB1 3)
            (expt XA3 2)))
	XB1))
      YA3)
     (*
      (+
       (* -189 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2)
	  (expt XA0 3))
       (* 1701 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2)
	  (expt XA0 2) XA1)
       (* -5103 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XA0
	  (expt XA1 2))
       (* 5103 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2)
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* -5103 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 3402 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* 15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -5103 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (* -15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* -15309 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 10206 (expt WA0 2)
              (expt WA2 3)))
          WA3 WB0 (expt WB1 2) XA0)
	 (* 15309 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1))
	(expt XA2 2))
       (* -5103 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
	  (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* 5103 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -5103 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 567 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* -15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* 10206 WA0 (expt WA1 3))
             (* 1701 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (*
          (+
           (* 15309 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -10206 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 15309 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -10206 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -15309 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 5103 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1))
          XA2)
	 (* 5103 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -5103 WA0 (expt WA1 3))
             (* 5103 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -567 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XA0)
	 (*
          (+ (* 5103 WA0 (expt WA1 3))
             (* -3402 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* -1701 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA2))
	(expt XA3 2))
       (* 189 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2)
	  (expt XA3 3)))
      YB0))
    (expt YB1 2))
   (*
    (+
     (* 27 (expt WA0 3)
	(expt WA3 3) (expt WB1 3)
	(expt XA0 3))
     (* -243 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB1 3)
	(expt XA0 2) XA1)
     (* 729 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB1 3) XA0
	(expt XA1 2))
     (* -729 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB1 3)
	(expt XA1 3))
     (*
      (+
       (*
	(+
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -486 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB1 3) (expt XA0 2))
       (*
	(+
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 729 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB1 3) XA0 XA1)
       (* 2187 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB1 3)
	  (expt XA1 2)))
      XA2)
     (*
      (+
       (*
	(+
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* -1458 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB1 3) XA0)
       (* -2187 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB1 3) XA1))
      (expt XA2 2))
     (* 729 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB1 3)
	(expt XA2 3))
     (*
      (+
       (*
	(+
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 729 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* -81 (expt WA0 3)
            (expt WA3 3)))
	(expt WB1 3) (expt XA0 2))
       (*
	(+
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* -1458 WA0 (expt WA1 3))
             (* -243 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB1 3) XA0 XA1)
       (*
	(+
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB1 3) (expt XA1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 1458 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB1 3) XA0)
	 (*
          (+
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB1 3) XA1))
	XA2)
       (* -729 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB1 3)
	  (expt XA2 2)))
      XA3)
     (*
      (+
       (*
	(+
	 (*
          (+ (* 729 WA0 (expt WA1 3))
             (* -729 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* 81 (expt WA0 3)
            (expt WA3 3)))
	(expt WB1 3) XA0)
       (*
	(+ (* -729 WA0 (expt WA1 3))
	   (* 486 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB1 3) XA1)
       (* 243 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB1 3) XA2))
      (expt XA3 2))
     (* -27 (expt WA0 3)
	(expt WA3 3) (expt WB1 3)
	(expt XA3 3)))
    (expt YB1 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -567 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2))
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1))
	WB2 (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA1 XA2)
	 (*
          (+
           (* 567 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* -63 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 XA0)
	 (*
          (+
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA1)
	 (*
          (+
           (* -189 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA2))
	(expt XA3 2))
       (*
	(+
	 (* 63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2 (expt XA3 3))
       (*
	(+
	 (*
          (+
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA1 XA2)
	 (*
          (+
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (*
              (+
               (* -1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2))
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1))
          WB2 (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA0)
	 (* 189 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (*
          (+
           (* -567 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 XA2)
	 (*
          (+
           (* 567 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 63 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 XA3))
	(expt XB0 2))
       (*
	(+
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2 XA1 XA2)
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2
            (expt XA2 2))
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2))
          XA3)
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 54 (expt WA0 3)
              (expt WA3 3)))
          WB0 WB1 WB2 (expt XA3 2))
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA0)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2)
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XA3))
          XB0))
	XB1))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* 1701 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2))
	 (* -1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1))
	WB2 XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA0)
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA1)
	 (*
          (+
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          XA2)
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -945 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 945 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -1134 WA0 (expt WA1 3))
             (* -189 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2))
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1))
          WB2 (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 378 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0)
	 (* -1134 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 XA2)
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 1134 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB2 XA3))
	(expt XB0 2))
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA1 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1))
          XA2)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2
            (expt XA2 2))
	 (*
          (+
           (* 405 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2))
          XA3)
	 (*
          (+ (* 486 WA0 (expt WA1 3))
             (* 81 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 WB1 WB2
          (expt XA3 2))
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA2)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 WB1 WB2 XA3))
          XB0))
	XB1))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* -1701 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2))
	 (* 1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1))
	WB2 XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -1701 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0)
	 (*
          (+
           (* 567 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2268 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA2))
          XA3)
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0)
	 (* 1701 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* -1701 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA2)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB2 XA3))
	(expt XB0 2))
       (*
	(+
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA2)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA2))
          XA3)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA3 2))
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XA3))
          XB0))
	XB1))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA1 2) XA2)
	 (*
          (+
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3) WA3 WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (* 5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1 XA2)
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2268 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA0)
             (*
              (+
               (*
		(+
		 (* -5103 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* 2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA1)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA2))
            XA3)
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 2268 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2 XA2)
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1134 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          (expt XB0 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1 XA2)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA2))
            XA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2 XA2)
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA3))
            XB0))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA1 XA2)
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2))
          XA3)
	 (*
          (+
           (* 567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA2)
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1)
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA2))
            XA3)
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (* -3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* 3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          (expt XB0 2))
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA1)
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA2)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA2))
            XA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA2)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA3))
            XB0))
          XB1))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* -567 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2))
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1))
	WB2 (expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (* 1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -1701 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 1134 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB2 XA0)
	 (* 1701 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA1)
	 (* -1701 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA2)
	 (* 567 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA3))
	(expt XB0 2))
       (*
	(+
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2
            (expt XA0 2))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA1)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 WB1 WB2
            (expt XA1 2))
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2 XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XA0)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1)
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA2)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA3))
          XB0))
	XB1))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          (expt XA2 2))
	 (*
          (+
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* -108 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -1134 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA1))
            XA2))
          XA3)
	 (*
          (+
           (* -126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* 108 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 945 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2268 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1323 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0 XA2)
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2268 WA0 (expt WA1 3))
		 (* -1323 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2))
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 WB1))
              WB2 XA1)
             (*
              (+
               (* -945 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA2))
            XA3)
           (*
            (+
             (* 126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 1134 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1134 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+
             (*
              (+
               (* -1134 WA0 (expt WA1 3))
               (* 1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA3))
          (expt XB0 2))
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA0 2))
           (* -405 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA1 2))
           (*
            (+
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA2)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA1)
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA2))
            XA3)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* -162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2)
             (*
              (+
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -972 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA3))
            XB0))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -1944 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -1134 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 5103 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1323 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* -2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -5103 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -2268 WA0 (expt WA1 3))
		 (* 1323 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2))
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 1134 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+ (* 1134 WA0 (expt WA1 3))
               (* -756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA3))
          (expt XB0 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* -567 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA0)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* -162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA3))
            XB0))
          XB1))
	YA1)
       (*
	(+
	 (*
          (+
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* 189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -945 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 945 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1701 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1134 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -1701 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2)
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA0)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA0)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2 XA2)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA3))
            XB0))
          XB1))
	YA2))
      YA3)
     (*
      (+
       (*
	(+
	 (* -63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2 (expt XA0 3))
       (*
	(+
	 (* 189 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2))
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1))
	WB2 (expt XA0 2) XA1)
       (*
	(+
	 (* -567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2))
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1))
	WB2 XA0 (expt XA1 2))
       (*
	(+
	 (* 567 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2))
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1))
	WB2 (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (* -567 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1))
	XA2)
       (*
	(+
	 (* 63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1))
	WB2 (expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2))
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1))
          WB2 (expt XA0 2))
	 (*
          (+
           (*
            (+ (* 1134 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2))
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1))
          WB2 XA0 XA1)
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 567 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1))
          XA2)
	 (*
          (+
           (* -126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -567 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -63 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 XA0)
	 (*
          (+ (* 567 WA0 (expt WA1 3))
             (* -378 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* -189 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA2)
	 (* 63 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -54 (expt WA0 3)
              (expt WA3 3)))
          WB0 WB1 WB2 (expt XA0 2))
	 (*
          (+ (* -486 WA0 (expt WA1 3))
             (* -81 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1))
          XA2)
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2 XA0 XA3)
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
            WB0 WB1 WB2 XA0)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA2)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2 XA3))
          XB0))
	XB1))
      (expt YA3 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          (expt XA2 2))
	 (*
          (+
           (* 2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -126 (expt WA0 3)
		(expt WA3 3) (expt WB0 2))
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* -378 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2268 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2268 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 378 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA0)
             (*
              (+
               (*
		(+
		 (* 3402 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -2268 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 972 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 252 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2))
             (*
              (+
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1))
            WB2 XA0)
           (*
            (+
             (*
              (+
               (* -1134 WA0 (expt WA1 3))
               (* 1512 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2))
             (*
              (+
               (* 486 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA2))
          (expt XA3 2))
	 (*
          (+
           (* -126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 (expt XA3 3))
	 (*
          (+
           (* 126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              (expt XA0 2))
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 2268 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1))
            XA2)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -2268 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -2268 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 2268 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -252 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -2268 WA0 (expt WA1 3))
		 (* -378 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (*
		(+
		 (* -3402 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 2268 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* 1134 WA0 (expt WA1 3))
               (* -1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 (expt XA3 2)))
          XB0)
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1))
            XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* 162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 (expt XA3 2)))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* 1134 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -4536 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -6804 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 378 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2))
               (*
		(+
		 (* 2916 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 3))
               (* -1134 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 XA1)
           (*
            (+
             (* 378 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA2))
          (expt XA3 2))
	 (*
          (+
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* 2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (* 6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* -3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -2268 WA0 (expt WA1 3))
		 (* -378 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 4536 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA2))
            XA3)
           (*
            (+
             (* -1134 WA0 (expt WA1 3))
             (* 756 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* 162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2))
            XA3)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2
            (expt XA3 2)))
          XB1))
	YA1)
       (*
	(+
	 (*
          (+
           (* -378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* 2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2)))
          XA2)
	 (*
          (+
           (* -2268 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -3402 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -378 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3402 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 4536 (expt WA0 2)
                    (expt WA2 3)))
		WA3 (expt WB0 2))
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -1944 (expt WA0 2)
                    (expt WA2 3)))
		WA3 WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2))
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0 WB1))
              WB2 XA1))
            XA2)
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2))
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1))
            WB2 (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* -1134 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1))
            WB2 XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 1134 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -756 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (* 3402 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 6804 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -4536 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2 XA0)
             (* -6804 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* 3402 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3402 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 2268 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (* -2268 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2 XA2))
            XA3)
           (* 378 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
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
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2 XA0)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2 XA2))
            XA3)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA3 2)))
          XB1))
	YA2)
       (*
	(+
	 (*
          (+
           (* 126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 (expt XA0 3))
	 (*
          (+
           (* -756 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA0 2) XA1)
	 (*
          (+
           (* 2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 XA0 (expt XA1 2))
	 (*
          (+
           (* -2268 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2))
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1))
          WB2 (expt XA1 3))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1134 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2268 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2))
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2268 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2))
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1))
            WB2 XA0)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2))
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1))
            WB2 XA1))
          (expt XA2 2))
	 (*
          (+
           (* 1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1))
          WB2 (expt XA2 3))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -252 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2))
             (*
              (+
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1))
            WB2 (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -2268 WA0 (expt WA1 3))
               (* -378 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2))
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1))
            WB2 XA0 XA1)
           (*
            (+
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2))
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 WB1))
            WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA0)
             (*
              (+
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2))
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 WB1))
              WB2 XA1))
            XA2))
          XA3)
	 (*
          (+
           (* 126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2))
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1))
          WB2 XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -1134 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1134 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -126 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+
             (* 3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -2268 WA0 (expt WA1 3))
               (* -378 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (*
            (+
             (* -3402 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2268 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3402 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 2268 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 378 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 3402 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1134 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1))
            XA2)
           (* -1134 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2268 WA0 (expt WA1 3))
		 (* -2268 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 252 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -2268 WA0 (expt WA1 3))
               (* 1512 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
             (* 756 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA2))
            XA3)
           (* -126 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
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
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1))
            XA2)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 972 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA1)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA2))
            XA3)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA3 2)))
          XB1))
	YA3))
      YB0)
     (*
      (+
       (* -63 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA0 3))
       (* 567 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA0 2) XA1)
       (* -1701 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2 XA0
	  (expt XA1 2))
       (* 1701 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* -1701 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 1134 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 XA0 XA1)
	 (* -5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 3402 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB2 XA0)
	 (* 5103 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA1))
	(expt XA2 2))
       (* -1701 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2
	  (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* 1701 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -1701 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 189 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+
           (* -5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 3402 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB2 XA0 XA1)
	 (*
          (+
           (* 5103 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -3402 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 5103 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -3402 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -5103 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1701 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1))
          XA2)
	 (* 1701 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1701 WA0 (expt WA1 3))
             (* 1701 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -189 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 XA0)
	 (*
          (+ (* 1701 WA0 (expt WA1 3))
             (* -1134 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* -567 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA2))
	(expt XA3 2))
       (* 63 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA3 3)))
      (expt YB0 2))
     (*
      (+
       (*
	(+
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA1 3))
	 (*
          (+
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2 XA0)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1))
          (expt XA2 2))
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2
            (expt XA2 3))
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA0 2))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1))
            XA2)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -108 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XA0)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA1)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA2))
          (expt XA3 2))
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2
            (expt XA3 3))
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1))
            XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* 162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 (expt XA3 2)))
          XB0))
	YA0)
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA0
            (expt XA1 2))
	 (*
          (+
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA1))
          XA2)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1))
          (expt XA2 2))
	 (*
          (+
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1944 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -1458 WA0 (expt WA1 3))
             (* 486 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA2))
          (expt XA3 2))
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* 162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA2))
            XA3)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2
            (expt XA3 2)))
          XB0))
	YA1)
       (*
	(+
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2
            (expt XA0 2) XA1)
	 (*
          (+
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA0 2))
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA0 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2)))
          XA2)
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2 XA0
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2 XA0)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA0)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 WB1 WB2 XA0)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0 WB1 WB2 XA1))
            XA2)
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0 WB1 WB2 XA2))
            XA3)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2
              (expt XA3 2)))
          XB0))
	YA2)
       (*
	(+
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2
            (expt XA0 3))
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2
            (expt XA0 2) XA1)
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA0
            (expt XA1 2))
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XA0)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1))
          (expt XA2 2))
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2
            (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 108 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+ (* 972 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA0 XA1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 WB1 WB2
              (expt XA1 2))
           (*
            (+
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA0)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA1))
            XA2))
          XA3)
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2 XA0
            (expt XA3 2))
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
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -972 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1))
            XA2)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 972 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 WB1 WB2 XA1)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 WB1 WB2 XA2))
            XA3)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 WB1 WB2
              (expt XA3 2)))
          XB0))
	YA3)
       (*
	(+
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2
            (expt XA0 3))
	 (* -486 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 WB1 WB2
            (expt XA0 2) XA1)
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2 XA0
            (expt XA1 2))
	 (* -1458 WA0 (expt WA1 3)
            (expt WA3 2) WB0 WB1 WB2
            (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* 1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1458 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (* 4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -2916 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 WB1 WB2 XA0)
           (* -4374 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 WB1 WB2 XA1))
          (expt XA2 2))
	 (* 1458 (expt WA0 2)
            (expt WA2 3) WA3 WB0 WB1 WB2
            (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -1458 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1458 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -162 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 (expt XA0 2))
           (*
            (+
             (* 4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -2916 WA0 (expt WA1 3))
               (* -486 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 WB1 WB2 XA0 XA1)
           (*
            (+
             (* -4374 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2916 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 WB1 WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -4374 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 2916 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA0)
             (*
              (+
               (* 4374 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1458 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 WB1 WB2 XA1))
            XA2)
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 WB1 WB2
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 3))
               (* -1458 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 162 (expt WA0 3)
		(expt WA3 3)))
            WB0 WB1 WB2 XA0)
           (*
            (+
             (* -1458 WA0 (expt WA1 3))
             (* 972 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 WB1 WB2 XA1)
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 WB1 WB2 XA2))
          (expt XA3 2))
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 WB1 WB2
            (expt XA3 3)))
	YB0))
      YB1))
    YB2)
   (*
    (+
     (*
      (+
       (* 27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB3
	  (expt XA2 3))
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA1
            XA2)
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3 XA0)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA1)
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA2))
	(expt XA3 2))
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XA3 3))
       (*
	(+
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA1
            XA2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              XA0)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (*
            (+
             (* 54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2))
          XA3)
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3 XA0)
	 (* -9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA1)
	 (*
          (+
           (* 27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB3 XA2)
	 (*
          (+
           (* -27 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -3 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 XA3))
	(expt XB0 2)))
      (expt YA0 2))
     (*
      (+
       (* -81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 2) WB3
	  XA1 (expt XA2 2))
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          XA2))
	XA3)
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA0)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA1)
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA2))
	(expt XA3 2))
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          XA2)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (* 45 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -45 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2))
          XA3)
	 (*
          (+ (* 54 WA0 (expt WA1 3))
             (* 9 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB3
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA0)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA1)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB3 XA2)
	 (*
          (+
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -54 WA0 (expt WA1 3))
               (* -9 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB3 XA3))
	(expt XB0 2)))
      YA0 YA1)
     (*
      (+
       (* 81 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 2) WB3
	  XA0 (expt XA2 2))
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA2))
	XA3)
       (*
	(+
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0)
	 (* -27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA1))
	(expt XA3 2))
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA2)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2))
          XA3)
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 27 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA1)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA2)
	 (*
          (+
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB3 XA3))
	(expt XB0 2)))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA1 2) XA2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0 (expt XA2 2))
	 (*
          (+
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3 XA0)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1))
          (expt XA3 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1 XA2)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA2))
            XA3)
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3 XA2)
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
            (expt WB0 2) WB3 XA3))
          (expt XB0 2)))
	YA0)
       (*
	(+
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA1 XA2)
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA0)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2))
          XA3)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA0
            (expt XA3 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA2)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1)
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA2))
            XA3)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
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
            (expt WB0 2) WB3 XA0)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA3))
          (expt XB0 2)))
	YA1))
      YA2)
     (*
      (+
       (* 27 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB3
	  (expt XA0 2) XA2)
       (*
	(+
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA0 2))
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA1)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA1 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0 XA2))
	XA3)
       (*
	(+
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA0 2))
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA0 XA1)
	 (* 81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA1 2))
	 (* -108 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3 XA0)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
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
          WA3 (expt WB0 2) WB3 XA0)
	 (* -81 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA1)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA2)
	 (* -27 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA3))
	(expt XB0 2)))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 3))
	 (*
          (+
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          (expt XA2 2))
	 (* 54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 3))
	 (*
          (+
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              (expt XA0 2))
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA0)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA1))
            XA2))
          XA3)
	 (* 6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3 XA0
            (expt XA3 2))
	 (*
          (+
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              (expt XA0 2))
           (* -45 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (*
            (+
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XA1 2))
           (*
            (+
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -63 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA2)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -108 WA0 (expt WA1 3))
               (* 63 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
             (* 45 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA2))
            XA3)
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -54 WA0 (expt WA1 3))
               (* -9 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB3 XA1)
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
            (expt WB0 2) WB3 XA2)
           (*
            (+
             (*
              (+ (* 54 WA0 (expt WA1 3))
		 (* -54 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3 XA3))
          (expt XB0 2)))
	YA0)
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            (expt XA1 2))
	 (*
          (+
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1))
          XA2)
	 (*
          (+
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          (expt XA2 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* 54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA1 2))
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA2))
          XA3)
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 63 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 108 WA0 (expt WA1 3))
               (* -63 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
             (* -9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA2))
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA2)
           (*
            (+ (* -54 WA0 (expt WA1 3))
               (* 36 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            XA3))
          (expt XB0 2)))
	YA1)
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA0 2) XA1)
	 (*
          (+
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA0 2))
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1)
           (* 81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2)))
          XA2)
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0 (expt XA2 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* -9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
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
            (expt WB0 2) WB3 (expt XA0 2))
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 45 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA1)
           (* -81 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA0)
             (* -81 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (* -45 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA0)
             (* 9 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA1))
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* 81 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1)
           (* -54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA2)
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA3))
          (expt XB0 2)))
	YA2))
      YA3)
     (*
      (+
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XA0 3))
       (* -9 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XA0 2) XA1)
       (* 27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3 XA0
	  (expt XA1 2))
       (* -27 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XA1 3))
       (*
	(+
	 (* -18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA0 2))
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1))
	XA2)
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -6 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 (expt XA0 2))
	 (*
          (+ (* -54 WA0 (expt WA1 3))
             (* -9 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB3 XA0
          XA1)
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 2))
	 (*
          (+
           (* 9 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1))
          XA2)
	 (* 6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3 XA0
            XA3))
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
          (expt WB0 2) WB3 XA0)
	 (*
          (+ (* -27 WA0 (expt WA1 3))
             (* 18 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB3 XA1)
	 (* 9 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA2)
	 (* -3 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3 XA3))
	(expt XB0 2)))
      (expt YA3 2))
     (*
      (+
       (*
	(+
	 (* 54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 3))
	 (*
          (+
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              XA0)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          (expt XA2 2))
	 (* -108 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 3))
	 (*
          (+
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              (expt XA0 2))
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 108 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1))
            XA2)
           (* 108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -12 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3 XA0)
           (*
            (+ (* 54 WA0 (expt WA1 3))
               (* -72 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            XA1)
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA2))
          (expt XA3 2))
	 (* 6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3
            (expt XA3 3))
	 (*
          (+
           (* -6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              (expt XA0 2))
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* -54 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 72 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1))
            XA2)
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 108 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -108 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 12 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 108 WA0 (expt WA1 3))
		 (* 18 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (*
              (+
               (*
		(+
		 (* 162 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -108 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -54 WA0 (expt WA1 3))
               (* 54 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -6 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3 (expt XA3 2)))
          XB0))
	YA0)
       (*
	(+
	 (* -54 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            (expt XA1 2))
	 (*
          (+
           (* 36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1))
          XA2)
	 (*
          (+
           (* -324 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          (expt XA2 2))
	 (*
          (+
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 216 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA1)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 324 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* 54 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            XA0)
           (* 108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA2))
          (expt XA3 2))
	 (*
          (+
           (* 18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA0 2))
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3 XA0
              XA1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (* -324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 108 WA0 (expt WA1 3))
		 (* 18 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* 324 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -216 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA2))
            XA3)
           (*
            (+ (* 54 WA0 (expt WA1 3))
               (* -36 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA3 2)))
          XB0))
	YA1)
       (*
	(+
	 (* 18 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA0 2) XA1)
	 (*
          (+
           (* -108 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA0 2))
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA0 XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2)))
          XA2)
	 (* 108 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XA0 2))
           (*
            (+
             (* -324 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 18 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA1)
           (* 324 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 162 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -216 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB3 XA0)
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA0)
           (* -36 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 36 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XA0 2))
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -324 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 216 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB3 XA0)
             (* 324 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB3 XA1))
            XA2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 162 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -108 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1)
             (* 108 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB3 XA2))
            XA3)
           (* -18 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA3 2)))
          XB0))
	YA2)
       (*
	(+
	 (* -6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3
            (expt XA0 3))
	 (* 36 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA0 2) XA1)
	 (* -108 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3 XA0
            (expt XA1 2))
	 (* 108 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB3
            (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 72 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XA0 2))
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA1)
           (* -162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 108 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB3 XA0)
           (* 162 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB3
              XA1))
          (expt XA2 2))
	 (* -54 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 12 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB3 (expt XA0 2))
           (*
            (+ (* 108 WA0 (expt WA1 3))
               (* 18 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB3 XA0
            XA1)
           (* -108 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB3
              (expt XA1 2))
           (*
            (+
             (* -18 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA0)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA1))
            XA2))
          XA3)
	 (* -6 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB3 XA0
            (expt XA3 2))
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
            (expt WB0 2) WB3 (expt XA0 2))
           (*
            (+
             (* -162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 108 WA0 (expt WA1 3))
               (* 18 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB3 XA0 XA1)
           (*
            (+
             (* 162 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -108 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB3 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 162 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -108 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -18 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* -162 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB3 XA1))
            XA2)
           (* 54 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB3
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -108 WA0 (expt WA1 3))
		 (* 108 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -12 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB3 XA0)
             (*
              (+
               (* 108 WA0 (expt WA1 3))
               (* -72 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB3
              XA1)
             (* -36 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB3
		XA2))
            XA3)
           (* 6 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB3
              (expt XA3 2)))
          XB0))
	YA3))
      YB0)
     (*
      (+
       (* 3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XA0 3))
       (* -27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XA0 2) XA1)
       (* 81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3 XA0
	  (expt XA1 2))
       (* -81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB3
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB3 (expt XA0 2))
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB3 XA0 XA1)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -162 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB3 XA0)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB3
            XA1))
	(expt XA2 2))
       (* 81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB3
	  (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB3 (expt XA0 2))
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB3 XA0 XA1)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB3 (expt XA1 2))
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
            (expt WB0 2) WB3 XA0)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB3 XA1))
          XA2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB3
            (expt XA2 2)))
	XA3)
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
          (expt WB0 2) WB3 XA0)
	 (*
          (+ (* -81 WA0 (expt WA1 3))
             (* 54 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB3 XA1)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB3 XA2))
	(expt XA3 2))
       (* -3 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB3
	  (expt XA3 3)))
      (expt YB0 2)))
    YB3)))

