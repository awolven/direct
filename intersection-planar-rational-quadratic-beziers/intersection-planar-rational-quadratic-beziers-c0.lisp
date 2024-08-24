(in-package :direct)

(defun planar-rational-quadratic-bezier/planar-rational-quadratic-bezier-c0
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
  (declare (ignorable xb1 yb1 wb1 xb2 yb2 wb2))
  (LET* ((G262 (EXPT WA0 2))
	 (G263 (EXPT WA2 2))
	 (G264 (EXPT WB0 2))
	 (G265 (EXPT XA2 2))
	 (G266 (* G262 G263 G264 G265))
	 (G268 (EXPT XB0 2))
	 (G269 (* G262 G263 G264 G268))
	 (G273 (EXPT WA1 2))
	 (G275 (* 4 WA0 G273 WA2 G264 XA1))
	 (G276 (* 4 WA0 G273 WA2 G264 XA2))
	 (G279 (* -4 WA0 G273 WA2 G264 G268))
	 (G291 (EXPT XA1 2))
	 (G292 (* 4 WA0 G273 WA2 G264 G291))
	 (G294 (* 2 G262 G263 G264 XA0))
	 (G295 (* -8 WA0 G273 WA2 G264 XA1))
	 (G301 (+ (* 4 WA0 G273 WA2) (* -2 G262 G263)))
	 (G305 (* -4 WA0 G273 WA2 G264 XA0 XA1))
	 (G306 (* 4 WA0 G273 WA2 G264 XA0))
	 (G313 (EXPT XA0 2))
	 (G314 (* G262 G263 G264 G313))
	 (G319 (* -4 WA0 G273 WA2 G264 G291))
	 (G326 (+ (* -4 WA0 G273 WA2) (* 2 G262 G263)))
	 (G332 (* 4 WA0 G273 WA2 G264 XA0 XA1)))
    (+ (* (+ G266 (* -2 G262 G263 G264 XA2 XB0) G269) (EXPT YA0 2))
       (*
	(+ (* -4 WA0 G273 WA2 G264 XA1 XA2) (* (+ G275 G276) XB0) G279)
	YA0 YA1)
       (*
	(+ (* 4 WA0 G273 WA2 G264 XA0 XA2)
           (*
            (+ (* -4 WA0 G273 WA2 G264 XA0) (* -4 WA0 G273 WA2 G264 XA2))
            XB0)
           (* 4 WA0 G273 WA2 G264 G268))
	(EXPT YA1 2))
       (*
	(+
	 (*
          (+ G292 (* -2 G262 G263 G264 XA0 XA2)
             (* (+ G294 G295 (* 2 G262 G263 G264 XA2)) XB0)
             (* G301 G264 G268))
          YA0)
	 (* (+ G305 (* (+ G306 G275) XB0) G279) YA1))
	YA2)
       (* (+ G314 (* -2 G262 G263 G264 XA0 XB0) G269) (EXPT YA2 2))
       (*
	(+
	 (*
          (+ G319 (* (+ G294 G275) XA2) (* -2 G262 G263 G264 G265)
             (* (+ (* -2 G262 G263 G264 XA0) G275 (* G326 G264 XA2))
		XB0))
          YA0)
	 (*
          (+ G332 (* (+ (* -8 WA0 G273 WA2 G264 XA0) G275) XA2)
             (* (+ G306 G295 G276) XB0))
          YA1)
	 (*
          (+ (* -2 G262 G263 G264 G313) G332 G319
             (* 2 G262 G263 G264 XA0 XA2)
             (* (+ (* G326 G264 XA0) G275 (* -2 G262 G263 G264 XA2))
		XB0))
          YA2))
	YB0)
       (*
	(+ G314 G305 G292
           (* (+ (* G301 G264 XA0) (* -4 WA0 G273 WA2 G264 XA1)) XA2)
           G266)
	(EXPT YB0 2)))))
