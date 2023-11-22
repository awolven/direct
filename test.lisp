(in-package :direct)

(defparameter *nurbs-circle*
  (make-instance 'b-spline-space-curve
		 :control-points
		 (list (vec3 1 0 0)
		       (vec3 1 2 0)
		       (vec3 -1 2 0)
		       (vec3 -1 0 0)
		       (vec3 -1 -2 0)
		       (vec3 1 -2 0)
		       (vec3 1 0 0))
		 :weights (list 1 1/3 1/3 1 1/3 1/3 1)
		 :knot-vector (list 0 0 0 0 1/2 1/2 1/2 1 1 1 1)))


(defparameter *nurbs-circle2*
  (make-instance 'b-spline-plane-curve
		 :control-points
		 (list (vec2 1 0)
		       (vec2 1 2)
		       (vec2 -1 2)
		       (vec2 -1 0)
		       (vec2 -1 -2)
		       (vec2 1 -2)
		       (vec2 1 0))
		 :weights (list 1 1/3 1/3 1 1/3 1/3 1)
		 :knot-vector (list 0 0 0 0 1/2 1/2 1/2 1 1 1 1)))


(defparameter *nurbs-cylinder*
  (swept-surface (make-nurbs-line (vec3 0 0 0) (vec3 0 0 1))
		 *nurbs-circle*))


(defparameter *nurbs-line*
  (make-nurbs-line2 (vec2 -3 -3) (vec2 3 3)))

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



		    
