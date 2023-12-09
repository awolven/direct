(in-package :direct)


(defun rational-cubic-bezier/cubic-bezier-c2
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (+
   (*
    (+
     (*
      (+
       (* 36 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -72 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* 27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2))
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2))
      (expt XA3 3))
     (*
      (+
       (* -108 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 144 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* -27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2))
       (* -18 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2))
      (expt XA3 2) XB0)
     (*
      (+
       (* 108 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -72 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2))
      XA3 (expt XB0 2))
     (* -36 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* 72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)))
	(expt XA3 2))
       (*
	(+
	 (* -144 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)))
	XA3 XB0)
       (* 72 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (* 27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2) XA3)
       (* -27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (*
      (+
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA3 2))
       (* 18 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2 XA3
	  XB0)
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XB0 2)))
      XB2))
    (expt YA0 3))
   (*
    (+
     (*
      (+
       (* -324 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3))
       (* 648 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1)
       (* -243 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2))
       (* -81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB2))
      XA2 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* 648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -864 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 108 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	XA2 XA3)
       (*
	(+
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -432 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* -324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 216 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	XA2)
       (*
	(+
	 (* -648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 432 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	XA3))
      (expt XB0 2))
     (* 324 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* -432 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)))
	XA2 XA3)
       (*
	(+
	 (* -216 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA2)
	 (*
          (+
           (* 864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA3))
	XB0)
       (* -648 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (* -81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2) XA2)
       (* -162 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2) XA3)
       (* 243 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (*
      (+
       (* 54 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB2 XA2
	  XA3)
       (* 27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA3 2))
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA2)
	 (* -108 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA3))
	XB0)
       (* 81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XB0 2)))
      XB2))
    (expt YA0 2) YA1)
   (*
    (+
     (*
      (+
       (* 972 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3))
       (* -1944 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1)
       (* 729 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2))
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2))
      XA1 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* -1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 2592 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA1 XA3)
       (*
	(+
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA1)
       (*
	(+
	 (* 1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA3))
      (expt XB0 2))
     (* -972 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* 1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)))
	XA1 XA3)
       (*
	(+
	 (* 648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA1)
	 (*
          (+
           (* -2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA3))
	XB0)
       (* 1944 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XA1)
       (* 486 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XA3)
       (* -729 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (*
      (+
       (* -162 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2 XA1
	  XA3)
       (* -81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA3 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* 324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA3))
	XB0)
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XB0 2)))
      XB2))
    YA0 (expt YA1 2))
   (*
    (+
     (*
      (+
       (* -972 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 3))
       (* 1944 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1)
       (* -729 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2))
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2))
      XA0 (expt XA3 2))
     (*
      (+
       (*
	(+
	 (* 1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -2592 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA0 XA3)
       (*
	(+
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA3 2)))
      XB0)
     (*
      (+
       (*
	(+
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA0)
       (*
	(+
	 (* -1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA3))
      (expt XB0 2))
     (* 972 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* -1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)))
	XA0 XA3)
       (*
	(+
	 (* -648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0)
	 (*
          (+
           (* 2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA3))
	XB0)
       (* -1944 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XA0)
       (* -486 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XA3)
       (* 729 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (*
      (+
       (* 162 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2 XA0
	  XA3)
       (* 81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA3 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0)
	 (* -324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA3))
	XB0)
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XB0 2)))
      XB2))
    (expt YA1 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	(expt XA2 2) XA3)
       (*
	(+
	 (* -648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 1296 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -486 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	XA1 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1728 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA1)
           (*
            (+
             (* -1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            XA2))
          XA3)
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA2)
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -648 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 864 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 81 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* 648 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 648 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA2)
           (*
            (+
             (*
              (+
               (* -1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1728 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA3))
          XB0)
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -1296 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA2)
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA3)
	 (*
          (+
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2))
          XA3)
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA3 2))
	 (*
          (+
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2)
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          XB0)
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XB0 2)))
	XB2))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2))
	XA1 XA2 XA3)
       (*
	(+
	 (* 972 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -1944 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 729 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA1 XA2)
	 (*
          (+
           (*
            (+
             (* -1944 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 2592 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA2))
          XA3)
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1296 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA2)
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1944 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -972 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA1 XA2)
	 (*
          (+
           (*
            (+
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA2)
           (*
            (+
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2592 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA3))
          XB0)
	 (*
          (+
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 1944 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA2)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA3)
	 (*
          (+
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA1 XA2)
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2))
          XA3)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA3 2))
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          XB0)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XB0 2)))
	XB2))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2))
	XA0 XA2 XA3)
       (*
	(+
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA2)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA3))
	(expt XB0 2))
       (* -2916 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA2)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA3))
          XB0)
	 (* 5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1)
       (*
	(+
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA0)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA2)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA3)
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XB0))
	(expt XB1 2))
       (*
	(+
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA2)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2))
          XA3)
	 (*
          (+
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA3))
          XB0)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XB0 2)))
	XB2))
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
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2))
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 3888 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2))
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* 1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            XA0)
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1)
           (*
            (+
             (* 1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0)
	 (*
          (+
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA1)
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA2)
	 (*
          (+
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -1944 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3))
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 1296 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -162 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* 1944 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* -7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA2)
           (*
            (+
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2)))
            XA3))
          XB0)
	 (*
          (+
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -3888 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA0)
	 (* 1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1)
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA2)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -486 (expt WA0 2)
              (expt WA2 3)))
          WA3 WB0 (expt WB1 2) XA3)
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 1458 (expt WA0 2)
              (expt WA2 3)))
          WA3 WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA1 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0 XA2)
	 (*
          (+
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2))
          XA3)
	 (*
          (+
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA0)
           (* 972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2 XA3))
          XB0)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 486 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB2 (expt XB0 2)))
	XB2))
      YA0)
     (*
      (+
       (*
	(+
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2))
	XA0 XA1 XA3)
       (*
	(+
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA3))
	(expt XB0 2))
       (* 2916 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA3))
          XB0)
	 (* -5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1)
       (*
	(+
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA0)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA3)
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XB0))
	(expt XB1 2))
       (*
	(+
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA1)
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA3)
	 (*
          (+
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA3))
          XB0)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XB0 2)))
	XB2))
      YA1))
    (expt YA2 2))
   (*
    (+
     (*
      (+
       (* 972 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3))
       (* -1944 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1)
       (* 729 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2))
       (* 243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2))
      (expt XA0 2) XA3)
     (*
      (+
       (*
	(+
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 1296 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	(expt XA0 2))
       (*
	(+
	 (* -1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 2592 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	XA0 XA3))
      XB0)
     (*
      (+
       (*
	(+
	 (* 1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -1296 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	XA0)
       (*
	(+
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -648 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	XA3))
      (expt XB0 2))
     (* -972 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* 648 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)))
	(expt XA0 2))
       (*
	(+
	 (* 1296 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)))
	XA0 XA3)
       (*
	(+
	 (*
          (+
           (* -2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0)
	 (*
          (+
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA3))
	XB0)
       (* 1944 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (* 486 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
	  XA0)
       (* 243 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
	  XA3)
       (* -729 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
	  XB0))
      (expt XB1 2))
     (*
      (+
       (* -81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2
	  (expt XA0 2))
       (* -162 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2
	  XA0 XA3)
       (*
	(+
	 (* 324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0)
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA3))
	XB0)
       (* -243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2
	  (expt XB0 2)))
      XB2))
    (expt YA2 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	(expt XA2 3))
       (*
	(+
	 (* 972 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -1944 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 729 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	XA1 XA2 XA3)
       (*
	(+
	 (* -108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 216 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -81 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -27 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2))
	XA0 (expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1296 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA1 XA2)
	 (*
          (+
           (* 2916 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -3888 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 216 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* -288 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* 36 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA1)
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA2))
          XA3)
	 (*
          (+
           (* 108 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 27 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* -108 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 72 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -9 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (*
            (+
             (* -2916 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 1944 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -243 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA2)
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -972 (expt WA0 2) WA1 WA2
            (expt WA3 2))
	 (* 108 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA1 XA2)
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 108 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (* -72 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (*
              (+
               (* 3888 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA2)
           (*
            (+
             (*
              (+
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 288 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2)))
            XA3))
          XB0)
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 1944 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -216 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (* -27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2) XA0)
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (*
          (+
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA2)
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -54 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XA3)
	 (*
          (+
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 81 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA1
            XA2)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2))
          XA3)
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2
            (expt XA3 2))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              XA0)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -36 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA3))
          XB0)
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 27 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XB0 2)))
	XB2))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2))
	XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 3888 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1))
          XA2)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 3888 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -5184 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 648 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2))
            XA1)
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 216 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -3888 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (*
            (+
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA2)
	 (*
          (+
           (*
            (+
             (* -1944 WA0 (expt WA1 3))
             (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 1296 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* 1944 WA0 (expt WA1 3))
             (* 324 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          XA2)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 1944 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 5184 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (*
              (+
               (* -7776 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 432 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA2)
           (*
            (+
             (*
              (+
               (* 2592 WA0 (expt WA1 3))
               (* 432 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)))
            XA3))
          XB0)
	 (*
          (+
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -3888 WA0 (expt WA1 3))
             (* -648 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) XA1)
	 (*
          (+
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA2)
	 (*
          (+ (* -486 WA0 (expt WA1 3))
             (* -81 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA3)
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 1458 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2))
          XA3)
	 (*
          (+
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -648 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+ (* -324 WA0 (expt WA1 3))
               (* -54 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
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
          (expt WB0 2) WB2 (expt XB0 2)))
	XB2))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2))
	XA0 (expt XA2 2))
       (*
	(+
	 (* 1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -3888 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 1458 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA0 XA1 XA3)
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -7776 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA2)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -1944 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2))
            XA1))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1944 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1296 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 162 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA2)
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* -1944 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1296 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 1296 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2592 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* 7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA2)
           (*
            (+
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA3))
          XB0)
	 (*
          (+
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 3888 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) XA0)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* -1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA2)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA3)
	 (*
          (+
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* 486 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* -972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA3))
          XB0)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XB0 2)))
	XB2))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2) XA2)
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -3888 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0 (expt XA2 2))
	 (*
          (+
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1 XA3)
	 (*
          (+
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -3888 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 3))
               (* 5184 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1)
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0
		  (expt WB1 2))
               (* -648 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB2))
              XA0)
             (*
              (+
               (* 5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -7776 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA1))
            XA2)
           (*
            (+
             (* -1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 432 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB2))
              XA0)
             (*
              (+
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 432 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB2))
              XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1944 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 162 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (*
              (+
               (* -5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 3888 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 324 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2))
            XA2)
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -1944 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XB0 3))
	 (*
          (+
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 2592 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1)
               (* -1944 (expt WA0 2)
		  (expt WA2 3) WA3 WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -2592 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -432 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (*
		(+
		 (* 7776 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -432 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -2916 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA1)
             (*
              (+
               (*
		(+
		 (* 3888 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -5184 (expt WA0 2)
                    (expt WA2 3)))
		WA3 (expt WB0 2) WB1)
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 1944 (expt WA0 2)
                    (expt WA2 3)))
		WA3 WB0 (expt WB1 2)))
              XA2)
             (*
              (+
               (* -432 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA3))
            XB0)
           (*
            (+
             (*
              (+
               (* -5832 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 3888 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XB0 2)))
          XB1)
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA2)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA3)
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
            WB0 (expt WB1 2) XB0))
          (expt XB1 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2 XA0)
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA0)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 648 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2 XA2)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
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
            (expt WB0 2) WB2 (expt XB0 2)))
          XB2))
	YA0)
       (*
	(+
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA1 XA2)
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1944 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -729 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA0 2) XA3)
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA0)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA1))
            XA2)
           (*
            (+
             (* 1944 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -2592 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1944 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA2)
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA3))
          (expt XB0 2))
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XB0 3))
	 (*
          (+
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3888 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 2592 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -972 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1)
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA2)
             (*
              (+
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA3))
            XB0)
           (*
            (+
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1944 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XB0 2)))
          XB1)
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA2)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA3)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XB0))
          (expt XB1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA0)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA3)
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1)
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA2)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA3))
            XB0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XB0 2)))
          XB2))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA0 2))
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0 XA2))
	XB0)
       (*
	(+
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0)
	 (*
          (+
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 648 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA2))
	(expt XB0 2))
       (* 972 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* -648 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA2))
          XB0)
	 (* -1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XB0 2)))
	XB1)
       (*
	(+
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA0)
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA2)
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XB0))
	(expt XB1 2))
       (*
	(+
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA0 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0 XA2)
	 (*
          (+
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA0)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2))
          XB0)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XB0 2)))
	XB2))
      (expt YA2 2)))
    YA3)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA1 3))
       (*
	(+
	 (* -972 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 1944 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -729 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	XA0 XA1 XA2)
       (*
	(+
	 (* 108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -216 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 81 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* 27 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2))
	(expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (* -108 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -27 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -1296 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 3888 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -729 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA1))
          XA2)
	 (*
          (+
           (* -216 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* 288 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* -36 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (*
            (+ (* 2916 WA0 (expt WA1 3))
               (* -972 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+
             (* -1944 WA0 (expt WA1 3))
             (* 648 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 243 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA2)
	 (*
          (+
           (* 108 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -72 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 9 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+ (* -972 WA0 (expt WA1 3))
             (* 972 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* -108 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 72 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1))
          XA2)
	 (*
          (+
           (* 144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -108 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          XA0 XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -288 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (*
              (+
               (* -3888 WA0 (expt WA1 3))
               (* 1296 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* 1458 WA0 (expt WA1 3))
               (* -486 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA2)
           (*
            (+
             (* -144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+ (* 1944 WA0 (expt WA1 3))
               (* -1944 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 216 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 54 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XA0)
	 (*
          (+ (* 729 WA0 (expt WA1 3))
             (* -243 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA2)
	 (* 27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2) XA3)
	 (*
          (+
           (*
            (+ (* -729 WA0 (expt WA1 3))
               (* 729 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -81 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2
            (expt XA0 2))
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1))
          XA2)
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA0
            XA3)
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 36 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA0)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2)
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
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
          (expt WB0 2) WB2 (expt XB0 2)))
	XB2))
      YA0)
     (*
      (+
       (*
	(+
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA0 (expt XA1 2))
       (*
	(+
	 (* 648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -1296 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 486 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 243 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (* -1296 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1728 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -216 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA2))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -972 WA0 (expt WA1 3))
               (* 1296 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 648 WA0 (expt WA1 3))
               (* -864 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* -81 WA0 (expt WA1 3))
               (* 108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA2))
	(expt XB0 2))
       (*
	(+ (* 972 WA0 (expt WA1 3))
	   (* -648 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB0 3)
	(expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* -648 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (* 864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1296 WA0 (expt WA1 3))
               (* -1728 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* -864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA2))
          XB0)
	 (*
          (+ (* -1944 WA0 (expt WA1 3))
             (* 1296 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1
          (expt XB0 2)))
	XB1)
       (*
	(+
	 (*
          (+ (* -243 WA0 (expt WA1 3))
             (* 324 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA2)
	 (*
          (+ (* 729 WA0 (expt WA1 3))
             (* -486 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA0 2))
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (* -108 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA2)
	 (*
          (+
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA0)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2))
          XB0)
	 (*
          (+ (* 243 WA0 (expt WA1 3))
             (* -162 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2
          (expt XB0 2)))
	XB2))
      YA1)
     (*
      (+
       (*
	(+
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA0 2) XA1)
       (*
	(+
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1))
	XB0)
       (*
	(+
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -216 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA1))
	(expt XB0 2))
       (* -324 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3)
	  (expt XB0 3))
       (*
	(+
	 (*
          (+
           (* 216 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* -864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1))
          XB0)
	 (* 648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XB0 2)))
	XB1)
       (*
	(+
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XB0))
	(expt XB1 2))
       (*
	(+
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA0 2))
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (*
          (+
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1))
          XB0)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XB0 2)))
	XB2))
      YA2))
    (expt YA3 2))
   (*
    (+
     (*
      (+
       (* -36 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 72 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* -27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2))
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2))
      (expt XA0 3))
     (*
      (+
       (* 108 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* -144 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* 27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2))
       (* 18 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2))
      (expt XA0 2) XB0)
     (*
      (+
       (* -108 (expt WA0 3)
	  (expt WA3 3) (expt WB0 3))
       (* 72 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1)
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2))
      XA0 (expt XB0 2))
     (* 36 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XB0 3))
     (*
      (+
       (*
	(+
	 (* -72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)))
	(expt XA0 2))
       (*
	(+
	 (* 144 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)))
	XA0 XB0)
       (* -72 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XB0 2)))
      XB1)
     (*
      (+
       (* -27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2) XA0)
       (* 27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2) XB0))
      (expt XB1 2))
     (*
      (+
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA0 2))
       (* -18 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2 XA0
	  XB0)
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XB0 2)))
      XB2))
    (expt YA3 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -1296 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1296 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA1 XA2)
	 (*
          (+
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* 108 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 27 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* -108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 144 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2))
	(expt XA3 3))
       (*
	(+
	 (*
          (+
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA1 XA2)
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* 144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -18 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* 1944 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 162 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA0)
	 (* -324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -108 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA1 XA2)
	 (*
          (+
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (*
              (+
               (* -1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2)))
          (expt XA3 2))
	 (*
          (+
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA0)
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 864 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1)
       (*
	(+
	 (* 27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2) XA0)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA2)
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -27 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XA3))
	(expt XB1 2))
       (*
	(+
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA1
            XA2)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2))
          XA3)
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 18 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XA3 2))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              XA0)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA3))
          XB0))
	XB2))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* 3888 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* -486 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2))
	XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1296 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1))
          XA2)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1620 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1080 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1)
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1620 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -135 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* 1944 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+
             (* -1296 WA0 (expt WA1 3))
             (* -216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0)
	 (* 1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA2)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -1944 WA0 (expt WA1 3))
             (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          XA2)
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -1080 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -1296 WA0 (expt WA1 3))
             (* -216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA3 2))
	 (*
          (+
           (* 864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* -2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 2592 WA0 (expt WA1 3))
               (* 432 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1)
       (*
	(+
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA2)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          WB0 (expt WB1 2) XA3))
	(expt XB1 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (* 135 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2))
          XA3)
	 (*
          (+ (* 162 WA0 (expt WA1 3))
             (* 27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2
          (expt XA3 2))
	 (*
          (+
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -324 WA0 (expt WA1 3))
               (* -54 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          XB0))
	XB2))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3))
	 (* -3888 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2))
	 (* 486 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 2916 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -3888 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 729 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -243 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA2)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -3888 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2592 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -324 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 3888 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2))
            XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA2))
          XA3)
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0)
	 (* -2916 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA1)
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA2)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2592 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA3 2))
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA0)
           (* 3888 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          XB0))
	XB1)
       (*
	(+
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* -729 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA2)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) XA3))
	(expt XB1 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2))
          XA3)
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA3 2))
	 (*
          (+
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          XB0))
	XB2))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2) XA2)
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA1)
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 3888 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 3))
               (* -5184 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1)
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3 WB0
		  (expt WB1 2))
               (* 648 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB2))
              XA0)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA1))
            XA2)
           (*
            (+
             (* -1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1728 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            (expt XA1 2))
           (*
            (+
             (* -8748 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1 XA2)
           (*
            (+
             (* 3888 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3888 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 2268 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* 2592 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -324 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 189 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB2))
              XA0)
             (*
              (+
               (*
		(+
		 (* 8748 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -2268 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* -5832 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 729 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -189 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB2))
              XA1)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA2))
            XA3)
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 1944 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -3888 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA2)
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1 XA2)
           (*
            (+
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2592 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (*
		(+
		 (* -5832 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA1)
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA2))
            XA3)
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -2592 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1728 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* -7776 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 5184 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1 XA2)
             (*
              (+
               (*
		(+
		 (* 3888 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -2592 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -432 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA2)
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
            WB0 (expt WB1 2) XA3))
          (expt XB1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1 XA2)
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA2))
            XA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (* 972 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -648 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2 XA2)
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
              (expt WB0 2) WB2 XA3))
            XB0))
          XB2))
	YA0)
       (*
	(+
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA1 XA2)
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* -5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 7776 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* -972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA0)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2))
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 1296 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0 XA1)
           (*
            (+
             (* 8748 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* -8748 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA1)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA2))
            XA3)
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1)
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA2)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* 5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1)
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA2))
            XA3)
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* -7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1)
             (* 7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA2)
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA2)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA3))
          (expt XB1 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA2)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA2))
            XA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1)
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA2)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA3))
            XB0))
          XB2))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -1296 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* -2916 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 3888 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -729 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA0 2))
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2))
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2))
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA0 2))
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA1)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2))
	 (*
          (+
           (* -3888 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 3888 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 324 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1)
           (*
            (+
             (* -1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -1944 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) XA0)
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3) XA1)
	 (* 2916 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA2)
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (* 2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 2592 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* -3888 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2)
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA3))
          XB0))
	XB1)
       (*
	(+
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -486 (expt WA0 2)
              (expt WA2 3)))
          WA3 WB0 (expt WB1 2) XA0)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1)
	 (* 729 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA2)
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA3))
	(expt XB1 2))
       (*
	(+
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA0 2))
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA1)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA1 2))
	 (* -324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2 XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
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
            WA3 (expt WB0 2) WB2 XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA3))
          XB0))
	XB2))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* 1944 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -2592 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* 288 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2))
             (* -36 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA1)
           (*
            (+
             (* 1944 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 324 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -432 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* 54 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB2))
              XA0)
             (*
              (+
               (* -1944 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 2592 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0 (expt WB1 2))
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB2))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* 216 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -288 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2))
           (* 36 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 216 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* -144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 18 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* -1620 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1080 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 3888 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2592 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 324 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 3888 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -2268 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -2592 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -3888 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -324 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3888 WA0 (expt WA1 3))
		 (* 2268 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 3))
               (*
		(+
		 (* 2592 WA0 (expt WA1 3))
		 (* -1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* -324 WA0 (expt WA1 3))
		 (* 189 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2)
		WB2))
              XA1)
             (*
              (+
               (* 1620 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 135 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB2))
              XA2))
            XA3)
           (*
            (+
             (* -216 (expt WA0 3)
		(expt WA3 3) (expt WB0 3))
             (* 144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -18 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB2))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -1944 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1944 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -1944 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2)
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 3))
               (* -1944 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 1080 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2592 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2592 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2592 WA0 (expt WA1 3))
		 (* -1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0
		(expt WB1 2)))
              XA1)
             (*
              (+
               (* -1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA2))
            XA3)
           (*
            (+
             (* 144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 2592 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -2592 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 288 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 2592 WA0 (expt WA1 3))
		 (* 432 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (*
		(+
		 (* 3888 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -2592 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -432 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2)
             (*
              (+
               (*
		(+
		 (* -2592 WA0 (expt WA1 3))
		 (* 2592 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* -288 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA3))
            XB0))
          XB1)
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
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA1)
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
            WB0 (expt WB1 2) XA2)
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 3))
               (* -486 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA3))
          (expt XB1 2))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              (expt XA0 2))
           (* -135 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA1 2))
           (*
            (+
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA2)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA2))
            XA3)
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -324 WA0 (expt WA1 3))
		 (* -54 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB2 XA1)
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
              (expt WB0 2) WB2 XA2)
             (*
              (+
               (*
		(+
		 (* 324 WA0 (expt WA1 3))
		 (* -324 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 36 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB2 XA3))
            XB0))
          XB2))
	YA0)
       (*
	(+
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2))
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 1728 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* -3888 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 5184 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* -648 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA1)
           (*
            (+
             (* 1944 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2))
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA1 2))
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0 XA1)
           (*
            (+
             (* -3888 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 3))
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -8748 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 2268 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 3))
               (*
		(+
		 (* 5832 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -729 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 189 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB2))
              XA0)
             (*
              (+
               (* 8748 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA1))
            XA2)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 3888 WA0 (expt WA1 3))
		 (* -2268 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 3))
               (*
		(+
		 (* -2592 WA0 (expt WA1 3))
		 (* 1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* 324 WA0 (expt WA1 3))
		 (* -189 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2)
		WB2))
              XA0)
             (*
              (+
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -27 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB2))
              XA2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -1944 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 3888 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2)
           (*
            (+
             (* -1944 WA0 (expt WA1 3))
             (* 1296 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 5832 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (* -5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -2592 WA0 (expt WA1 3))
		 (* 1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0
		(expt WB1 2)))
              XA0)
             (*
              (+
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 2592 WA0 (expt WA1 3))
		 (* 432 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 7776 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -5184 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2)
             (*
              (+
               (* 2592 WA0 (expt WA1 3))
               (* -1728 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA3))
            XB0))
          XB1)
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
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)
            XA3))
          (expt XB1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 324 WA0 (expt WA1 3))
               (* -189 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 648 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA2)
             (*
              (+
               (* -324 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB2
              XA3))
            XB0))
          XB2))
	YA1)
       (*
	(+
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* 1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2))
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            (expt XA0 2))
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA0 XA1)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2))
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2))
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2))
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0 XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1944 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -162 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1620 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 135 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA0 XA1)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA0)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 3))
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB2))
              XA1))
            XA2)
           (*
            (+
             (* 1944 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 3))
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -1620 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* 1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -135 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB2))
              XA0)
             (*
              (+
               (* 324 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 3))
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 27 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2)
		  WB2))
              XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2)
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA3))
          (expt XB0 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA1))
            XA3)
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 3888 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -2592 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* -432 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1 XA2)
             (* -864 (expt WA0 2) WA1 WA2
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
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 486 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              XA2)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA3))
          (expt XB1 2))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA0)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA0)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (* -324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2 XA2)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA3))
            XB0))
          XB2))
	YA2))
      YA3)
     (*
      (+
       (*
	(+
	 (* 108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -144 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2))
	(expt XA0 3))
       (*
	(+
	 (* -324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* 432 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA0 2) XA1)
       (*
	(+
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA0 (expt XA1 2))
       (*
	(+
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2))
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -1296 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2))
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1))
	XA2)
       (*
	(+
	 (* -108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 144 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2))
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2))
	(expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -1944 WA0 (expt WA1 3))
             (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 1296 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA1))
          XA2)
	 (*
          (+
           (* 216 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* 972 WA0 (expt WA1 3))
               (* -972 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 108 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) XA0)
	 (*
          (+ (* -972 WA0 (expt WA1 3))
             (* 648 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3) XA1)
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA2)
	 (* -108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3) XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (*
            (+ (* 1296 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1))
          XA2)
	 (*
          (+
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          XA0 XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1296 WA0 (expt WA1 3))
               (* 1296 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+ (* 1296 WA0 (expt WA1 3))
               (* -864 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA1)
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2)
           (* 144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              XA3))
          XB0))
	XB1)
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
          WB0 (expt WB1 2) XA0)
	 (*
          (+ (* -243 WA0 (expt WA1 3))
             (* 162 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA2)
	 (* -27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2) XA3))
	(expt XB1 2))
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -18 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+ (* -162 WA0 (expt WA1 3))
             (* -27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2 XA0
          XA1)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1))
          XA2)
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA0
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
            (expt WB0 2) WB2 XA0)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* 108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA1)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2)
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              XA3))
          XB0))
	XB2))
      (expt YA3 2)))
    YB0)
   (*
    (+
     (*
      (+
       (*
	(+
	 (* 972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          XA0)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (* -1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 1296 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* 108 (expt WA0 3)
              (expt WA3 3) (expt WB0 3))
           (* -72 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 9 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -216 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1944 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1296 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -162 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1944 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -162 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1944 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -243 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA1))
          XA2)
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (*
            (+ (* 972 WA0 (expt WA1 3))
               (* -1296 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* -648 WA0 (expt WA1 3))
               (* 864 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 81 WA0 (expt WA1 3))
               (* -108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* 108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* -72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2))
	(expt XA3 3))
       (*
	(+
	 (* -108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA0 2))
	 (* 648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -1944 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 1944 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 3) (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1944 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1944 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 1944 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -972 WA0 (expt WA1 3))
               (* 972 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -108 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 3) (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA0 2))
	 (* -432 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* 648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -864 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2))
           (* -1296 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -1296 WA0 (expt WA1 3))
               (* -216 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1296 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* 648 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* 72 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA3 2)))
	XB1)
       (*
	(+
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2
            (expt XA0 2))
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1))
          XA2)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 162 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB2 (expt XA2 2))
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA1)
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
            (expt WB0 2) WB2 XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -81 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XA3 2)))
	XB2))
      YA0)
     (*
      (+
       (*
	(+
	 (* -972 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA0 (expt XA1 2))
       (*
	(+
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA1))
	XA2)
       (*
	(+
	 (*
          (+
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (*
          (+
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 3888 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 3))
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -27 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 3))
             (* 972 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+ (* 1944 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* -243 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* 1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          XA1)
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 216 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA0 2))
	 (* -1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3) XA0 XA1)
	 (* 2916 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 1944 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -3888 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA2))
          XA3)
	 (*
          (+ (* 972 WA0 (expt WA1 3))
             (* -648 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 3)
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -216 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA0 2))
	 (* 1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0
            XA1)
	 (* -1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* -1944 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -1296 WA0 (expt WA1 3))
               (* -216 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2))
          XA3)
	 (*
          (+ (* -648 WA0 (expt WA1 3))
             (* 432 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1
          (expt XA3 2)))
	XB1)
       (*
	(+
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA0 2))
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2))
          XA3)
	 (*
          (+ (* 81 WA0 (expt WA1 3))
             (* -54 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2
          (expt XA3 2)))
	XB2))
      YA1)
     (*
      (+
       (*
	(+
	 (* 324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -216 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA0 2) XA1)
       (*
	(+
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA0 2))
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA0 XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (* 1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* -1296 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* 2916 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -1944 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 243 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -3888 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 3))
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 243 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -324 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 3))
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2))
            XA1))
          XA2)
	 (*
          (+
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3))
           (* -648 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 81 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB2))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* 972 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3))
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 3)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 3888 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3) XA0)
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3)
              XA1))
          XA2)
	 (* -2916 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1)
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 3)
              XA2))
          XA3)
	 (* -324 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* 648 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (* 1944 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -2592 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA0)
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1))
          XA2)
	 (* 1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1296 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2))
          XA3)
	 (* 216 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2)))
	XB1)
       (*
	(+
	 (*
          (+
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 XA0 XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2 XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA2)
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2))
          XA3)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA3 2)))
	XB2))
      YA2)
     (*
      (+
       (*
	(+
	 (* -108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2))
	(expt XA0 3))
       (*
	(+
	 (* 648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 3))
	 (* -432 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA0 2) XA1)
       (*
	(+
	 (* -1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* 1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	XA0 (expt XA1 2))
       (*
	(+
	 (* 1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 3))
	 (* -1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* 648 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -864 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -81 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 108 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (*
            (+
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -1944 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3))
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 1944 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 3))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -1296 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 162 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2))
          XA0)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 3))
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB2))
          XA1))
	(expt XA2 2))
       (*
	(+
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3))
	 (* 648 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -972 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3))
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2))
          (expt XA0 2))
	 (*
          (+
           (*
            (+ (* 1944 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3))
           (*
            (+
             (* -1296 WA0 (expt WA1 3))
             (* -216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2))
          XA0 XA1)
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 3))
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA0)
           (*
            (+
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 3))
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (* -108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3))
	 (* 72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2))
	XA0 (expt XA3 2))
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
          (expt WB0 3) (expt XA0 2))
	 (*
          (+
           (* -2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 1944 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 3) XA0 XA1)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 3) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA0)
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 3) XA1))
          XA2)
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 3)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 3))
               (* 1944 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -216 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 3) XA0)
           (*
            (+ (* 1944 WA0 (expt WA1 3))
               (* -1296 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 3) XA1)
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 3) XA2))
          XA3)
	 (* 108 (expt WA0 3)
            (expt WA3 3) (expt WB0 3)
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (*
          (+
           (* -648 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -72 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -1296 WA0 (expt WA1 3))
             (* -216 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1296 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (* -648 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1296 WA0 (expt WA1 3))
               (* -1296 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -1296 WA0 (expt WA1 3))
             (* 864 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA1)
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              XA2))
          XA3)
	 (* -72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1
            (expt XA3 2)))
	XB1)
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
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* 27 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB2 XA0 XA1)
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XA1 2))
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1))
          XA2)
	 (* 81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* -108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA1)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2))
          XA3)
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2
            (expt XA3 2)))
	XB2))
      YA3))
    (expt YB0 2))
   (*
    (+
     (* 36 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XA0 3))
     (* -324 (expt WA0 2) WA1 WA2
	(expt WA3 2) (expt WB0 3)
	(expt XA0 2) XA1)
     (* 972 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3) XA0
	(expt XA1 2))
     (* -972 WA0 (expt WA1 3)
	(expt WA3 2) (expt WB0 3)
	(expt XA1 3))
     (*
      (+
       (*
	(+
	 (* 972 (expt WA0 2)
            (expt WA2 3) WA3)
	 (* -648 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) (expt XA0 2))
       (*
	(+
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 972 (expt WA0 2) WA1 WA2
            (expt WA3 2)))
	(expt WB0 3) XA0 XA1)
       (* 2916 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3)
	  (expt XA1 2)))
      XA2)
     (*
      (+
       (*
	(+
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2))
	 (* -1944 (expt WA0 2)
            (expt WA2 3)))
	WA3 (expt WB0 3) XA0)
       (* -2916 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 3) XA1))
      (expt XA2 2))
     (* 972 (expt WA0 2)
	(expt WA2 3) WA3 (expt WB0 3)
	(expt XA2 3))
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
	(expt WB0 3) (expt XA0 2))
       (*
	(+
	 (* 2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (*
          (+ (* -1944 WA0 (expt WA1 3))
             (* -324 (expt WA0 2) WA1 WA2))
          (expt WA3 2)))
	(expt WB0 3) XA0 XA1)
       (*
	(+
	 (* -2916 WA0 (expt WA1 2)
            (expt WA2 2) WA3)
	 (* 1944 WA0 (expt WA1 3)
            (expt WA3 2)))
	(expt WB0 3) (expt XA1 2))
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 1944 (expt WA0 2)
		(expt WA2 3)))
            WA3)
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA0)
	 (*
          (+
           (* 2916 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -972 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 3) XA1))
	XA2)
       (* -972 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 3)
	  (expt XA2 2)))
      XA3)
     (*
      (+
       (*
	(+
	 (*
          (+ (* 972 WA0 (expt WA1 3))
             (* -972 (expt WA0 2) WA1 WA2))
          (expt WA3 2))
	 (* 108 (expt WA0 3)
            (expt WA3 3)))
	(expt WB0 3) XA0)
       (*
	(+ (* -972 WA0 (expt WA1 3))
	   (* 648 (expt WA0 2) WA1 WA2))
	(expt WA3 2) (expt WB0 3) XA1)
       (* 324 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 3) XA2))
      (expt XA3 2))
     (* -36 (expt WA0 3)
	(expt WA3 3) (expt WB0 3)
	(expt XA3 3)))
    (expt YB0 3))
   (*
    (+
     (*
      (+
       (*
	(+
	 (* -648 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)))
	(expt XA2 3))
       (*
	(+
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA1 XA2)
	 (*
          (+
           (* 648 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* -72 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          XA0)
	 (*
          (+
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA1)
	 (*
          (+
           (* -216 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (* 72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)))
	(expt XA3 3))
       (*
	(+
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA1 XA2)
	 (*
          (+
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (*
              (+
               (* -1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 54 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2)))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA0)
	 (* 216 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (*
          (+
           (* -648 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA2)
	 (*
          (+
           (* 648 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 72 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2))
       (*
	(+
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA1
            XA2)
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2))
          XA3)
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 54 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) (expt XA3 2))
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              XA0)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2)
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA3))
          XB0))
	XB1))
      (expt YA0 2))
     (*
      (+
       (*
	(+
	 (* 1944 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* -1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)))
	XA1 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0)
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA1)
	 (*
          (+
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA2))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          XA2)
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -1080 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -1296 WA0 (expt WA1 3))
             (* -216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 432 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* -1296 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA2)
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 1296 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2))
       (*
	(+
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1))
          XA2)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
	 (*
          (+
           (* 405 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2))
          XA3)
	 (*
          (+ (* 486 WA0 (expt WA1 3))
             (* 81 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2)
          (expt XA3 2))
	 (*
          (+
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA3))
          XB0))
	XB1))
      YA0 YA1)
     (*
      (+
       (*
	(+
	 (* -1944 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1)
	 (* 1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)))
	XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0)
	 (*
          (+
           (* 648 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2592 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA2))
          XA3)
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA0)
	 (* 1944 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* -1944 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA2)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 XA3))
	(expt XB0 2))
       (*
	(+
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA0
            XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA0 XA2)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA2))
          XA3)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA3 2))
	 (*
          (+
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
           (* -1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) XA3))
          XB0))
	XB1))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA1 2) XA2)
	 (*
          (+
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2592 (expt WA0 2)
		  (expt WA2 3) WA3 (expt WB0 2)
		  WB1)
               (* 1944 (expt WA0 2)
		  (expt WA2 3) WA3 WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (* 5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1 XA2)
           (*
            (+
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2592 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (*
		(+
		 (* -5832 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA1)
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA2))
            XA3)
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 864 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 2592 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1 XA2)
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1296 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2) XA0
              XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              (expt XA1 2))
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1 XA2)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA2))
            XA3)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2) XA2)
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
              WB0 (expt WB1 2) XA3))
            XB0))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA1 XA2)
	 (*
          (+
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* 648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* 5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1)
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA2))
            XA3)
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA1)
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              XA2)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2))
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA0 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA0 XA1)
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA0 XA2)
           (*
            (+
             (* -2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA2))
            XA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA3 2))
           (*
            (+
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA2)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA3))
            XB0))
          XB1))
	YA1))
      YA2)
     (*
      (+
       (*
	(+
	 (* -648 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1)
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)))
	(expt XA0 2) XA2)
       (*
	(+
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0 XA2))
	XA3)
       (*
	(+
	 (*
          (+
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (* 1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2)
              WB1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0
              (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (* 2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0 XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1)
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA2))
          XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (* -1944 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 1296 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 XA0)
	 (* 1944 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA1)
	 (* -1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA2)
	 (* 648 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            XA3))
	(expt XB0 2))
       (*
	(+
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA0 2))
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA0 XA1)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA1 2))
	 (* -972 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA0)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1)
           (* 1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              XA2)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
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
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* 144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -108 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -1296 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 108 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 1080 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -2592 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2592 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1512 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0 XA2)
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2592 WA0 (expt WA1 3))
		 (* -1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* 567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0
		(expt WB1 2)))
              XA1)
             (*
              (+
               (* -1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA2))
            XA3)
           (*
            (+
             (* 144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* -54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 1296 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1296 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+
             (*
              (+
               (* -1296 WA0 (expt WA1 3))
               (* 1296 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 XA3))
          (expt XB0 2))
	 (*
          (+
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              (expt XA0 2))
           (* -405 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2) XA0
              XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) (expt XA1 2))
           (*
            (+
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -567 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0 XA2)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2)
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* 567 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)
		XA2))
            XA3)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
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
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -972 WA0 (expt WA1 3))
		 (* -162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 (expt WB1 2) XA1)
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
              WB0 (expt WB1 2) XA2)
             (*
              (+
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -972 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2) XA3))
            XB0))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -1944 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -1296 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 5832 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -1512 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -2187 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 567 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (* -5832 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -2592 WA0 (expt WA1 3))
		 (* 1512 (expt WA0 2) WA1 WA2))
		(expt WA3 2) (expt WB0 2) WB1)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* -567 (expt WA0 2) WA1 WA2))
		(expt WA3 2) WB0
		(expt WB1 2)))
              XA0)
             (*
              (+
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA2))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 1296 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA2)
           (*
            (+ (* 1296 WA0 (expt WA1 3))
               (* -864 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            XA3))
          (expt XB0 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA0 2))
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA0 XA1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2187 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 567 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1))
            XA2)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* -567 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)
		XA2))
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
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA2)
             (*
              (+
               (* -972 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)
              XA3))
            XB0))
          XB1))
	YA1)
       (*
	(+
	 (*
          (+
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -81 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 405 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 1080 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -405 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* -216 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 81 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA1))
            XA3))
          XB0)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1944 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -1296 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -1944 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1)
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              XA2)
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
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
            WB0 (expt WB1 2) (expt XA0 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 405 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0 XA1)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              (expt XA1 2))
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA0)
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1))
            XA2)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              (expt XA2 2))
           (*
            (+
             (* -405 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)
		XA0)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)
		XA1))
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
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2) XA2)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)
		XA3))
            XB0))
          XB1))
	YA2))
      YA3)
     (*
      (+
       (*
	(+
	 (* -72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)))
	(expt XA0 3))
       (*
	(+
	 (* 216 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)))
	(expt XA0 2) XA1)
       (*
	(+
	 (* -648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)))
	XA0 (expt XA1 2))
       (*
	(+
	 (* 648 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB1)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)))
	(expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* -324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (* -648 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1))
	XA2)
       (*
	(+
	 (* 72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1)
	 (* -54 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)))
	(expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1)
           (*
            (+
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2)))
          (expt XA0 2))
	 (*
          (+
           (*
            (+ (* 1296 WA0 (expt WA1 3))
               (* 216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)))
          XA0 XA1)
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -216 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 648 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1))
          XA2)
	 (*
          (+
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          XA0 XA3))
	XB0)
       (*
	(+
	 (*
          (+
           (*
            (+ (* -648 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -72 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA0)
	 (*
          (+ (* 648 WA0 (expt WA1 3))
             (* -432 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* -216 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2)
	 (* 72 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB1 XA3))
	(expt XB0 2))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -54 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+ (* -486 WA0 (expt WA1 3))
             (* -81 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA0
          XA1)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA1))
          XA2)
	 (* 54 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2) XA0
            XA3)
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
            WB0 (expt WB1 2) XA0)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)
            XA1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA2)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              XA3))
          XB0))
	XB1))
      (expt YA3 2))
     (*
      (+
       (*
	(+
	 (*
          (+
           (* -1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* 2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -144 (expt WA0 3)
		(expt WA3 3) (expt WB0 2) WB1)
             (* 54 (expt WA0 3)
		(expt WA3 3) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* -432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2592 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2592 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* 432 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -972 (expt WA0 2)
                    (expt WA2 3) WA3)
		 (* -162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (*
		(+
		 (* 3888 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -2592 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* -1458 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 972 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 288 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (*
              (+
               (* -1296 WA0 (expt WA1 3))
               (* 1728 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* 486 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* 864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA2))
          (expt XA3 2))
	 (*
          (+
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          (expt XA3 3))
	 (*
          (+
           (* 144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
              (expt XA0 2))
           (* -864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 2592 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -1728 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1))
            XA2)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -2592 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB1
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -2592 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 2592 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -288 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -2592 WA0 (expt WA1 3))
		 (* -432 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (*
		(+
		 (* -3888 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 2592 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 432 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2))
            XA3)
           (*
            (+
             (*
              (+
               (* 1296 WA0 (expt WA1 3))
               (* -1296 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 (expt XA3 2)))
          XB0)
	 (*
          (+
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              (expt XA0 2))
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2) XA0
              XA1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1))
            XA2)
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2)
            (expt XA2 2))
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
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 972 WA0 (expt WA1 3))
		 (* 162 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              WB0 (expt WB1 2) XA1)
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
              WB0 (expt WB1 2) XA2))
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
            WB0 (expt WB1 2) (expt XA3 2)))
          XB1))
	YA0)
       (*
	(+
	 (*
          (+
           (* 1296 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1))
          XA2)
	 (*
          (+
           (*
            (+
             (* 7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -5184 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -7776 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* 432 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		(expt WB0 2) WB1)
               (*
		(+
		 (* 2916 WA0 (expt WA1 2)
                    (expt WA2 2) WA3)
		 (* -162 (expt WA0 2) WA1 WA2
                    (expt WA3 2)))
		WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3888 WA0 (expt WA1 3))
               (* -1296 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* -1458 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* 972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1)
           (*
            (+
             (* 432 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA2))
          (expt XA3 2))
	 (*
          (+
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA0 2))
           (* 2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1 XA0
              XA1)
           (* -3888 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (* 7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* -3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* -2592 WA0 (expt WA1 3))
		 (* -432 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -7776 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 5184 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA2))
            XA3)
           (*
            (+
             (* -1296 WA0 (expt WA1 3))
             (* 864 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB1
            (expt XA3 2)))
          XB0)
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA0 2))
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2) XA0
              XA1)
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA0)
             (* -2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1))
            XA2)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
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
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1944 WA0 (expt WA1 3)
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA2))
            XA3)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA3 2)))
          XB1))
	YA1)
       (*
	(+
	 (*
          (+
           (* -432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA0 2) XA1)
	 (*
          (+
           (*
            (+
             (* 2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* -972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (* -2592 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* 972 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -3888 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1458 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* 7776 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -432 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* -7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3888 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 5184 (expt WA0 2)
                    (expt WA2 3)))
		WA3 (expt WB0 2) WB1)
               (*
		(+
		 (* 1458 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* -1944 (expt WA0 2)
                    (expt WA2 3)))
		WA3 WB0 (expt WB1 2)))
              XA0)
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 (expt WB0 2)
		  WB1)
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3 WB0
		  (expt WB1 2)))
              XA1))
            XA2)
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1)
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2)))
            (expt XA2 2)))
          XA3)
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* 864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)))
            XA1))
          (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* 1296 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -864 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (* 3888 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB1
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 7776 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -5184 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1 XA0)
             (* -7776 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1 XA1))
            XA2)
           (* 3888 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3888 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 2592 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 432 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1)
             (* -2592 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB1 XA2))
            XA3)
           (* 432 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1
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
            WB0 (expt WB1 2) (expt XA0 2))
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0 XA1)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -2916 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 1944 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2) XA0)
             (* 2916 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2) XA1))
            XA2)
           (* -1458 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
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
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1)
             (* 972 (expt WA0 2)
		(expt WA2 3) WA3 WB0
		(expt WB1 2) XA2))
            XA3)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              (expt XA3 2)))
          XB1))
	YA2)
       (*
	(+
	 (*
          (+
           (* 144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          (expt XA0 3))
	 (*
          (+
           (* -864 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB1)
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA0 2) XA1)
	 (*
          (+
           (* 2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* -972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          XA0 (expt XA1 2))
	 (*
          (+
           (* -2592 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB1)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2) WB0 (expt WB1 2)))
          (expt XA1 3))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1296 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -1728 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -486 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 648 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 2592 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1)
             (*
              (+
               (* 1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -972 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            (expt XA1 2)))
          XA2)
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -2592 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB1)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 972 (expt WA0 2)
		  (expt WA2 3)))
              WA3 WB0 (expt WB1 2)))
            XA0)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB1)
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3 WB0
		(expt WB1 2)))
            XA1))
          (expt XA2 2))
	 (*
          (+
           (* 1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2)
              WB1)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 WB0
              (expt WB1 2)))
          (expt XA2 3))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* -288 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1)
             (*
              (+
               (* -486 (expt WA0 2) WA1 WA2
		  (expt WA3 2))
               (* 108 (expt WA0 3)
		  (expt WA3 3)))
              WB0 (expt WB1 2)))
            (expt XA0 2))
           (*
            (+
             (*
              (+
               (* -2592 WA0 (expt WA1 3))
               (* -432 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)))
            XA0 XA1)
           (*
            (+
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2) (expt WB0 2) WB1)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2) WB0 (expt WB1 2)))
            (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 432 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA0)
             (*
              (+
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2) (expt WB0 2) WB1)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2) WB0
		  (expt WB1 2)))
              XA1))
            XA2))
          XA3)
	 (*
          (+
           (* 144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1)
           (* -54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)))
          XA0 (expt XA3 2))
	 (*
          (+
           (*
            (+
             (* -1296 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 1296 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* -144 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB1 (expt XA0 2))
           (*
            (+
             (* 3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -2592 WA0 (expt WA1 3))
               (* -432 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB1 XA0 XA1)
           (*
            (+
             (* -3888 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 2592 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB1 (expt XA1 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* -3888 WA0 (expt WA1 2)
                    (expt WA2 2))
		 (* 2592 (expt WA0 2)
                    (expt WA2 3)))
		WA3)
               (* 432 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* 3888 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -1296 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB1 XA1))
            XA2)
           (* -1296 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB1
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (*
		(+
		 (* 2592 WA0 (expt WA1 3))
		 (* -2592 (expt WA0 2) WA1 WA2))
		(expt WA3 2))
               (* 288 (expt WA0 3)
		  (expt WA3 3)))
              (expt WB0 2) WB1 XA0)
             (*
              (+
               (* -2592 WA0 (expt WA1 3))
               (* 1728 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB1
              XA1)
             (* 864 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB1
		XA2))
            XA3)
           (* -144 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB1
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
            WB0 (expt WB1 2) (expt XA0 2))
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA0 XA1)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) (expt XA1 2))
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
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* -1458 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 486 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              WB0 (expt WB1 2) XA1))
            XA2)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
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
              WB0 (expt WB1 2) XA0)
             (*
              (+
               (* 972 WA0 (expt WA1 3))
               (* -648 (expt WA0 2) WA1 WA2))
              (expt WA3 2) WB0 (expt WB1 2)
              XA1)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2) WB0 (expt WB1 2)
		XA2))
            XA3)
           (* 54 (expt WA0 3)
              (expt WA3 3) WB0 (expt WB1 2)
              (expt XA3 2)))
          XB1))
	YA3))
      YB0)
     (*
      (+
       (* -72 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA0 3))
       (* 648 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA0 2) XA1)
       (* -1944 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1 XA0
	  (expt XA1 2))
       (* 1944 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB1
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* -1944 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 1296 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -1944 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (* -5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (*
          (+
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 3888 (expt WA0 2)
              (expt WA2 3)))
          WA3 (expt WB0 2) WB1 XA0)
	 (* 5832 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB1
            XA1))
	(expt XA2 2))
       (* -1944 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB1
	  (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* 1944 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -1944 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 216 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 (expt XA0 2))
	 (*
          (+
           (* -5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 3888 WA0 (expt WA1 3))
               (* 648 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB1 XA0 XA1)
	 (*
          (+
           (* 5832 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -3888 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB1 (expt XA1 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* 5832 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -3888 (expt WA0 2)
		  (expt WA2 3)))
              WA3)
             (* -648 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA0)
           (*
            (+
             (* -5832 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 1944 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB1 XA1))
          XA2)
	 (* 1944 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB1
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (*
            (+
             (* -1944 WA0 (expt WA1 3))
             (* 1944 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -216 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB1 XA0)
	 (*
          (+ (* 1944 WA0 (expt WA1 3))
             (* -1296 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB1 XA1)
	 (* -648 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB1 XA2))
	(expt XA3 2))
       (* 72 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB1
	  (expt XA3 3)))
      (expt YB0 2)))
    YB1)
   (*
    (+
     (*
      (+
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2)
	  (expt XA1 3))
       (*
	(+
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0
            XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA1 2)))
	XA2)
       (*
	(+
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            XA0)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1))
	(expt XA2 2))
       (* -486 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
	  (expt XA2 3))
       (*
	(+
	 (* 27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)
            (expt XA0 2))
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0
            XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 486 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1))
          XA2)
	 (* 486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -54 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) XA0)
	 (*
          (+ (* 243 WA0 (expt WA1 3))
             (* -324 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA2))
	(expt XA3 2))
       (* 27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2)
	  (expt XA3 3))
       (*
	(+
	 (* -27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)
            (expt XA0 2))
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0
            XA1)
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1))
          XA2)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2))
           (* 486 (expt WA0 2)
              (expt WA2 3)))
          WA3 WB0 (expt WB1 2) (expt XA2 2))
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
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            WB0 (expt WB1 2) XA1)
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
            WB0 (expt WB1 2) XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -243 WA0 (expt WA1 3))
               (* 243 (expt WA0 2) WA1 WA2))
            (expt WA3 2))
           (* -27 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) (expt XA3 2)))
	XB0))
      YA0)
     (*
      (+
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XA0
	  (expt XA1 2))
       (*
	(+
	 (* 162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA0 2))
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA0 XA1))
	XA2)
       (*
	(+
	 (* -1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA0)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1))
	(expt XA2 2))
       (*
	(+
	 (* -243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA0 2))
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 972 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1))
          XA2))
	XA3)
       (*
	(+
	 (*
          (+ (* -729 WA0 (expt WA1 3))
             (* 243 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* 486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA2))
	(expt XA3 2))
       (*
	(+
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA0 2))
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2) XA0
            XA1)
	 (* 729 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA0)
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1))
          XA2)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
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
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 1458 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -972 WA0 (expt WA1 3)
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA2))
          XA3)
	 (*
          (+ (* 243 WA0 (expt WA1 3))
             (* -162 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2)
          (expt XA3 2)))
	XB0))
      YA1)
     (*
      (+
       (* 81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2)
	  (expt XA0 2) XA1)
       (*
	(+
	 (* -486 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA0 2))
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA0 XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA1 2)))
	XA2)
       (* 486 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
	  XA0 (expt XA2 2))
       (*
	(+
	 (*
          (+
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* -1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (* 1458 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA0)
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1))
          XA2)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA0)
	 (* -162 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA1))
	(expt XA3 2))
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (*
            (+
             (* -1458 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 972 (expt WA0 2)
		(expt WA2 3)))
            WA3 WB0 (expt WB1 2) XA0)
           (* 1458 WA0 (expt WA1 2)
              (expt WA2 2) WA3 WB0 (expt WB1 2)
              XA1))
          XA2)
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
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
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1)
           (* 486 (expt WA0 2)
              (expt WA2 3) WA3 WB0 (expt WB1 2)
              XA2))
          XA3)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA3 2)))
	XB0))
      YA2)
     (*
      (+
       (* -27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2)
	  (expt XA0 3))
       (* 162 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2)
	  (expt XA0 2) XA1)
       (* -486 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XA0
	  (expt XA1 2))
       (* 486 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2)
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 324 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
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
          WA3 WB0 (expt WB1 2) XA0)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1))
	(expt XA2 2))
       (* -243 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
	  (expt XA2 3))
       (*
	(+
	 (*
          (+
           (* -243 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 54 (expt WA0 3)
              (expt WA3 3)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+ (* 486 WA0 (expt WA1 3))
             (* 81 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA0
          XA1)
	 (* -486 WA0 (expt WA1 3)
            (expt WA3 2) WB0 (expt WB1 2)
            (expt XA1 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA0)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA1))
          XA2))
	XA3)
       (* -27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2) XA0
	  (expt XA3 2))
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
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* 81 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* -486 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA1 2))
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
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1))
          XA2)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (*
              (+
               (* -486 WA0 (expt WA1 3))
               (* 486 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* -54 (expt WA0 3)
		(expt WA3 3)))
            WB0 (expt WB1 2) XA0)
           (*
            (+ (* 486 WA0 (expt WA1 3))
               (* -324 (expt WA0 2) WA1 WA2))
            (expt WA3 2) WB0 (expt WB1 2)
            XA1)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) WB0 (expt WB1 2)
              XA2))
          XA3)
	 (* 27 (expt WA0 3)
            (expt WA3 3) WB0 (expt WB1 2)
            (expt XA3 2)))
	XB0))
      YA3)
     (*
      (+
       (* 27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2)
	  (expt XA0 3))
       (* -243 (expt WA0 2) WA1 WA2
	  (expt WA3 2) WB0 (expt WB1 2)
	  (expt XA0 2) XA1)
       (* 729 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2) XA0
	  (expt XA1 2))
       (* -729 WA0 (expt WA1 3)
	  (expt WA3 2) WB0 (expt WB1 2)
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 729 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -486 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 729 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (* 2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
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
          WA3 WB0 (expt WB1 2) XA0)
	 (* -2187 WA0 (expt WA1 2)
            (expt WA2 2) WA3 WB0 (expt WB1 2)
            XA1))
	(expt XA2 2))
       (* 729 (expt WA0 2)
	  (expt WA2 3) WA3 WB0 (expt WB1 2)
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
          WB0 (expt WB1 2) (expt XA0 2))
	 (*
          (+
           (* 2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+
             (* -1458 WA0 (expt WA1 3))
             (* -243 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          WB0 (expt WB1 2) XA0 XA1)
	 (*
          (+
           (* -2187 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 1458 WA0 (expt WA1 3)
              (expt WA3 2)))
          WB0 (expt WB1 2) (expt XA1 2))
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
            WB0 (expt WB1 2) XA0)
           (*
            (+
             (* 2187 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -729 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            WB0 (expt WB1 2) XA1))
          XA2)
	 (* -729 (expt WA0 2)
            (expt WA2 3) WA3 WB0 (expt WB1 2)
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
          WB0 (expt WB1 2) XA0)
	 (*
          (+ (* -729 WA0 (expt WA1 3))
             (* 486 (expt WA0 2) WA1 WA2))
          (expt WA3 2) WB0 (expt WB1 2) XA1)
	 (* 243 (expt WA0 2) WA1 WA2
            (expt WA3 2) WB0 (expt WB1 2) XA2))
	(expt XA3 2))
       (* -27 (expt WA0 3)
	  (expt WA3 3) WB0 (expt WB1 2)
	  (expt XA3 3)))
      YB0))
    (expt YB1 2))
   (*
    (+
     (*
      (+
       (* 81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2
	  (expt XA2 3))
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA1
            XA2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 2)))
	XA3)
       (*
	(+
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA0)
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA2))
	(expt XA3 2))
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA3 3))
       (*
	(+
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA1
            XA2)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              XA0)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* 162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2))
          XA3)
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* 18 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA0)
	 (* -27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (*
          (+
           (* 81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 XA2)
	 (*
          (+
           (* -81 (expt WA0 2)
              (expt WA2 3) WA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -9 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 XA3))
	(expt XB0 2)))
      (expt YA0 2))
     (*
      (+
       (* -243 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 2) WB2
	  XA1 (expt XA2 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA2))
	XA3)
       (*
	(+
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0)
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA2))
	(expt XA3 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          XA2)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (* 135 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2))
          XA3)
	 (*
          (+ (* 162 WA0 (expt WA1 3))
             (* 27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2
          (expt XA3 2)))
	XB0)
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 XA2)
	 (*
          (+
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB2 XA3))
	(expt XB0 2)))
      YA0 YA1)
     (*
      (+
       (* 243 WA0 (expt WA1 2)
	  (expt WA2 2) WA3 (expt WB0 2) WB2
	  XA0 (expt XA2 2))
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA2))
	XA3)
       (*
	(+
	 (* 243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0)
	 (* -81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA1))
	(expt XA3 2))
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA2)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2))
          XA3)
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA3 2)))
	XB0)
       (*
	(+
	 (* 81 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0)
	 (* -243 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA2)
	 (*
          (+
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB2 XA3))
	(expt XB0 2)))
      (expt YA1 2))
     (*
      (+
       (*
	(+
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA1 2) XA2)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0 (expt XA2 2))
	 (*
          (+
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2 XA0)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1))
          (expt XA3 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1 XA2)
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA2))
            XA3)
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2 XA2)
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
            (expt WB0 2) WB2 XA3))
          (expt XB0 2)))
	YA0)
       (*
	(+
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA1 XA2)
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA0)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2))
          XA3)
	 (* -81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0
            (expt XA3 2))
	 (*
          (+
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1)
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA2)
           (*
            (+
             (* -729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1)
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA2))
            XA3)
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA2)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA3))
          (expt XB0 2)))
	YA1))
      YA2)
     (*
      (+
       (* 81 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2
	  (expt XA0 2) XA2)
       (*
	(+
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA0 2))
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA1)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA1 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0 XA2))
	XA3)
       (*
	(+
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA0 2))
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA0 XA1)
	 (* 243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            (expt XA1 2))
	 (* -324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0 XA2)
	 (*
          (+
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2 XA0)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
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
          WA3 (expt WB0 2) WB2 XA0)
	 (* -243 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA1)
	 (* 243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA2)
	 (* -81 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA3))
	(expt XB0 2)))
      (expt YA2 2))
     (*
      (+
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 3))
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          (expt XA2 2))
	 (* 162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 3))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              (expt XA0 2))
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA0)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA1))
            XA2))
          XA3)
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA0
            (expt XA3 2))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              (expt XA0 2))
           (* -135 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (*
            (+
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA1 2))
           (*
            (+
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -189 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA2)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2))
             (* -324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2
            (expt XA2 2))
           (*
            (+
             (*
              (+
               (* -324 WA0 (expt WA1 3))
               (* 189 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA2))
            XA3)
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* -162 WA0 (expt WA1 3))
               (* -27 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA1)
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
            (expt WB0 2) WB2 XA2)
           (*
            (+
             (*
              (+
               (* 162 WA0 (expt WA1 3))
               (* -162 (expt WA0 2) WA1 WA2))
              (expt WA3 2))
             (* 18 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 XA3))
          (expt XB0 2)))
	YA0)
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            (expt XA1 2))
	 (*
          (+
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1))
          XA2)
	 (*
          (+
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          (expt XA2 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* 162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA2))
          XA3)
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -729 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 189 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (*
              (+
               (* 324 WA0 (expt WA1 3))
               (* -189 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
             (* -27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA2)
           (*
            (+ (* -162 WA0 (expt WA1 3))
               (* 108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA3))
          (expt XB0 2)))
	YA1)
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA0 2) XA1)
	 (*
          (+
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA0 2))
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1)
           (* 243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2)))
          XA2)
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0 (expt XA2 2))
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* -27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
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
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 135 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (* -243 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA0)
             (* -243 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2))
           (*
            (+
             (* -135 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA0)
             (* 27 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 243 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -81 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1)
           (* -162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA2)
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA3))
          (expt XB0 2)))
	YA2))
      YA3)
     (*
      (+
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA0 3))
       (* -27 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA0 2) XA1)
       (* 81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2 XA0
	  (expt XA1 2))
       (* -81 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA1 3))
       (*
	(+
	 (* -54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA0 2))
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1))
	XA2)
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA0 2) XA3)
       (*
	(+
	 (*
          (+
           (* 81 (expt WA0 2) WA1 WA2
              (expt WA3 2))
           (* -18 (expt WA0 3)
              (expt WA3 3)))
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+ (* -162 WA0 (expt WA1 3))
             (* -27 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2 XA0
          XA1)
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 2))
	 (*
          (+
           (* 27 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -81 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA1))
          XA2)
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA0
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
          (expt WB0 2) WB2 XA0)
	 (*
          (+ (* -81 WA0 (expt WA1 3))
             (* 54 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* 27 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA2)
	 (* -9 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA3))
	(expt XB0 2)))
      (expt YA3 2))
     (*
      (+
       (*
	(+
	 (* 162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 3))
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2)))
          XA2)
	 (*
          (+
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          (expt XA2 2))
	 (* -324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 3))
	 (*
          (+
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              (expt XA0 2))
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 324 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1))
            XA2)
           (* 324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
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
            (expt WB0 2) WB2 XA0)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* -216 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA1)
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2))
          (expt XA3 2))
	 (* 18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2
            (expt XA3 3))
	 (*
          (+
           (* -18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              (expt XA0 2))
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* -162 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -324 (expt WA0 2)
		  (expt WA2 3) WA3)
               (* 216 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1))
            XA2)
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2))
             (* 324 (expt WA0 2)
		(expt WA2 3)))
            WA3 (expt WB0 2) WB2
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (*
		(+
		 (* 324 WA0 (expt WA1 3))
		 (* 54 (expt WA0 2) WA1 WA2))
		(expt WA3 2)))
              (expt WB0 2) WB2 XA1)
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
              (expt WB0 2) WB2 XA2))
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
            (expt WB0 2) WB2 (expt XA3 2)))
          XB0))
	YA0)
       (*
	(+
	 (* -162 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            (expt XA1 2))
	 (*
          (+
           (* 108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1))
          XA2)
	 (*
          (+
           (* -972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          (expt XA2 2))
	 (*
          (+
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 648 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -54 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2))
          XA3)
	 (*
          (+
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* 162 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            XA0)
           (* 324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA2))
          (expt XA3 2))
	 (*
          (+
           (* 54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA0 2))
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2 XA0
              XA1)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA0)
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 972 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* -648 WA0 (expt WA1 3)
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA2))
            XA3)
           (*
            (+ (* 162 WA0 (expt WA1 3))
               (* -108 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA3 2)))
          XB0))
	YA1)
       (*
	(+
	 (* 54 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA0 2) XA1)
	 (*
          (+
           (* -324 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA0 2))
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA0 XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2)))
          XA2)
	 (* 324 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            XA0 (expt XA2 2))
	 (*
          (+
           (*
            (+
             (* 486 (expt WA0 2)
		(expt WA2 3) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+
             (* -972 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* 54 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (* 972 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* 486 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* -648 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2 XA0)
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
              (expt XA2 2)))
          XA3)
	 (*
          (+
           (* 162 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              XA0)
           (* -108 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
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
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (*
              (+
               (* -972 WA0 (expt WA1 2)
		  (expt WA2 2))
               (* 648 (expt WA0 2)
		  (expt WA2 3)))
              WA3 (expt WB0 2) WB2 XA0)
             (* 972 WA0 (expt WA1 2)
		(expt WA2 2) WA3 (expt WB0 2)
		WB2 XA1))
            XA2)
           (* -486 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1)
             (* 324 (expt WA0 2)
		(expt WA2 3) WA3 (expt WB0 2)
		WB2 XA2))
            XA3)
           (* -54 (expt WA0 2) WA1 WA2
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA3 2)))
          XB0))
	YA2)
       (*
	(+
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2
            (expt XA0 3))
	 (* 108 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA0 2) XA1)
	 (* -324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2 XA0
            (expt XA1 2))
	 (* 324 WA0 (expt WA1 3)
            (expt WA3 2) (expt WB0 2) WB2
            (expt XA1 3))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2)
		(expt WA2 3) WA3)
             (* 216 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (* -486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
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
            WA3 (expt WB0 2) WB2 XA0)
           (* 486 WA0 (expt WA1 2)
              (expt WA2 2) WA3 (expt WB0 2) WB2
              XA1))
          (expt XA2 2))
	 (* -162 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
            (expt XA2 3))
	 (*
          (+
           (*
            (+
             (* -162 (expt WA0 2) WA1 WA2
		(expt WA3 2))
             (* 36 (expt WA0 3)
		(expt WA3 3)))
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+ (* 324 WA0 (expt WA1 3))
               (* 54 (expt WA0 2) WA1 WA2))
            (expt WA3 2) (expt WB0 2) WB2 XA0
            XA1)
           (* -324 WA0 (expt WA1 3)
              (expt WA3 2) (expt WB0 2) WB2
              (expt XA1 2))
           (*
            (+
             (* -54 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA0)
             (* 162 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA1))
            XA2))
          XA3)
	 (* -18 (expt WA0 3)
            (expt WA3 3) (expt WB0 2) WB2 XA0
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
            (expt WB0 2) WB2 (expt XA0 2))
           (*
            (+
             (* -486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (*
              (+
               (* 324 WA0 (expt WA1 3))
               (* 54 (expt WA0 2) WA1 WA2))
              (expt WA3 2)))
            (expt WB0 2) WB2 XA0 XA1)
           (*
            (+
             (* 486 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -324 WA0 (expt WA1 3)
		(expt WA3 2)))
            (expt WB0 2) WB2 (expt XA1 2))
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* -486 WA0 (expt WA1 2)
		  (expt WA2 2) WA3)
               (* 162 (expt WA0 2) WA1 WA2
		  (expt WA3 2)))
              (expt WB0 2) WB2 XA1))
            XA2)
           (* 162 (expt WA0 2)
              (expt WA2 3) WA3 (expt WB0 2) WB2
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
              (expt WB0 2) WB2 XA0)
             (*
              (+
               (* 324 WA0 (expt WA1 3))
               (* -216 (expt WA0 2) WA1 WA2))
              (expt WA3 2) (expt WB0 2) WB2
              XA1)
             (* -108 (expt WA0 2) WA1 WA2
		(expt WA3 2) (expt WB0 2) WB2
		XA2))
            XA3)
           (* 18 (expt WA0 3)
              (expt WA3 3) (expt WB0 2) WB2
              (expt XA3 2)))
          XB0))
	YA3))
      YB0)
     (*
      (+
       (* 9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA0 3))
       (* -81 (expt WA0 2) WA1 WA2
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA0 2) XA1)
       (* 243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2 XA0
	  (expt XA1 2))
       (* -243 WA0 (expt WA1 3)
	  (expt WA3 2) (expt WB0 2) WB2
	  (expt XA1 3))
       (*
	(+
	 (*
          (+
           (* 243 (expt WA0 2)
              (expt WA2 3) WA3)
           (* -162 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 243 (expt WA0 2) WA1 WA2
              (expt WA3 2)))
          (expt WB0 2) WB2 XA0 XA1)
	 (* 729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
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
          WA3 (expt WB0 2) WB2 XA0)
	 (* -729 WA0 (expt WA1 2)
            (expt WA2 2) WA3 (expt WB0 2) WB2
            XA1))
	(expt XA2 2))
       (* 243 (expt WA0 2)
	  (expt WA2 3) WA3 (expt WB0 2) WB2
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
          (expt WB0 2) WB2 (expt XA0 2))
	 (*
          (+
           (* 729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (*
            (+ (* -486 WA0 (expt WA1 3))
               (* -81 (expt WA0 2) WA1 WA2))
            (expt WA3 2)))
          (expt WB0 2) WB2 XA0 XA1)
	 (*
          (+
           (* -729 WA0 (expt WA1 2)
              (expt WA2 2) WA3)
           (* 486 WA0 (expt WA1 3)
              (expt WA3 2)))
          (expt WB0 2) WB2 (expt XA1 2))
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
            (expt WB0 2) WB2 XA0)
           (*
            (+
             (* 729 WA0 (expt WA1 2)
		(expt WA2 2) WA3)
             (* -243 (expt WA0 2) WA1 WA2
		(expt WA3 2)))
            (expt WB0 2) WB2 XA1))
          XA2)
	 (* -243 (expt WA0 2)
            (expt WA2 3) WA3 (expt WB0 2) WB2
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
          (expt WB0 2) WB2 XA0)
	 (*
          (+ (* -243 WA0 (expt WA1 3))
             (* 162 (expt WA0 2) WA1 WA2))
          (expt WA3 2) (expt WB0 2) WB2 XA1)
	 (* 81 (expt WA0 2) WA1 WA2
            (expt WA3 2) (expt WB0 2) WB2 XA2))
	(expt XA3 2))
       (* -9 (expt WA0 3)
	  (expt WA3 3) (expt WB0 2) WB2
	  (expt XA3 3)))
      (expt YB0 2)))
    YB2)))


