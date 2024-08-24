(in-package :direct)

(defun intersection-ray/planar-rational-cubic-bezier-c0
    (xa0 ya0 xa1 ya1 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (declare (ignore xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3))
  (+ (* (+ (* WB0 XA1) (* -1 WB0 XB0)) YA0)
     (* (+ (* -1 WB0 XA0) (* WB0 XB0)) YA1)
     (* (+ (* WB0 XA0) (* -1 WB0 XA1)) YB0)))

(defun intersection-ray/planar-rational-cubic-bezier-c1
    (xa0 ya0 xa1 ya1 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (declare (ignore xb2 yb2 wb2 xb3 yb3 wb3))
  (+ (* (+ (* (+ (* -3 WB0) (* 3 WB1)) XA1) (* 3 WB0 XB0) (* -3 WB1 XB1)) YA0)
     (* (+ (* (+ (* 3 WB0) (* -3 WB1)) XA0) (* -3 WB0 XB0) (* 3 WB1 XB1)) YA1)
     (* (+ (* -3 WB0 XA0) (* 3 WB0 XA1)) YB0)
     (* (+ (* 3 WB1 XA0) (* -3 WB1 XA1)) YB1)))

(defun intersection-ray/planar-rational-cubic-bezier-c2
    (xa0 ya0 xa1 ya1 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (declare (ignore xb3 yb3 wb3))
  (+
   (*
    (+ (* (+ (* 3 WB0) (* -6 WB1) (* 3 WB2)) XA1) (* -3 WB0 XB0) (* 6 WB1 XB1)
       (* -3 WB2 XB2))
    YA0)
   (*
    (+ (* (+ (* -3 WB0) (* 6 WB1) (* -3 WB2)) XA0) (* 3 WB0 XB0) (* -6 WB1 XB1)
       (* 3 WB2 XB2))
    YA1)
   (* (+ (* 3 WB0 XA0) (* -3 WB0 XA1)) YB0)
   (* (+ (* -6 WB1 XA0) (* 6 WB1 XA1)) YB1)
   (* (+ (* 3 WB2 XA0) (* -3 WB2 XA1)) YB2)))

(defun intersection-ray/planar-rational-cubic-bezier-c3
    (xa0 ya0 xa1 ya1 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (+
   (*
    (+ (* (+ (* -1 WB0) (* 3 WB1) (* -3 WB2) WB3) XA1) (* WB0 XB0)
       (* -3 WB1 XB1) (* 3 WB2 XB2) (* -1 WB3 XB3))
    YA0)
   (*
    (+ (* (+ WB0 (* -3 WB1) (* 3 WB2) (* -1 WB3)) XA0) (* -1 WB0 XB0)
       (* 3 WB1 XB1) (* -3 WB2 XB2) (* WB3 XB3))
    YA1)
   (* (+ (* -1 WB0 XA0) (* WB0 XA1)) YB0)
   (* (+ (* 3 WB1 XA0) (* -3 WB1 XA1)) YB1)
   (* (+ (* -3 WB2 XA0) (* 3 WB2 XA1)) YB2)
   (* (+ (* WB3 XA0) (* -1 WB3 XA1)) YB3)))

