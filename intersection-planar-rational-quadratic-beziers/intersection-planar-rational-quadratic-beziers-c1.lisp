(in-package :direct)

(defun planar-rational-quadratic-bezier/planar-rational-quadratic-bezier-c1
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
  (declare (ignorable xb2 yb2 wb2))
  (LET* ((G392 (EXPT WA0 2))
	 (G393 (EXPT WA2 2))
	 (G394 (EXPT WB0 2))
	 (G396 (* 4 G392 G393 WB0 WB1))
	 (G397 (+ (* -4 G392 G393 G394) G396))
	 (G398 (EXPT XA2 2))
	 (G400 (* 8 G392 G393 G394))
	 (G402 (+ G400 (* -4 G392 G393 WB0 WB1)))
	 (G404 (EXPT XB0 2))
	 (G405 (* -4 G392 G393 G394 G404))
	 (G406 (* -4 G392 G393 WB0 WB1 XA2))
	 (G407 (* 4 G392 G393 WB0 WB1 XB0))
	 (G413 (EXPT WA1 2))
	 (G414 (* 16 WA0 G413 WA2 G394))
	 (G415 (* -16 WA0 G413 WA2 WB0 WB1))
	 (G416 (+ G414 G415))
	 (G418 (* -16 WA0 G413 WA2 G394))
	 (G420 (+ G418 (* 8 WA0 G413 WA2 WB0 WB1)))
	 (G421 (* G420 XA1))
	 (G425 (* 16 WA0 G413 WA2 G394 G404))
	 (G426 (* 8 WA0 G413 WA2 WB0 WB1 XA1))
	 (G427 (* 8 WA0 G413 WA2 WB0 WB1 XA2))
	 (G428 (* -16 WA0 G413 WA2 WB0 WB1 XB0))
	 (G434 (+ G418 (* 16 WA0 G413 WA2 WB0 WB1)))
	 (G437 (+ G414 (* -8 WA0 G413 WA2 WB0 WB1)))
	 (G451 (EXPT XA1 2))
	 (G457 (+ (* -8 G392 G393 G394) G396))
	 (G458 (* G457 XA0))
	 (G460 (+ (* 32 WA0 G413 WA2 G394) G415))
	 (G467 (+ (* -16 WA0 G413 WA2) (* 8 G392 G393)))
	 (G469 (* 4 G392 G393 WB0 WB1 XA0))
	 (G470 (* -16 WA0 G413 WA2 WB0 WB1 XA1))
	 (G474 (+ (* 16 WA0 G413 WA2) (* -8 G392 G393)))
	 (G484 (* 8 WA0 G413 WA2 WB0 WB1 XA0))
	 (G491 (EXPT XA0 2))
	 (G494 (* -4 G392 G393 WB0 WB1 XA0))
	 (G500 (* G437 G451))
	 (G505 (* -16 WA0 G413 WA2 G394 XA1))
	 (G511 (+ (* -8 WA0 G413 WA2) (* 4 G392 G393)))
	 (G513 (+ G494 G426 (* G511 WB0 WB1 XA2)))
	 (G517 (* G420 XA0 XA1))
	 (G526 (+ G484 G470 G427))
	 (G537 (+ (* G511 WB0 WB1 XA0) G426 G406))
	 (G554 (* -8 WA0 G413 WA2 WB0 WB1 G451))
	 (G561 (* 8 WA0 G413 WA2 WB0 WB1 XA0 XA1)))
    (+
     (* (+ (* G397 G398) (* G402 XA2 XB0) G405 (* (+ G406 G407) XB1))
	(EXPT YA0 2))
     (*
      (+ (* G416 XA1 XA2) (* (+ G421 (* G420 XA2)) XB0) G425
	 (* (+ G426 G427 G428) XB1))
      YA0 YA1)
     (*
      (+ (* G434 XA0 XA2) (* (+ (* G437 XA0) (* G437 XA2)) XB0)
	 (* -16 WA0 G413 WA2 G394 G404)
	 (*
          (+ (* -8 WA0 G413 WA2 WB0 WB1 XA0) (* -8 WA0 G413 WA2 WB0 WB1 XA2)
             (* 16 WA0 G413 WA2 WB0 WB1 XB0))
          XB1))
      (EXPT YA1 2))
     (*
      (+
       (*
	(+ (* G434 G451) (* (+ G400 (* -8 G392 G393 WB0 WB1)) XA0 XA2)
           (* (+ G458 (* G460 XA1) (* G457 XA2)) XB0)
           (* G467 G394 G404)
           (*
            (+ G469 G470 (* 4 G392 G393 WB0 WB1 XA2)
               (* G474 WB0 WB1 XB0))
            XB1))
	YA0)
       (*
	(+ (* G416 XA0 XA1) (* (+ (* G420 XA0) G421) XB0) G425
           (* (+ G484 G426 G428) XB1))
	YA1))
      YA2)
     (* (+ (* G397 G491) (* G402 XA0 XB0) G405 (* (+ G494 G407) XB1))
	(EXPT YA2 2))
     (*
      (+
       (*
	(+ G500 (* (+ G458 G421) XA2) (* G402 G398)
           (* (+ (* 8 G392 G393 G394 XA0) G505 (* G474 G394 XA2))
              XB0)
           (* G513 XB1))
	YA0)
       (*
	(+ G517 (* (+ (* G460 XA0) G421) XA2)
           (*
            (+ (* -16 WA0 G413 WA2 G394 XA0) (* 32 WA0 G413 WA2 G394 XA1)
               (* -16 WA0 G413 WA2 G394 XA2))
            XB0)
           (* G526 XB1))
	YA1)
       (*
	(+ (* G402 G491) G517 G500 (* G457 XA0 XA2)
           (* (+ (* G474 G394 XA0) G505 (* 8 G392 G393 G394 XA2))
              XB0)
           (* G537 XB1))
	YA2))
      YB0)
     (*
      (+ (* -4 G392 G393 G394 G491) (* 16 WA0 G413 WA2 G394 XA0 XA1)
	 (* -16 WA0 G413 WA2 G394 G451)
	 (* (+ (* G467 G394 XA0) (* 16 WA0 G413 WA2 G394 XA1)) XA2)
	 (* -4 G392 G393 G394 G398))
      (EXPT YB0 2))
     (*
      (+
       (*
	(+ G554 (* (+ G469 G426) XA2) (* -4 G392 G393 WB0 WB1 G398)
           (* G513 XB0))
	YA0)
       (*
	(+ G561 (* (+ (* -16 WA0 G413 WA2 WB0 WB1 XA0) G426) XA2)
           (* G526 XB0))
	YA1)
       (*
	(+ (* -4 G392 G393 WB0 WB1 G491) G561 G554
           (* 4 G392 G393 WB0 WB1 XA0 XA2) (* G537 XB0))
	YA2)
       (*
	(+ (* 4 G392 G393 WB0 WB1 G491)
           (* -16 WA0 G413 WA2 WB0 WB1 XA0 XA1)
           (* 16 WA0 G413 WA2 WB0 WB1 G451)
           (* (+ (* G474 WB0 WB1 XA0) G470) XA2)
           (* 4 G392 G393 WB0 WB1 G398))
	YB0))
      YB1))))
