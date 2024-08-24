(in-package :direct)

(defun intersection-ray/planar-rational-quadratic-bezier-c0
    (xa0 ya0 xa1 ya1 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
  (declare (ignore xb1 yb1 wb1 xb2 yb2 wb2))
  (+ (* (+ (* WB0 XA1) (* -1 WB0 XB0)) YA0)
     (* (+ (* -1 WB0 XA0) (* WB0 XB0)) YA1)
     (* (+ (* WB0 XA0) (* -1 WB0 XA1)) YB0)))
  
(defun intersection-ray/planar-rational-quadratic-bezier-c1
    (xa0 ya0 xa1 ya1 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
  (declare (ignore xb2 yb2 wb2))
  (+ (* (+ (* (+ (* -2 WB0) (* 2 WB1)) XA1) (* 2 WB0 XB0) (* -2 WB1 XB1)) YA0)
     (* (+ (* (+ (* 2 WB0) (* -2 WB1)) XA0) (* -2 WB0 XB0) (* 2 WB1 XB1)) YA1)
     (* (+ (* -2 WB0 XA0) (* 2 WB0 XA1)) YB0)
     (* (+ (* 2 WB1 XA0) (* -2 WB1 XA1)) YB1)))

(defun intersection-ray/planar-rational-quadratic-bezier-c2
    (xa0 ya0 xa1 ya1 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
  (+
   (*
    (+ (* (+ WB0 (* -2 WB1) WB2) XA1) (* -1 WB0 XB0) (* 2 WB1 XB1)
       (* -1 WB2 XB2))
    YA0)
   (*
    (+ (* (+ (* -1 WB0) (* 2 WB1) (* -1 WB2)) XA0) (* WB0 XB0) (* -2 WB1 XB1)
       (* WB2 XB2))
    YA1)
   (* (+ (* WB0 XA0) (* -1 WB0 XA1)) YB0)
   (* (+ (* -2 WB1 XA0) (* 2 WB1 XA1)) YB1)
   (* (+ (* WB2 XA0) (* -1 WB2 XA1)) YB2)))

