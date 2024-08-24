(in-package :direct)

(defun intersection-planar-rational-quadratic-bezier/planar-rational-cubic-bezier-c0
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (declare (ignore xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3))
  (LET* ((G268 (EXPT WA0 2))
	 (G269 (EXPT WA2 2))
	 (G270 (EXPT WB0 2))
	 (G271 (EXPT XA2 2))
	 (G272 (* G268 G269 G270 G271))
	 (G274 (EXPT XB0 2))
	 (G275 (* G268 G269 G270 G274))
	 (G279 (EXPT WA1 2))
	 (G281 (* 4 WA0 G279 WA2 G270 XA1))
	 (G282 (* 4 WA0 G279 WA2 G270 XA2))
	 (G285 (* -4 WA0 G279 WA2 G270 G274))
	 (G297 (EXPT XA1 2))
	 (G298 (* 4 WA0 G279 WA2 G270 G297))
	 (G300 (* 2 G268 G269 G270 XA0))
	 (G301 (* -8 WA0 G279 WA2 G270 XA1))
	 (G307 (+ (* 4 WA0 G279 WA2) (* -2 G268 G269)))
	 (G311 (* -4 WA0 G279 WA2 G270 XA0 XA1))
	 (G312 (* 4 WA0 G279 WA2 G270 XA0))
	 (G319 (EXPT XA0 2))
	 (G320 (* G268 G269 G270 G319))
	 (G325 (* -4 WA0 G279 WA2 G270 G297))
	 (G332 (+ (* -4 WA0 G279 WA2) (* 2 G268 G269)))
	 (G338 (* 4 WA0 G279 WA2 G270 XA0 XA1)))
    (+ (* (+ G272 (* -2 G268 G269 G270 XA2 XB0) G275) (EXPT YA0 2))
       (*
	(+ (* -4 WA0 G279 WA2 G270 XA1 XA2) (* (+ G281 G282) XB0) G285)
	YA0 YA1)
       (*
	(+ (* 4 WA0 G279 WA2 G270 XA0 XA2)
           (*
            (+ (* -4 WA0 G279 WA2 G270 XA0) (* -4 WA0 G279 WA2 G270 XA2))
            XB0)
           (* 4 WA0 G279 WA2 G270 G274))
	(EXPT YA1 2))
       (*
	(+
	 (*
          (+ G298 (* -2 G268 G269 G270 XA0 XA2)
             (* (+ G300 G301 (* 2 G268 G269 G270 XA2)) XB0)
             (* G307 G270 G274))
          YA0)
	 (* (+ G311 (* (+ G312 G281) XB0) G285) YA1))
	YA2)
       (* (+ G320 (* -2 G268 G269 G270 XA0 XB0) G275) (EXPT YA2 2))
       (*
	(+
	 (*
          (+ G325 (* (+ G300 G281) XA2) (* -2 G268 G269 G270 G271)
             (* (+ (* -2 G268 G269 G270 XA0) G281 (* G332 G270 XA2))
		XB0))
          YA0)
	 (*
          (+ G338 (* (+ (* -8 WA0 G279 WA2 G270 XA0) G281) XA2)
             (* (+ G312 G301 G282) XB0))
          YA1)
	 (*
          (+ (* -2 G268 G269 G270 G319) G338 G325
             (* 2 G268 G269 G270 XA0 XA2)
             (* (+ (* G332 G270 XA0) G281 (* -2 G268 G269 G270 XA2))
		XB0))
          YA2))
	YB0)
       (*
	(+ G320 G311 G298
           (* (+ (* G307 G270 XA0) (* -4 WA0 G279 WA2 G270 XA1)) XA2)
           G272)
	(EXPT YB0 2)))))
  
