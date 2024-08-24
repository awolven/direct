(in-package :direct)

;; see intersection-planar-rational-quadratic-bezier-line.mac for derivation.

;; computes polynomial who's roots are the intersection in the parameter space of the line.

(defun intersection-planar-rational-quadratic-bezier/line-c0
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 xb1 yb1)
  (declare (ignore xb1 yb1))
  (LET* ((G251 (EXPT WA0 2))
	 (G252 (EXPT WA2 2))
	 (G253 (EXPT XA2 2))
	 (G254 (* G251 G252 G253))
	 (G256 (EXPT XB0 2))
	 (G257 (* G251 G252 G256))
	 (G261 (EXPT WA1 2))
	 (G263 (* 4 WA0 G261 WA2 XA1))
	 (G264 (* 4 WA0 G261 WA2 XA2))
	 (G267 (* -4 WA0 G261 WA2 G256))
	 (G279 (EXPT XA1 2))
	 (G280 (* 4 WA0 G261 WA2 G279))
	 (G282 (* 2 G251 G252 XA0))
	 (G283 (* -8 WA0 G261 WA2 XA1))
	 (G289 (+ (* 4 WA0 G261 WA2) (* -2 G251 G252)))
	 (G293 (* -4 WA0 G261 WA2 XA0 XA1))
	 (G294 (* 4 WA0 G261 WA2 XA0))
	 (G301 (EXPT XA0 2))
	 (G302 (* G251 G252 G301))
	 (G307 (* -4 WA0 G261 WA2 G279))
	 (G314 (+ (* -4 WA0 G261 WA2) (* 2 G251 G252)))
	 (G320 (* 4 WA0 G261 WA2 XA0 XA1)))
    (+ (* (+ G254 (* -2 G251 G252 XA2 XB0) G257) (EXPT YA0 2))
       (* (+ (* -4 WA0 G261 WA2 XA1 XA2) (* (+ G263 G264) XB0) G267) YA0
          YA1)
       (*
	(+ (* 4 WA0 G261 WA2 XA0 XA2)
           (* (+ (* -4 WA0 G261 WA2 XA0) (* -4 WA0 G261 WA2 XA2)) XB0)
           (* 4 WA0 G261 WA2 G256))
	(EXPT YA1 2))
       (*
	(+
	 (*
          (+ G280 (* -2 G251 G252 XA0 XA2)
             (* (+ G282 G283 (* 2 G251 G252 XA2)) XB0) (* G289 G256))
          YA0)
	 (* (+ G293 (* (+ G294 G263) XB0) G267) YA1))
	YA2)
       (* (+ G302 (* -2 G251 G252 XA0 XB0) G257) (EXPT YA2 2))
       (*
	(+
	 (*
          (+ G307 (* (+ G282 G263) XA2) (* -2 G251 G252 G253)
             (* (+ (* -2 G251 G252 XA0) G263 (* G314 XA2)) XB0))
          YA0)
	 (*
          (+ G320 (* (+ (* -8 WA0 G261 WA2 XA0) G263) XA2)
             (* (+ G294 G283 G264) XB0))
          YA1)
	 (*
          (+ (* -2 G251 G252 G301) G320 G307
             (* 2 G251 G252 XA0 XA2)
             (* (+ (* G314 XA0) G263 (* -2 G251 G252 XA2)) XB0))
          YA2))
	YB0)
       (*
	(+ G302 G293 G280
           (* (+ (* G289 XA0) (* -4 WA0 G261 WA2 XA1)) XA2) G254)
	(EXPT YB0 2)))))
  
(defun intersection-planar-rational-quadratic-bezier/line-c1
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 xb1 yb1)
  (LET* ((G373 (EXPT WA0 2))
	 (G374 (EXPT WA2 2))
	 (G376 (EXPT XB0 2))
	 (G377 (* -2 G373 G374 G376))
	 (G378 (* -2 G373 G374 XA2))
	 (G379 (* 2 G373 G374 XB0))
	 (G385 (EXPT WA1 2))
	 (G386 (* -4 WA0 G385 WA2 XA1))
	 (G387 (* -4 WA0 G385 WA2 XA2))
	 (G390 (* 8 WA0 G385 WA2 G376))
	 (G391 (* 4 WA0 G385 WA2 XA1))
	 (G392 (* 4 WA0 G385 WA2 XA2))
	 (G393 (* -8 WA0 G385 WA2 XB0))
	 (G398 (* 4 WA0 G385 WA2 XA0))
	 (G402 (* -4 WA0 G385 WA2 XA0))
	 (G409 (* -2 G373 G374 XA0))
	 (G410 (* 8 WA0 G385 WA2 XA1))
	 (G415 (+ (* -8 WA0 G385 WA2) (* 4 G373 G374)))
	 (G417 (* 2 G373 G374 XA0))
	 (G418 (* -8 WA0 G385 WA2 XA1))
	 (G422 (+ (* 8 WA0 G385 WA2) (* -4 G373 G374)))
	 (G442 (EXPT XA1 2))
	 (G443 (* 4 WA0 G385 WA2 G442))
	 (G446 (EXPT XA2 2))
	 (G447 (* 2 G373 G374 G446))
	 (G454 (+ (* -4 WA0 G385 WA2) (* 2 G373 G374)))
	 (G456 (+ G409 G391 (* G454 XA2)))
	 (G460 (* -4 WA0 G385 WA2 XA0 XA1))
	 (G464 (* -8 WA0 G385 WA2 XA0))
	 (G469 (+ G398 G418 G392))
	 (G473 (EXPT XA0 2))
	 (G474 (* 2 G373 G374 G473))
	 (G476 (* G422 XA0))
	 (G481 (+ (* G454 XA0) G391 G378))
	 (G487 (* -2 G373 G374 G473))
	 (G493 (* -2 G373 G374 G446))
	 (G497 (* -4 WA0 G385 WA2 G442))
	 (G503 (* 4 WA0 G385 WA2 XA0 XA1)))
    (+
     (* (+ (* 2 G373 G374 XA2 XB0) G377 (* (+ G378 G379) XB1))
	(EXPT YA0 2))
     (* (+ (* (+ G386 G387) XB0) G390 (* (+ G391 G392 G393) XB1)) YA0
	YA1)
     (*
      (+ (* (+ G398 G392) XB0) (* -8 WA0 G385 WA2 G376)
	 (* (+ G402 G387 (* 8 WA0 G385 WA2 XB0)) XB1))
      (EXPT YA1 2))
     (*
      (+
       (*
	(+ (* (+ G409 G410 G378) XB0) (* G415 G376)
           (* (+ G417 G418 (* 2 G373 G374 XA2) (* G422 XB0)) XB1))
	YA0)
       (* (+ (* (+ G402 G386) XB0) G390 (* (+ G398 G391 G393) XB1))
          YA1))
      YA2)
     (* (+ (* 2 G373 G374 XA0 XB0) G377 (* (+ G409 G379) XB1))
	(EXPT YA2 2))
     (*
      (+
       (*
	(+ G443 (* (+ G409 G386) XA2) G447
           (* (+ (* 4 G373 G374 XA0) G418 (* G422 XA2)) XB0)
           (* G456 XB1))
	YA0)
       (*
	(+ G460 (* (+ (* 8 WA0 G385 WA2 XA0) G386) XA2)
           (* (+ G464 (* 16 WA0 G385 WA2 XA1) (* -8 WA0 G385 WA2 XA2)) XB0)
           (* G469 XB1))
	YA1)
       (*
	(+ G474 G460 G443 (* -2 G373 G374 XA0 XA2)
           (* (+ G476 G418 (* 4 G373 G374 XA2)) XB0) (* G481 XB1))
	YA2))
      YB0)
     (*
      (+ G487 (* 8 WA0 G385 WA2 XA0 XA1) (* -8 WA0 G385 WA2 G442)
	 (* (+ (* G415 XA0) G410) XA2) G493)
      (EXPT YB0 2))
     (*
      (+ (* (+ G497 (* (+ G417 G391) XA2) G493 (* G456 XB0)) YA0)
	 (* (+ G503 (* (+ G464 G391) XA2) (* G469 XB0)) YA1)
	 (* (+ G487 G503 G497 (* 2 G373 G374 XA0 XA2) (* G481 XB0))
            YA2)
	 (*
          (+ G474 (* -8 WA0 G385 WA2 XA0 XA1) (* 8 WA0 G385 WA2 G442)
             (* (+ G476 G418) XA2) G447)
          YB0))
      YB1))))

(defun intersection-planar-rational-quadratic-bezier/line-c2
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 xb1 yb1)
  (LET* ((G549 (EXPT WA0 2))
	 (G550 (EXPT WA2 2))
	 (G551 (EXPT XB0 2))
	 (G554 (EXPT XB1 2))
	 (G556
           (+ (* G549 G550 G551) (* -2 G549 G550 XB0 XB1)
              (* G549 G550 G554)))
	 (G559 (EXPT WA1 2))
	 (G563
           (+ (* -4 WA0 G559 WA2 G551) (* 8 WA0 G559 WA2 XB0 XB1)
              (* -4 WA0 G559 WA2 G554)))
	 (G573 (+ (* 4 WA0 G559 WA2) (* -2 G549 G550)))
	 (G577 (+ (* -8 WA0 G559 WA2) (* 4 G549 G550)))
	 (G588 (* 4 WA0 G559 WA2 XA1))
	 (G591 (+ (* -4 WA0 G559 WA2) (* 2 G549 G550)))
	 (G593 (+ (* -2 G549 G550 XA0) G588 (* G591 XA2)))
	 (G596 (* -4 WA0 G559 WA2 XA1))
	 (G598 (+ (* 2 G549 G550 XA0) G596 (* G573 XA2)))
	 (G605
           (+ (* 4 WA0 G559 WA2 XA0) (* -8 WA0 G559 WA2 XA1)
              (* 4 WA0 G559 WA2 XA2)))
	 (G608 (* 8 WA0 G559 WA2 XA1))
	 (G610 (+ (* -4 WA0 G559 WA2 XA0) G608 (* -4 WA0 G559 WA2 XA2)))
	 (G616 (+ (* G591 XA0) G588 (* -2 G549 G550 XA2)))
	 (G618 (* G573 XA0))
	 (G620 (+ G618 G596 (* 2 G549 G550 XA2)))
	 (G626 (EXPT XA0 2))
	 (G629 (EXPT XA1 2))
	 (G633 (EXPT XA2 2))
	 (G635
           (+ (* G549 G550 G626) (* -4 WA0 G559 WA2 XA0 XA1)
              (* 4 WA0 G559 WA2 G629) (* (+ G618 G596) XA2)
              (* G549 G550 G633))))
    (+ (* G556 (EXPT YA0 2)) (* G563 YA0 YA1)
       (*
	(+ (* 4 WA0 G559 WA2 G551) (* -8 WA0 G559 WA2 XB0 XB1)
           (* 4 WA0 G559 WA2 G554))
	(EXPT YA1 2))
       (*
	(+ (* (+ (* G573 G551) (* G577 XB0 XB1) (* G573 G554)) YA0)
           (* G563 YA1))
	YA2)
       (* G556 (EXPT YA2 2))
       (*
	(+ (* (+ (* G593 XB0) (* G598 XB1)) YA0)
           (* (+ (* G605 XB0) (* G610 XB1)) YA1)
           (* (+ (* G616 XB0) (* G620 XB1)) YA2))
	YB0)
       (* G635 (EXPT YB0 2))
       (*
	(+ (* (+ (* G598 XB0) (* G593 XB1)) YA0)
           (* (+ (* G610 XB0) (* G605 XB1)) YA1)
           (* (+ (* G620 XB0) (* G616 XB1)) YA2)
           (*
            (+ (* -2 G549 G550 G626) (* 8 WA0 G559 WA2 XA0 XA1)
               (* -8 WA0 G559 WA2 G629) (* (+ (* G577 XA0) G608) XA2)
               (* -2 G549 G550 G633))
            YB0))
	YB1)
       (* G635 (EXPT YB1 2)))))

  
