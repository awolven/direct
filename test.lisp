(in-package :direct)

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
		    
	
