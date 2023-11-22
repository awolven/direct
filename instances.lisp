(in-package :direct)

(eval-when (:compile-toplevel :load-toplevel :execute)
(load "~/direct/intersection-rational-cubic-quadratic-beziers.fasl")
(load "~/direct/intersection-rational-cubic-quadratic-beziers-c5.fasl")
(load "~/direct/intersection-rational-cubic-quadratic-beziers-c6.fasl")
(load "~/direct/power-basis-cubic-intersection.fasl")
)

(defparameter *cubic-1*
  (make-instance 'b-spline-plane-curve
		 :control-points
		 (list (vec2 -53.5492 8.28145)
		       (vec2 -56.0398 26.8369)
		       (vec2 -31.8804 33.4371)
		       (vec2 -14.6949 16.127))
		 :knot-vector (list 0 0 0 0 1 1 1 1)))

(defparameter *cubic-2*
  (make-instance 'b-spline-plane-curve
		 :control-points
		 (list (vec2 -32.3786 12.391)
		       (vec2 -41.0959 20.2366)
		       (vec2 -30.0125 38.9166)
		       (vec2 -5.35492 40.7846))
		 :knot-vector (list 0 0 0 0 1 1 1 1)))

(defparameter *cubic-3*
  (make-instance 'b-spline-plane-curve
		 :control-points
		 (list (vec2 -76.1528 30.5007)
		       (vec2 -54.5454 44.0711)
		       (vec2 -42.1607 19.0382)
		       (vec2 -13.9657 7.97101))
		 :knot-vector (list 0 0 0 0 1 1 1 1)))

(defparameter *quadratic-1*
  (make-instance 'b-spline-plane-curve
		 :control-points
		 (list (vec2 -65.7444 17.0619)
		       (vec2 -43.61 31.9499)
		       (vec2 -27.9315 19.9605))
		 :knot-vector (list 0 0 0 1 1 1)))
		       

(defparameter *power-1*
  (first (power-basis *cubic-1*)))

(defparameter *power-2*
  (first (power-basis *cubic-2*)))

(defun intersection-planar-rational-cubic-power-basis-curve/planar-rational-cubic-power-basis-curve-1
    (curve-1 curve-2)
  (let* ((x1 (send curve-1 wx-polynomial))
	 (x2 (send curve-2 wx-polynomial))
	 (y1 (send curve-1 wy-polynomial))
	 (y2 (send curve-2 wy-polynomial))
	 (w1 (send curve-1 w-polynomial))
	 (w2 (send curve-2 w-polynomial))
	 (Ax1 (aref x1 3))
	 (Bx1 (aref x1 2))
	 (Cx1 (aref x1 1))
	 (Dx1 (aref x1 0))
	 (Ay1 (aref y1 3))
	 (By1 (aref y1 2))
	 (Cy1 (aref y1 1))
	 (Dy1 (aref y1 0))
	 (Aw1 (aref w1 3))
	 (Bw1 (aref w1 2))
	 (Cw1 (aref w1 1))
	 (Dw1 (aref w1 0))
	 (Ax2 (aref x2 3))
	 (Bx2 (aref x2 2))
	 (Cx2 (aref x2 1))
	 (Dx2 (aref x2 0))
	 (Ay2 (aref y2 3))
	 (By2 (aref y2 2))
	 (Cy2 (aref y2 1))
	 (Dy2 (aref y2 0))
	 (Aw2 (aref w2 3))
	 (Bw2 (aref w2 2))
	 (Cw2 (aref w2 1))
	 (Dw2 (aref w2 0)))
    (roots (vector (intersection-rational-power-basis-cubic-c0
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c1
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c2
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c3
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c4
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c5
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c6
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c7
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c8
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)
		   (intersection-rational-power-basis-cubic-c9
		    Ax1 Bx1 Cx1 Dx1 Ay1 By1 Cy1 Dy1 Aw1 Bw1 Cw1 Dw1
		    Ax2 Bx2 Cx2 Dx2 Ay2 By2 Cy2 Dy2 Aw2 Bw2 Cw2 Dw2)))))
		    
	
(defun intersection-planar-rational-cubic-bezier-curve/planar-rational-quadratic-bezier-curve-1
    (curve-1 curve-2)
  (let* ((a-cpoints (send curve-1 homogeneous-control-points))
	 (b-cpoints (send curve-2 homogeneous-control-points))
	 (pa0 (aref a-cpoints 0))
	 (pa1 (aref a-cpoints 1))
	 (pa2 (aref a-cpoints 2))
	 (pa3 (aref a-cpoints 3))
	 (pb0 (aref b-cpoints 0))
	 (pb1 (aref b-cpoints 1))
	 (pb2 (aref b-cpoints 2))
	 (xa0 (rationalize (vx pa0)))
	 (ya0 (rationalize (vy pa0)))
	 (wa0 (rationalize (vz pa0)))
	 (xa1 (rationalize (vx pa1)))
	 (ya1 (rationalize (vy pa1)))
	 (wa1 (rationalize (vz pa1)))
	 (xa2 (rationalize (vx pa2)))
	 (ya2 (rationalize (vy pa2)))
	 (wa2 (rationalize (vz pa2)))
	 (xa3 (rationalize (vx pa3)))
	 (ya3 (rationalize (vy pa3)))
	 (wa3 (rationalize (vz pa3)))
	 (xb0 (rationalize (vx pb0)))
	 (yb0 (rationalize (vy pb0)))
	 (wb0 (rationalize (vz pb0)))
	 (xb1 (rationalize (vx pb1)))
	 (yb1 (rationalize (vy pb1)))
	 (wb1 (rationalize (vz pb1)))
	 (xb2 (rationalize (vx pb2)))
	 (yb2 (rationalize (vy pb2)))
	 (wb2 (rationalize (vz pb2))))
	
    (roots (vector (rational-cubic-bezier/quadratic-bezier-c0
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-cubic-bezier/quadratic-bezier-c1
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-cubic-bezier/quadratic-bezier-c2
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-cubic-bezier/quadratic-bezier-c3
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-cubic-bezier/quadratic-bezier-c4
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-cubic-bezier/quadratic-bezier-c5
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-cubic-bezier/quadratic-bezier-c6
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xa3 ya3 wa3 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)))))

		    
