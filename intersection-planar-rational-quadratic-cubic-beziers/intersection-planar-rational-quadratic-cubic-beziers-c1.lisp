(in-package :direct)

(defun intersection-planar-rational-quadratic-bezier/planar-rational-cubic-bezier-c1
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (declare (ignore xb2 yb2 wb2 xb3 yb3 wb3))
  (LET* ((G401 (EXPT WA0 2))
	 (G402 (EXPT WA2 2))
	 (G403 (EXPT WB0 2))
	 (G405 (* 6 G401 G402 WB0 WB1))
	 (G406 (+ (* -6 G401 G402 G403) G405))
	 (G407 (EXPT XA2 2))
	 (G409 (* 12 G401 G402 G403))
	 (G411 (+ G409 (* -6 G401 G402 WB0 WB1)))
	 (G413 (EXPT XB0 2))
	 (G414 (* -6 G401 G402 G403 G413))
	 (G415 (* -6 G401 G402 WB0 WB1 XA2))
	 (G416 (* 6 G401 G402 WB0 WB1 XB0))
	 (G422 (EXPT WA1 2))
	 (G423 (* 24 WA0 G422 WA2 G403))
	 (G424 (* -24 WA0 G422 WA2 WB0 WB1))
	 (G425 (+ G423 G424))
	 (G427 (* -24 WA0 G422 WA2 G403))
	 (G429 (+ G427 (* 12 WA0 G422 WA2 WB0 WB1)))
	 (G430 (* G429 XA1))
	 (G434 (* 24 WA0 G422 WA2 G403 G413))
	 (G435 (* 12 WA0 G422 WA2 WB0 WB1 XA1))
	 (G436 (* 12 WA0 G422 WA2 WB0 WB1 XA2))
	 (G437 (* -24 WA0 G422 WA2 WB0 WB1 XB0))
	 (G443 (+ G427 (* 24 WA0 G422 WA2 WB0 WB1)))
	 (G446 (+ G423 (* -12 WA0 G422 WA2 WB0 WB1)))
	 (G460 (EXPT XA1 2))
	 (G466 (+ (* -12 G401 G402 G403) G405))
	 (G467 (* G466 XA0))
	 (G469 (+ (* 48 WA0 G422 WA2 G403) G424))
	 (G476 (+ (* -24 WA0 G422 WA2) (* 12 G401 G402)))
	 (G478 (* 6 G401 G402 WB0 WB1 XA0))
	 (G479 (* -24 WA0 G422 WA2 WB0 WB1 XA1))
	 (G483 (+ (* 24 WA0 G422 WA2) (* -12 G401 G402)))
	 (G493 (* 12 WA0 G422 WA2 WB0 WB1 XA0))
	 (G500 (EXPT XA0 2))
	 (G503 (* -6 G401 G402 WB0 WB1 XA0))
	 (G509 (* G446 G460))
	 (G514 (* -24 WA0 G422 WA2 G403 XA1))
	 (G520 (+ (* -12 WA0 G422 WA2) (* 6 G401 G402)))
	 (G522 (+ G503 G435 (* G520 WB0 WB1 XA2)))
	 (G526 (* G429 XA0 XA1))
	 (G535 (+ G493 G479 G436))
	 (G546 (+ (* G520 WB0 WB1 XA0) G435 G415))
	 (G563 (* -12 WA0 G422 WA2 WB0 WB1 G460))
	 (G570 (* 12 WA0 G422 WA2 WB0 WB1 XA0 XA1)))
    (+
     (* (+ (* G406 G407) (* G411 XA2 XB0) G414 (* (+ G415 G416) XB1))
	(EXPT YA0 2))
     (*
      (+ (* G425 XA1 XA2) (* (+ G430 (* G429 XA2)) XB0) G434
	 (* (+ G435 G436 G437) XB1))
      YA0 YA1)
     (*
      (+ (* G443 XA0 XA2) (* (+ (* G446 XA0) (* G446 XA2)) XB0)
	 (* -24 WA0 G422 WA2 G403 G413)
	 (*
          (+ (* -12 WA0 G422 WA2 WB0 WB1 XA0)
             (* -12 WA0 G422 WA2 WB0 WB1 XA2)
             (* 24 WA0 G422 WA2 WB0 WB1 XB0))
          XB1))
      (EXPT YA1 2))
     (*
      (+
       (*
	(+ (* G443 G460) (* (+ G409 (* -12 G401 G402 WB0 WB1)) XA0 XA2)
           (* (+ G467 (* G469 XA1) (* G466 XA2)) XB0)
           (* G476 G403 G413)
           (*
            (+ G478 G479 (* 6 G401 G402 WB0 WB1 XA2)
               (* G483 WB0 WB1 XB0))
            XB1))
	YA0)
       (*
	(+ (* G425 XA0 XA1) (* (+ (* G429 XA0) G430) XB0) G434
           (* (+ G493 G435 G437) XB1))
	YA1))
      YA2)
     (* (+ (* G406 G500) (* G411 XA0 XB0) G414 (* (+ G503 G416) XB1))
	(EXPT YA2 2))
     (*
      (+
       (*
	(+ G509 (* (+ G467 G430) XA2) (* G411 G407)
           (* (+ (* 12 G401 G402 G403 XA0) G514 (* G483 G403 XA2))
              XB0)
           (* G522 XB1))
	YA0)
       (*
	(+ G526 (* (+ (* G469 XA0) G430) XA2)
           (*
            (+ (* -24 WA0 G422 WA2 G403 XA0) (* 48 WA0 G422 WA2 G403 XA1)
               (* -24 WA0 G422 WA2 G403 XA2))
            XB0)
           (* G535 XB1))
	YA1)
       (*
	(+ (* G411 G500) G526 G509 (* G466 XA0 XA2)
           (* (+ (* G483 G403 XA0) G514 (* 12 G401 G402 G403 XA2))
              XB0)
           (* G546 XB1))
	YA2))
      YB0)
     (*
      (+ (* -6 G401 G402 G403 G500) (* 24 WA0 G422 WA2 G403 XA0 XA1)
	 (* -24 WA0 G422 WA2 G403 G460)
	 (* (+ (* G476 G403 XA0) (* 24 WA0 G422 WA2 G403 XA1)) XA2)
	 (* -6 G401 G402 G403 G407))
      (EXPT YB0 2))
     (*
      (+
       (*
	(+ G563 (* (+ G478 G435) XA2) (* -6 G401 G402 WB0 WB1 G407)
           (* G522 XB0))
	YA0)
       (*
	(+ G570 (* (+ (* -24 WA0 G422 WA2 WB0 WB1 XA0) G435) XA2)
           (* G535 XB0))
	YA1)
       (*
	(+ (* -6 G401 G402 WB0 WB1 G500) G570 G563
           (* 6 G401 G402 WB0 WB1 XA0 XA2) (* G546 XB0))
	YA2)
       (*
	(+ (* 6 G401 G402 WB0 WB1 G500)
           (* -24 WA0 G422 WA2 WB0 WB1 XA0 XA1)
           (* 24 WA0 G422 WA2 WB0 WB1 G460)
           (* (+ (* G483 WB0 WB1 XA0) G479) XA2)
           (* 6 G401 G402 WB0 WB1 G407))
	YB0))
      YB1))))
