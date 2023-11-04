(in-package :direct)

(defconstant 2pi #.(* pi 2.0d0))

(defconstant pi/2 #.(/ pi 2.0d0))

(defvar *global-origin*)
(defvar *global-coordinate-system*)
(defvar *coordinate-system*)
(defvar *xy-plane*)
(defvar *yz-plane*)
(defvar *zx-plane*)
(defvar *sketch-plane*)

(defmacro with-coordinate-system ((coordinate-system) &body body)
  `(let ((*coordinate-system* ,coordinate-system))
     ,@body))

(defmacro with-sketch-plane ((sketch-plane) &body body)
  `(let ((*sketch-plane* ,sketch-plane))
     ,@body))

(defun setter-error (slot-name self)
  (error "slot ~A cannot be set in ~S" slot-name self))

(defclass entity-mixin ()
  ;; entities are persistent objects
  ((plist :initform nil
	  :type cl:list)))

(defmethod set-property ((self entity-mixin) (property-name symbol) property-value)
  (setf (getf (the plist) property-name) property-value))

(defmethod get-property ((self entity-mixin) (property-name symbol))
  (let ((val (getf (the plist) property-name :%%none%%)))
    (if (eq val :%%none%%)
	(values nil nil)
	(values val t))))

(defclass layer (entity-mixin)
  ((name :initform nil
	 :initarg :name
	 :initarg name)
   
   (hidden? :initform nil
	    :initarg :hidden
	    :initarg hidden)

   (color :initform #(1.0f0 1.0f0 1.0f0 1.0f0)
	  :initarg :color
	  :initarg color)
   
   (linetype :initform nil
	     :initarg :linetype
	     :initarg linetype)))

(defclass linetype (entity-mixin)
  ((name :initform nil
	 :initarg :name
	 :initarg name)

   (pattern :initform nil
	    :initarg :pattern
	    :initarg pattern)))

(defclass graphical-mixin ()
  ;; these objects are objects with drawable representation
  ((krma.gui::object-id :initform (krma.gui::new-object-id))
   (%group-id :initform nil)
   (%prim-ids :initform nil)
   
   (%hidden? :initform nil
	     :type boolean)

   (%color :initform nil)

   (layer :initform nil
	  :initarg :layer
	  :initarg layer)

   (hidden? :slot-class :virtual
	    :type boolean
	    :initarg :hidden?
	    :initarg hidden?
	    :getter ((or (the %hidden?) (and (the layer) (the layer hidden?))))
	    :setter ((setf (the %hidden?) value)))

   (color :slot-class :virtual
	  :type t
	  :initarg :color
	  :initarg color
	  :getter ((or (the %color) (and (the layer) (the layer color))))
	  :setter ((setf (the %color) value)))))

(defun %copy-graphical-slots (from to)
  (setf (send to krma.gui::object-id) (krma.gui::new-object-id))
  (setf (send to %hidden?) (send from %hidden?)
	(send to %color)  (send from %color)
	(send to  layer)  (send from  layer))
  (values))

(defclass bounding-box (graphical-mixin)
  ((hidden? :initform t
	    :type boolean)

   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((let* ((min (the min))
				(max (the max)))
			   (or (= (vx min) (vx max))
			       (= (vy min) (vy max))
			       (= (vz min) (vz max)))))
		:setter ((setter-error 'degenerate? self)))

   (min-x :initform most-negative-double-float
	  :type double-float)

   (min-y :initform most-negative-double-float
	  :type double-float)

   (min-z :initform most-negative-double-float
	  :type double-float)

   (max-x :initform most-positive-double-float
	  :type double-float)

   (max-y :initform most-positive-double-float
	  :type double-float)

   (max-z :initform most-positive-double-float
	  :type double-float)
   
   (min :slot-class :virtual
	:initarg :min
	:initarg min
	:type vec3
	:getter ((vec3 (the min-x) (the min-y) (the min-z)))
	:setter ((setf (the min-x) (vx value)
		       (the min-y) (vy value)
		       (the min-z) (vz value))
		 (values)))

   (max :slot-class :virtual
	:initarg :max
	:initarg max
	:type vec3
	:getter ((vec3 (the max-x) (the max-y) (the max-z)))
	:setter ((setf (the max-x) (vx value)
		       (the max-y) (vy value)
		       (the max-z) (vz value))
		 (values)))

   (center :slot-class :virtual
	   :type vec3
	   :getter ((v/ (v+ (the min) (the max)) 2.0d0))
	   :setter ((setter-error 'center self)))

   (location :slot-class :virtual
	     :type vec3
	     :getter ((the center))
	     :setter ((setter-error 'location self)))))

(defmethod print-object ((self bounding-box) stream)
  (print-unreadable-object (self stream :type t :identity t)
    (format stream "MIN: ~A, MAX: ~A" (the min) (the max))
    self))

(defun make-bounding-box (min max)
  (declare (type vec3 min max))
  (make-instance 'bounding-box :min min :max max))

(defclass geometry-mixin (graphical-mixin)
  ())

(defgeneric copy (geometry))
(defgeneric mirror (geometry mirror))

(defmethod mirror ((self geometry-mixin) (point vec3))
  (let ((copy (copy self))
	(xform (nmtranslate (nmscale (meye 4) (vec3 -1 -1 -1)) (v* 2.0 point))))
    (transform! copy xform)
    (values)))

(defgeneric translate! (geometry vector))
(defgeneric rotate! (geometry axis vector))
(defgeneric scale! (geometry vector))
(defgeneric transform! (geometry transform))

(defclass point-mixin (geometry-mixin)
  ((bounding-box :slot-class :virtual
		 :type bounding-box
		 :getter ((let ((location (the location))) (make-bounding-box location location)))
		 :setter ((setter-error 'bounding-box self)))))

(defclass intersection-mixin ()
  ((empty? :slot-class :virtual
	   :getter (t)
	   :setter ())))

;; RPP => rational polynomial parametric
;; PP  => procedural parametric
;; IA  => implicit algebraic
;; IP  => implicit procedural

(defclass point/point-intersection (intersection-mixin)
  ((point1)
   (point2)

   (epsilon)

   (empty? :slot-class :virtual
	   :getter ((> (distance (the point1) (the point2)) (the epsilon)))
	   :setter ((setter-error 'empty? self)))))

(defclass point/curve-intersection-mixin (intersection-mixin)
  ((point)
   (curve)))

(defclass point/IA-curve-intersection (point/curve-intersection-mixin)
  ())

(defclass point/RPP-curve-intersection (point/curve-intersection-mixin)
  ())

(defclass point/PP-curve-intersection (point/curve-intersection-mixin)
  ())

(defclass point/surface-intersection-mixin (intersection-mixin)
  ((point)
   (surface)))

(defclass point/IA-surface-intersection (point/surface-intersection-mixin)
  ())

(defclass point/RPP-surface-intersection (point/surface-intersection-mixin)
  ())

(defclass point/PP-surface-intersection (point/surface-intersection-mixin)
  ())

(defclass curve/curve-intersection-mixin (intersection-mixin)
  ((curve1)
   (curve2)))

(defclass RPP-curve/IA-curve-intersection-mixin (curve/curve-intersection-mixin)
  ((roots :slot-class :virtual
	  :getter ()
	  :setter ())

   (empty? :slot-class :virtual
	   :getter ((not (the roots)))
	   :setter ((setter-error 'empty? self)))
   
   (points :slot-class :virtual
	   :getter ((let ((RPP-curve (the curve1)))
		      (mapcar #'(lambda (root) (evaluate1 RPP-curve root)) (the roots))))
	   :setter ())))

(defclass planar-RPP-curve/IA-curve-intersection (RPP-curve/IA-curve-intersection-mixin)
  ())

(defclass space-RPP-curve/IA-curve-intersection (RPP-curve/IA-curve-intersection-mixin)
  ())

(defclass RPP-curve/RPP-curve-intersection (curve/curve-intersection-mixin)
  ((points :slot-class :virtual
	   :getter ()
	   :setter ())))

(defclass RPP-curve/PP-curve-intersection (curve/curve-intersection-mixin)
  ())

(defclass RPP-curve/IP-curve-intersection (curve/curve-intersection-mixin)
  ())

(defclass PP-curve/PP-curve-intersection (curve/curve-intersection-mixin)
  ())

(defclass PP-curve/IA-curve-intersection (curve/curve-intersection-mixin)
  ())

(defclass PP-curve/IP-curve-intersection (curve/curve-intersection-mixin)
  ())

(defclass IA-curve/IA-curve-intersection (curve/curve-intersection-mixin)
  ())

(defclass IA-curve/IP-curve-intersection (curve/curve-intersection-mixin)
  ())

(defclass IP-curve/IP-curve-intersection (curve/curve-intersection-mixin)
  ())

(defclass curve/surface-intersection-mixin (intersection-mixin)
  ((curve)
   (surface)))

(defclass RPP-curve/IA-surface-intersection (curve/surface-intersection-mixin)
  ((roots :slot-class :virtual
	  :getter ()
	  :setter ())
   
   (points :slot-class :virtual
	   :getter ((let ((RPP-curve (the curve1)))
		      (mapcar #'(lambda (root) (evaluate1 RPP-curve root)) (the roots))))
	   :setter ())))

(defclass RPP-curve/RPP-surface-intersection (curve/surface-intersection-mixin)
  ((points :slot-class :virtual
	   :getter ()
	   :setter ())))

(defclass RPP-curve/PP-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass RPP-curve/IP-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass PP-curve/PP-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass PP-curve/IA-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass PP-curve/IP-surface-intersection (curve/surface-intersection-mixin)
  ())


(defclass IA-curve/IA-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass IA-curve/RPP-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass IA-curve/IP-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass IP-curve/RPP-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass IP-curve/PP-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass IP-curve/IA-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass IP-curve/IP-surface-intersection (curve/surface-intersection-mixin)
  ())

(defclass surface/surface-intersection-mixin (intersection-mixin)
  ((surface1)
   (surface2)))

(defclass RPP-surface/IA-surface-intersection (surface/surface-intersection-mixin)
  ())

(defclass RPP-surface/RPP-surface-intersection (surface/surface-intersection-mixin)
  ())

(defclass RPP-surface/PP-surface-intersection (surface/surface-intersection-mixin)
  ())

(defclass RPP-surface/IP-surface-intersection (surface/surface-intersection-mixin)
  ())

(defclass PP-surface/PP-surface-intersection (surface/surface-intersection-mixin)
  ())

(defclass PP-surface/IP-surface-intersection (surface/surface-intersection-mixin)
  ())

(defclass IA-surface/IA-surface-intersecion (surface/surface-intersection-mixin)
  ())

(defclass IA-surface/IP-surface-intersecion (surface/surface-intersection-mixin)
  ())

(defclass IP-surface/IP-surface-intersecion (surface/surface-intersection-mixin)
  ())


  

(defclass offset-mixin () ())

(defclass intersection-of-two-procedural-curves-mixin (intersection-mixin point-mixin)
  ((curve-1)
   (curve-2)))

(defun intersection-of-RPP-curve-and-IA-curve-case-d3 (explicit-curve implicit-curve)
  (declare (ignorable explicit-curve implicit-curve))
  (values))

(defun intersection-of-two-RPP-curves-case-d1 (curve1 curve2)
  (declare (ignorable curve1 curve2))
  (values))

(defun intersection-of-RPP-curve-and-PP-curve-case-d2 (rational-polynomial-curve procedural-curve)
  (declare (ignorable rational-polynomial-curve procedural-curve))
  (values))

(defun intersection-of-two-PP-curves-case-d5 (curve1 curve2)
  (declare (ignorable curve1 curve2))
  (values))

(defun intersection-of-PP-curve-and-IA-curve-case-d6 (procedural-curve implicit-curve)
  (declare (ignorable procedural-curve implicit-curve))
  (values))

(defun intersection-of-two-IA-curves-case-d8 (curve1 curve2)
  (declare (ignorable curve1 curve2))
  (values))

(defclass intersection-of-procedural-curve-and-procedural-surface-mixin (intersection-mixin point-mixin)
  ((curve)
   (surface)))

(defun intersection-of-RPP-curve-and-IA-surface-case-e3 (curve surface)
  (declare (ignorable curve surface))
  (values))

(defgeneric intersection2 (thing1 thing2))

(defgeneric intersection3 (thing1 thing2 thing3))

(defclass intersection-of-three-implicit-surfaces-mixin (intersection-mixin point-mixin)
  ((surface-1)
   (surface-2)
   (surface-3)))

(defclass placement-mixin (geometry-mixin)
  ())

(defmethod initialize-instance :before ((self placement-mixin) &rest initargs)
  (when (and (or (getf initargs :location)
		 (getf initargs 'location))
	     (or (getf initargs :origin)
		 (getf initargs 'origin)))
    (error "cannot specify both location and origin when initializing a placement: ~S" initargs))
  (values))

(defclass implicit-mixin () ())

(defclass explicit-mixin () ())

(defclass parametric-mixin () ())

(defclass 3d-mixin ()
  ((3-space :initarg :coordinate-system
	    :initarg coordinate-system
	    :type (or global-coordinate-system 3-space)))  
  (:default-initargs :coordinate-system *coordinate-system*))

(defmethod initialize-instance :after ((self 3d-mixin) &rest initargs)
  (declare (ignore initargs))
  (add-entity (the 3-space) self)
  (values))

(defclass axis1-placement (3d-mixin placement-mixin entity-mixin)
  ((origin-x :type double-float
	     :initform 0.0d0)

   (origin-y :type double-float
	     :initform 0.0d0)

   (origin-z :type double-float
	     :initform 0.0d0)
   
   (origin :slot-class :virtual
	     :type vec3
	     :initarg :origin
	     :initarg origin
	     :getter ((vec3 (the origin-x) (the origin-y) (the origin-z)))
	     :setter ((declare (type vec3 value))
		      (setf (the origin-x) (vx value)
			    (the origin-y) (vy value)
			    (the origin-z) (vz value))
		      (values)))

   (location :slot-class :virtual
	     :type vec3
	     :initarg :location
	     :initarg location
	     :getter ((the origin))
	     :setter ((declare (type vec3 value))
		      (setf (the origin) value)
		      (values)))

   (axis-x :initform 0.0d0
	   :type double-float)
   
   (axis-y :initform 0.0d0
	   :type double-float)
   
   (axis-z :initform 1.0d0
	   :type double-float)
   
   (axis :slot-class :virtual
	 :type vec3
	 :initarg :axis
	 :initarg axis
	 :getter ((vec3 (the axis-x) (the axis-y) (the axis-z)))
	 :setter ((declare (type vec3 value))
		  (setq value (vunit value))
		  (setf (the axis-x) (vx value)
			(the axis-y) (vy value)
			(the axis-z) (vz value))
		  (values)))))

(defmethod copy ((self axis1-placement))
  (let ((copy (allocate-instance (class-of self))))
    (%copy-graphical-slots self copy)
    (setf (send copy origin-x) (the origin-x)
	  (send copy origin-y) (the origin-y)
	  (send copy origin-z) (the origin-z)
	  (send copy axis-x) (the axis-x)
	  (send copy axis-y) (the axis-y)
	  (send copy axis-z) (the axis-z))
    copy))

(defmethod reverse! ((self axis1-placement))
  (setf (the axis) (v- (the axis)))
  (values))

(defmethod transform! ((self axis1-placement) (xform mat4))
  (let ((origin (the origin location))
	(axis (the axis)))
    (setf (the origin location) (safe-euclid (m* xform (vec4 (vx origin) (vy origin) (vz origin) 1.0d0))))
    (setf (the axis) (safe-euclid (m* xform (vec4 (vx axis) (vy axis) (vz axis) 1.0d0))))
    (values)))

(defclass 2d-mixin ()
  ((coordinate-system :initarg :coordinate-system
		      :initarg coordinate-system
		      :type (or plane 2-space)))
  (:default-initargs :coordinate-system *sketch-plane*))

(defmethod initialize-instance :after ((self 2d-mixin) &rest initargs)
  (declare (ignore initargs))
  (add-entity (the coordinate-system) self)
  (values))

(defclass axis2-placement-2d (2d-mixin placement-mixin entity-mixin)
  ((origin-u :type double-float
	     :initform 0.0d0)
   
   (origin-v :type double-float
	     :initform 0.0d0)
   
   (ref-direction-u :initform 1.0d0
		    :type double-float)
   
   (ref-direction-v :initform 0.0d0
		    :type double-float)

   (origin :slot-class :virtual
	   :type vec2
	   :initarg :ref-direction
	   :initarg ref-direction
	   :getter ((vec2 (the origin-u) (the origin-v)))
	   :setter ((declare (type vec2 value))
		    (setq value (vunit value))
		    (setf (the origin-u) (vx value)
			  (the origin-v) (vy value))
		    (values)))

   (ref-direction :slot-class :virtual
		  :type vec2
		  :initarg :ref-direction
		  :initarg ref-direction
		  :getter ((vec2 (the ref-direction-u) (the ref-direction-v)))
		  :setter ((declare (type vec2 value))
			   (setq value (vunit value))
			   (setf (the ref-direction-u) (vx value)
				 (the ref-direction-v) (vy value))
			   (values)))))

(defmethod copy ((self axis1-placement))
  (let ((copy (allocate-instance (class-of self))))
    (%copy-graphical-slots self copy)
    (setf (send copy origin-u) (the origin-u)
	  (send copy origin-v) (the origin-v)
	  (send copy ref-direction-u) (the ref-direction-u)
	  (send copy ref-direction-v) (the ref-direction-v))
    copy))


(defclass axis2-placement-3d (3d-mixin placement-mixin entity-mixin)
  ((origin-x :type double-float
	     :initform 0.0d0)

   (origin-y :type double-float
	     :initform 0.0d0)

   (origin-z :type double-float
	     :initform 0.0d0)
   
   (origin :slot-class :virtual
	     :type vec3
	     :initarg :origin
	     :initarg origin
	     :getter ((vec3 (the origin-x) (the origin-y) (the origin-z)))
	     :setter ((declare (type vec3 value))
		      (setf (the origin-x) (vx value)
			    (the origin-y) (vy value)
			    (the origin-z) (vz value))
		      (values)))

   (location :slot-class :virtual
	     :type vec3
	     :initarg :location
	     :initarg location
	     :getter ((the origin))
	     :setter ((declare (type vec3 value))
		      (setf (the origin) value)
		      (values)))

   (axis-x :initform 0.0d0
	   :type double-float)
   
   (axis-y :initform 0.0d0
	   :type double-float)
   
   (axis-z :initform 1.0d0
	   :type double-float)
   
   (ref-direction-x :initform 1.0d0
		    :type double-float)
   
   (ref-direction-y :initform 0.0d0
		    :type double-float)
   
   (ref-direction-z :initform 0.0d0
		    :type double-float)

   (axis :slot-class :virtual
	 :type vec3
	 :initarg :axis
	 :initarg axis
	 :getter ((vec3 (the axis-x) (the axis-y) (the axis-z)))
	 :setter ((declare (type vec3 value))
		  (setq value (vunit value))
		  (setf (the axis-x) (vx value)
			(the axis-y) (vy value)
			(the axis-z) (vz value))
		  (values)))

   (ref-direction :slot-class :virtual
		  :type vec3
		  :initarg :ref-direction
		  :initarg ref-direction
		  :getter ((vec3 (the ref-direction-x)
				 (the ref-direction-y)
				 (the ref-direction-z)))
		  :setter ((declare (type vec3 value))
			   (setq value (vunit value))
			   (setf (the ref-direction-x) (vx value)
				 (the ref-direction-y) (vy value)
				 (the ref-direction-z) (vz value))
			   (values)))
   
   (matrix :slot-class :virtual
	   :type mat4
	   :initarg :matrix
	   :initarg matrix
	   :getter ((let ((y-axis (vc (the axis) (the ref-direction)))
			  (location (the location)))
		      (mat4 (the ref-direction-x) (the ref-direction-y) (the ref-direction-z) (vx location)
			    (vx y-axis)           (vy y-axis)           (vz y-axis)           (vy location)
			    (the axis-x)          (the axis-y)          (the axis-z)          (vz location)
			    0.0d0                 0.0d0                 0.0d0                 1.0d0)))
	   :setter ((declare (type mat4 value))
		    (3dm.d::with-fast-matref (m value 4)
		      (let ((ref-dir-x (m 0 0))
			    (ref-dir-y (m 0 1))
			    (ref-dir-z (m 0 2))
			    (loc-x     (m 0 3))
			    (loc-y     (m 1 3))
			    (axis-x    (m 2 0))
			    (axis-y    (m 2 1))
			    (axis-z    (m 2 2))
			    (loc-z     (m 2 3)))
			(setf (the axis) (vec3 axis-x axis-y axis-z)
			      (the ref-direction) (vec3 ref-dir-x ref-dir-y ref-dir-z)
			      (the origin location) (vec3 loc-x loc-y loc-z))
			(values)))))))

(defmethod copy ((self axis2-placement-3d))
  (let ((copy (allocate-instance (class-of self))))
    (%copy-graphical-slots self copy)
    (setf (send copy origin) (the origin)
	  (send copy axis-x) (the axis-x)
	  (send copy axis-y) (the axis-y)
	  (send copy axis-z) (the axis-z)
	  (send copy ref-direction-x) (the ref-direction-x)
	  (send copy ref-direction-y) (the ref-direction-y)
	  (send copy ref-direction-z) (the ref-direction-z))
    copy))


(defmethod translate! ((self axis2-placement-3d) (offset vec3))
  (setf (the location) (v+ (the location) offset))
  (values))

(defmethod rotate! ((self axis2-placement-3d) (axis vec3) (angle real))
  (let* ((quat (qrotation axis angle))
	 (matrix (matrix-from-quaternion quat)))
    (setf (the matrix) (m* matrix (the matrix)))
    (values)))

(defmethod scale! ((self axis2-placement-3d) (scale vec3))
  (scale! (the origin) scale))

(defmethod transform! ((self axis2-placement-3d) (xform mat4))
  (setf (the matrix) (m* xform (the matrix)))
  (values))  

(defmethod initialize-instance :before ((self axis2-placement-3d) &rest initargs)
  (let ((matrix (or (getf initargs :matrix)
		    (getf initargs 'matrix))))
    (cond (matrix
	   (when (or (getf initargs :origin)
		     (getf initargs 'origin))
	     (error "cannot specify both matrix and origin when initializing axis2-placement-3d: ~S" initargs))
	   (when (or (getf initargs :location)
		     (getf initargs 'location))
	     (error "cannot specify both matrix and location when initializing axis2-placement-3d: ~S" initargs))
	   (when (or (getf initargs :axis)
		     (getf initargs 'axis))
	     (error "cannot specify both matrix and axis when initializing axis2-placement-3d: ~S" initargs))
	   (when (or (getf initargs :ref-direction)
		     (getf initargs 'ref-direction))
	     (error "cannot specify both matrix and ref-direction when initializing axis2-placement-3d: ~S" initargs))))
    (values)))

(defclass coordinate-system-mixin ()
  ((%entities :initform (make-hash-table))
   
   (entities :slot-class :virtual
	     :type cl:list
	     :getter ((let ((results ()))
			(maphash #'(lambda (k v)
				     (declare (ignore k))
				     (push v results))
				 (the %entities))
			results))
	     :setter ((setter-error 'entities self)))))

(defclass global-coordinate-system (coordinate-system-mixin entity-mixin)
  ((placement :slot-class :virtual
	      :type null
	      :getter (nil)
	      :setter ((setter-error 'placement self)))
   
   (matrix :slot-class :virtual
	   :type null
	   :getter (nil)
	   :setter ((setter-error 'matrix self)))
   
   (origin :slot-class :virtual
	   :type null
	   :getter (*global-origin*)
	   :setter ((setter-error 'origin self)))
   
   (x-axis :slot-class :virtual
	   :type null
	   :getter (nil)
	   :setter ((setter-error 'x-axis self)))
   
   (y-axis :slot-class :virtual
	   :type null
	   :getter (nil)
	   :setter ((setter-error 'y-axis self)))
   
   (z-axis :slot-class :virtual
	   :type null
	   :getter (nil)
	   :setter ((setter-error 'z-axis self)))))

(defclass 2-space (2d-mixin coordinate-system-mixin entity-mixin)
  ((placement :initarg :placement
	      :initarg placement
	      :type axis2-placement-2d)

   (origin :slot-class :virtual
	   :type vec2
	   :initarg :origin
	   :initarg origin
	   :getter ((the placement origin))
	   :setter ((declare (type vec2 value))
		    (setf (the placement origin) value)
		    (values)))

   (x-axis :slot-class :virtual
	   :type vec2
	   :initarg :x-axis
	   :initarg x-axis
	   :getter ((the placement ref-direction))
	   :setter ((declare (type vec2 value))
		    (setf (the placement ref-direction) value)
		    (values))))

  (:default-initargs :placement (make-instance 'axis2-placement-2d)))
  

(defclass relative-3d-coordinate-system-mixin (coordinate-system-mixin)
  ((placement :initarg :placement
	      :initarg placement
	      :type axis2-placement-3d)

   (matrix :slot-class :virtual
	   :type mat4
	   :initarg :matrix
	   :initarg matrix
	   :getter ((the placement matrix))
	   :setter ((declare (type mat4 value))
		    (setf (the placement matrix) value)
		    (values)))

   (origin :slot-class :virtual
	   :type t
	   :initarg :origin
	   :initarg origin
	   :getter ((the placement origin))
	   :setter ((declare (type vec3 value))
		    (setf (the placement origin) value)
		    (values)))

   (x-axis :slot-class :virtual
	   :type vec3
	   :initarg :x-axis
	   :initarg x-axis
	   :getter ((the placement ref-direction))
	   :setter ((declare (type vec3 value))
		    (setf (the placement ref-direction) value)
		    (values)))

   (y-axis :slot-class :virtual
	   :type vec3
	   :initarg :y-axis
	   :initarg y-axis
	   :getter ((let ((placement (the placement)))
		      (vc (send placement axis)
			  (send placement ref-direction))))
	   :setter ((let ((placement (the placement)))
		      (setf (send placement ref-direction) (vc value (send placement axis))))
		    (values)))

   (z-axis :slot-class :virtual
	   :type vec3
	   :initarg :z-axis
	   :initarg z-axis
	   :getter ((the placement axis))
	   :setter ((declare (type vec3 value))
		    (setf (the placement axis) value)			      
		    (values))))
  
  (:default-initargs :placement (make-instance 'axis2-placement-3d)))

(defmethod transform! ((self relative-3d-coordinate-system-mixin) (xform mat4))
  (transform! (the placement) xform)
  (values))

(defmethod translate! ((self relative-3d-coordinate-system-mixin) (offset vec3))
  (translate! (the placement) offset)
  (values))

(defmethod rotate! ((self relative-3d-coordinate-system-mixin) (axis vec3) (angle real))
  (rotate! (the placement) axis angle)
  (values))

(defmethod scale! ((self relative-3d-coordinate-system-mixin) (scale vec3))
  (scale! (the placement) scale)
  (values))

(defmethod add-entity ((coord-sys coordinate-system-mixin) entity)
  (declare (type coordinate-system-mixin coord-sys))
  (let ((entities (slot-value coord-sys '%entities)))
    (setf (gethash entity entities) entity)
    t))

(defmethod delete-entity ((coord-sys coordinate-system-mixin) entity)
  (declare (type coordinate-system-mixin coord-sys))
  (krma.gui::forget-object coord-sys)
  (let ((entities (slot-value coord-sys '%entities)))
    (remhash entity entities)
    t))





(defclass 3-space (3d-mixin relative-3d-coordinate-system-mixin entity-mixin)
  ;; a 3-space is not a geometry mixin, but it's placement is
  ())

(defclass surface-mixin () ())

(defclass blend-mixin (surface-mixin) ())

(defclass offset-surface (surface-mixin)
  ((basis-surface)))

(defclass implicit-surface-mixin (implicit-mixin surface-mixin) ())

(defclass plane-mixin (implicit-surface-mixin) ())
(defclass quadric-mixin (implicit-surface-mixin) ())

(defclass explicit-surface-mixin (explicit-mixin surface-mixin) ())

(defclass parametric-surface-mixin (parametric-mixin surface-mixin) ())



(defclass plane (3d-mixin plane-mixin relative-3d-coordinate-system-mixin geometry-mixin entity-mixin)
  ((u-closed? :slot-class :virtual
	      :type boolean
	      :getter (nil)
	      :setter ((setter-error 'u-closed? self)))
   
   (v-closed? :slot-class :virtual
	      :type boolean
	      :getter (nil)
	      :setter ((setter-error 'v-closed? self)))
   
   (u-periodic? :slot-class :virtual
		:type boolean
		:getter (nil)
		:setter ((setter-error 'u-periodic? self)))
   
   (v-periodic? :slot-class :virtual
		:type boolean
		:getter (nil)
		:setter ((setter-error 'v-periodic? self)))
   
   (u-period :slot-class :virtual
	     :type null
	     :getter (nil)
	     :setter ((setter-error 'u-period self)))

   (v-period :slot-class :virtual
	     :type null
	     :getter (nil)
	     :setter ((setter-error 'v-period self)))

   (normal :slot-class :virtual
	   :type vec3
	   :initarg :normal
	   :initarg normal
	   :getter ((the placement axis))
	   :setter ((declare (type vec3 value))
		    (setf (the placement axis) value)
		    (values)))

   (equation :slot-class :virtual
	     :type vec4
	     :initarg :equation
	     :initarg equation
	     :getter ((let* ((placement (the placement))
			     (normal (send placement axis))
			     (location (send placement origin)))
			(vec4 (vx normal)
			      (vy normal)
			      (vz normal)
			      (- (v. location normal)))))
	     :setter ((declare (type vec4 value))
		      (let* ((a (vx value))
			     (b (vy value))
			     (c (vz value)))
			(assert (not (and (= 0.0d0 a) (= 0.0d0 b) (= 0.0d0 c))))
			(let* ((d (vw value))
			       (normal (vec3 a b c))
			       (origin (v* (/ (- d) (+ (* a a) (* b b) (* c c))) normal)))
			  (setf (the placement origin) origin)
			  (setf (the placement axis) normal)
			  (values)))))))

(defmethod copy ((self plane))
  (let ((copy (allocate-instance (class-of self))))
    (%copy-graphical-slots self copy)
    (setf (send copy placement) (the placement))
    (values)))

(defmethod u-reverse! ((self plane))
  (setf (the x-axis) (v- (the x-axis)))
  (values))

(defmethod v-reverse! ((self plane))
  (setf (the y-axis) (v- (the y-axis)))
  (values))

(defmethod transform! ((self plane) xform)
  (transform! (the placement) xform)
  (values))

(defmethod bounds ((self plane))
  (values most-negative-double-float
	  most-positive-double-float
	  most-negative-double-float
	  most-positive-double-float))

(defmethod evaluate2 ((self plane) (u real) (v real) &key (derivs 0))
  (setq u (coerce u 'double-float))
  (setq v (coerce v 'double-float))
  (let* ((x-axis (the x-axis))
	 (y-axis (the y-axis))
	 (origin (the origin location))
	 (value
	   (vec3 (+ (* u (vx x-axis)) (* v (vx y-axis)) (vx origin))
		 (+ (* u (vy x-axis)) (* v (vy y-axis)) (vy origin))
		 (+ (* u (vz x-axis)) (* v (vz y-axis)) (vy origin)))))
    (cond ((= derivs 1) (values value (list (the x-axis) (the y-axis))))
	  (t (apply #'values value (make-list derivs :initial-element (vec3 0 0 0)))))))

(defmethod u-iso ((self plane) (parameter real))
  (setq parameter (coerce parameter 'double-float))
  (let ((line (make-instance 'line :start (the placement location) :direction (the y-axis))))
    (translate! line (v* parameter (the x-axis)))
    line))

(defmethod v-iso ((self plane) (parameter real))
  (setq parameter (coerce parameter 'double-float))
  (let ((line (make-instance 'line :start (the placement location) :direction (the x-axis))))
    (translate! line (v* parameter (the y-axis)))
    line))
  



#+NIL
(defmethod add-entity :around ((coord-sys global-coordinate-system) entity)
  (prog1 (call-next-method)
    (setf (send entity 3-space) coord-sys)))

#+NIL
(defmethod add-entity :around ((coord-sys 3-space) entity)
  (prog1 (call-next-method)
    (setf (send entity 3-space) coord-sys)))

#+NIL
(defmethod add-entity :around ((coord-sys plane) entity)
  (prog1 (call-next-method)
    (setf (send entity plane) coord-sys)))

(defmethod delete-entity :around ((coord-sys global-coordinate-system) entity)
  (prog1 (call-next-method)
    (setf (send entity 3-space) nil)))

(defmethod delete-entity :around ((coord-sys 3-space) entity)
  (prog1 (call-next-method)
    (setf (send entity 3-space) nil)))

(defmethod delete-entity :around ((coord-sys plane) entity)
  (prog1 (call-next-method)
    (setf (send entity plane) nil)))

(defmethod transform ((coord vec2) (xform plane))
  (safe-euclid (m* (send xform matrix) (vec4 (vx coord) (vy coord) 0 1))))

(defmethod transform ((coord vec3) (xform plane))
  (safe-euclid (m* (send xform matrix) (vec4 (vx coord) (vy coord) (vz coord) 1))))

(defmethod print-object ((self plane) stream)
  (print-unreadable-object (self stream :type t :identity t)
    (let ((equation (the equation)))
      (format stream "A: ~A, B: ~A, C: ~A, D: ~A"
	      (vx equation)
	      (vy equation)
	      (vz equation)
	      (vw equation))
      self)))

(defun safe-euclid (vec4)
  (let ((w (vw vec4)))
    (if (= 0.0d0 w)
	(vec3 (vx vec4) (vy vec4) (vz vec4))
	(vec3 (/ (vx vec4) w) (/ (vy vec4) w) (/ (vz vec4) w)))))
  





(defclass 3d-point-mixin (3d-mixin point-mixin)
  ((x :initarg :x
      :initarg x
      :initform 0.0d0
      :type double-float)
   
   (y :initarg :y
      :initarg y
      :initform 0.0d0
      :type double-float)
   
   (z :initarg :z
      :initarg z
      :initform 0.0d0
      :type double-float)

   (center :slot-class :virtual
	   :type vec3
	   :initarg :center
	   :initarg center
	   :getter ((vec3 (the x) (the y) (the z)))
	   :setter ((declare (type vec3 value))
		      (setf (the x) (vx value)
			    (the y) (vy value)
			    (the z) (vz value))))
   
   (location :slot-class :virtual
	     :type vec3
	     :initarg :location
	     :initarg location
	     :getter ((the center))
	     :setter ((setf (the center) value)
		      (values)))))

(defmethod translate! ((self 3d-point-mixin) (offset vec3))
  (setf (the location) (v+ (the location) offset))
  (values))

(defmethod rotate! ((self 3d-point-mixin) (axis vec3) (angle real))
  (let ((quat (qrotation axis angle)))
    (setf (the location) (rotate-vector (the location) quat))
    (values)))

(defmethod scale! ((self 3d-point-mixin) (scale vec3))
  (let* ((matrix (nmscale (meye 4) (vec4 (vx scale) (vy scale) (vz scale) 1.0d0)))
	 (result (m* matrix (the location))))
    (setf (the location) (safe-euclid result))
    (values)))

(defmethod transform! ((self 3d-point-mixin) (xform mat4))
  (let ((location (the location)))
    (setf (the location) (safe-euclid (m* xform (vec4 (vx location) (vy location) (vz location) 1.0d0))))
    (values)))

(defmethod transform! ((self 3d-point-mixin) (xform axis2-placement-3d))
  (transform! self (send xform matrix)))

(defclass cpoint-mixin ()
  ((w :initarg :w
      :initarg w
      :initform 1.0d0
      :type double-float)
   
   (weight :slot-class :virtual
	   :type double-float
	   :initarg :weight
	   :initarg weight
	   :getter ((the w))
	   :setter ((setf (the w) (coerce value 'double-float))))))

(defclass point (3d-point-mixin entity-mixin)
  ())

(defmethod print-object ((self point) stream)
  (print-unreadable-object (self stream :type t :identity t)
    (format stream "X: ~A, Y: ~A, Z: ~A" (the x) (the y) (the z))
    self))

(defclass cpoint (cpoint-mixin 3d-point-mixin entity-mixin)
  ())

(defclass 2d-point-mixin (2d-mixin point-mixin)
  ((u :initform 0.0d0
      :type double-float
      :initarg :u
      :initarg u)
   
   (v :initform 0.0d0
      :type double-float
      :initarg :v
      :initarg v)
   
   (location :slot-class :virtual
	     :type vec2
	     :initarg :location
	     :initarg location
	     :getter ((transform (the center) (the coordinate-system)))
	     :setter ((setter-error 'location self)))
   
   (center :slot-class :virtual
	   :type vec3
	   :getter ((vec2 (the u) (the v)))
	   :setter ((declare (type vec2 value))
		    (setf (the u) (vx value)
			  (the v) (vy value))))
   
   (x :slot-class :virtual
      :type double-float
      :getter ((vx (cl:the vec3 (the location))))
      :setter ((setter-error 'x self)))

   (y :slot-class :virtual
      :type double-float
      :getter ((vy (cl:the vec3 (the location))))
      :setter ((setter-error 'y self)))

   (z :slot-class :virtual
      :type double-float
      :getter ((vy (cl:the vec3 (the location))))
      :setter ((setter-error 'z self)))))

(defclass 2d-point (2d-point-mixin entity-mixin)
  ())

(defmethod print-object ((self 2d-point) stream)
  (print-unreadable-object (self stream :type t :identity t)
    (format stream " U: ~A, V: ~A" (the u) (the v))
    self))

(defclass 2d-cpoint (cpoint-mixin 2d-point-mixin)
  ())

(defclass curve-mixin (geometry-mixin)
  ((%linetype :initform nil
	      :type (or null linetype))
   
   (linetype :slot-class :virtual
	     :initarg :linetype
	     :initarg linetype
	     :getter ((or (the %linetype) (and (the layer) (the layer linetype?))))
	     :setter ((setf (the %linetype) value)))))

(defclass intersection-of-two-implicit-surfaces (intersection-mixin curve-mixin)
  ((surface-1)
   (surface-2)))

(defclass offset-curve (offset-mixin curve-mixin)
  ((basis-curve)))

(defclass plane-curve-mixin (2d-mixin) ())

(defclass space-curve-mixin (3d-mixin) ())

(defclass implicit-curve-mixin (implicit-mixin) ())

(defclass explicit-curve-mixin (explicit-mixin) ())

(defclass parametric-curve-mixin (parametric-mixin) ())

(defclass line-mixin ()
  ((degree :slot-class :virtual
	   :type integer
	   :getter (1)
	   :setter ((setter-error 'degree self)))

   (closed? :slot-class :virtual
	    :type boolean
	    :getter (nil)
	    :setter ((setter-error 'closed? self)))

   (periodic? :slot-class :virtual
	      :type boolean
	      :getter (nil)
	      :setter ((setter-error 'periodic? self)))

   (bounding-box :slot-class :virtual
		 :type bounding-box
		 :getter ((let* ((tail-loc (the tail location))
				 (head-loc (the head location))
				 (max-x (max (vx tail-loc) (vx head-loc)))
				 (max-y (max (vy tail-loc) (vy head-loc)))
				 (max-z (max (vz tail-loc) (vz head-loc)))
				 (min-x (min (vx tail-loc) (vx head-loc)))
				 (min-y (min (vy tail-loc) (vy head-loc)))
				 (min-z (min (vz tail-loc) (vz head-loc))))
			    (make-bounding-box (vec3 min-x min-y min-z)
					       (vec3 max-x max-y max-z))))
		 :setter ((setter-error 'bounding-box self)))

   (domain :slot-class :virtual
	   :type cl:list
	   :getter ((list 0.0d0 1.0d0))
	   :setter ((setter-error 'domain self)))))

(defclass line (space-curve-mixin line-mixin curve-mixin entity-mixin)
  ((start-x :type double-float
	    :initarg :start-x
	    :initarg start-x
	    :initform 0.0d0)

   (start-y :type double-float
	    :initarg :start-y
	    :initarg start-y
	    :initform 0.0d0)

   (start-z :type double-float
	    :initarg :start-z
	    :initarg start-z
	    :initform 0.0d0)

   (end-x :type double-float
	  :initarg :end-x
	  :initarg end-x
	  :initform 0.0d0)

   (end-y :type double-float
	  :initarg :end-y
	  :initarg end-y
	  :initform 0.0d0)

   (end-z :type double-float
	  :initarg :end-z
	  :initarg end-z
	  :initform 0.0d0)

   (start :slot-class :virtual
	  :type vec3
	  :initarg :start
	  :initarg start
	  :getter ((vec3 (the start-x) (the start-y) (the start-z)))
	  :setter ((declare (type vec3 value))
		   (setf (the start-x) (vx value)
			 (the start-y) (vy value)
			 (the start-z) (vz value))
		   (values)))

   (end :slot-class :virtual
	:type vec3
	:initarg :end
	:initarg end
	:getter ((vec3 (the end-x) (the end-y) (the end-z)))
	:setter ((declare (type vec3 value))
		 (setf (the end-x) (vx value)
		       (the end-y) (vy value)
		       (the end-z) (vz value))))

   (mid :slot-class :virtual
	:type vec3
	:initarg :mid
	:initarg mid
	:getter ((v+ (the start) (v* 0.5d0 (the span))))
	:setter ((let ((new-span (v* 2.0d0 (v- (cl:the vec3 value) (the start)))))
		   (setf (the span) new-span)
		   (values))))
   
   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((v= (the start) (the end)))
		:setter ((setter-error 'degenerate? self)))
   
   (span :slot-class :virtual
	 :type vec3
	 :initarg :span
	 :initarg span
	 :getter ((v- (cl:the vec3 (the end)) (cl:the vec3 (the start))))
	 :setter ((declare (type vec3 value))
		  ;; this will fail if head is 2d-point
		  (setf (the end) (v+ (cl:the vec3 (the start)) value))))

   (length :slot-class :virtual
	   :type double-float
	   :initarg :length
	   :initarg length
	   :getter ((vlength (cl:the vec3 (the span))))
	   :setter ((setf (the span) (v* value (cl:the vec3 (the direction))))))
   
   (direction :slot-class :virtual
	      :type vec3
	      :initarg :direction
	      :initarg direction
	      :getter ((if (the degenerate?)
			   (vec3 0 0 0)
			   (vunit (the span))))
	      :setter ((setq value (vunit value))
		       (setf (the span) (v* (vlength (cl:the vec3 (the span))) (cl:the vec3 value)))))))

(defmethod evaluate1 ((self line) (parameter real) &key (derivs 0))
  (v+ (the start) (v* parameter (the span))))

(defmethod translate! ((self line) (offset vec3))
  ;;(translate! (the tail) offset)
  ;;(translate! (the head) offset)
  (values))

(defmethod rotate! ((self line) (axis vec3) (angle real))
  ;;(rotate! (the tail) axis angle)
  ;;(rotate! (the head) axis angle)
  (values))

(defmethod scale! ((self line) (scale vec3))
  ;;(scale! (the tail) factor)
  ;;(scale! (the head) factor)
  (values))

(defmethod transform! ((self line) (xform mat4))
  ;;(transform! (the tail) xform)
  ;;(transform! (the head) xform)
  (values))

(defclass 2d-line (plane-curve-mixin line-mixin curve-mixin entity-mixin)
  ((start-u :type double-float
	    :initarg :start-u
	    :initarg start-u
	    :initform 0.0d0)

   (start-v :type double-float
	    :initarg :start-v
	    :initarg start-v
	    :initform 0.0d0)

   (end-u :type double-float
	  :initarg :end-u
	  :initarg end-u
	  :initform 0.0d0)

   (end-v :type double-float
	  :initarg :end-v
	  :initarg end-v
	  :initform 0.0d0)	  
   
   (start :slot-class :virtual
	  :type vec2
	  :initarg :start
	  :initarg start
	  :getter ((vec2 (the start-u) (the start-v)))
	  :setter ((declare (type vec2 value))
		   (setf (the start-u) (vx value)
			 (the start-v) (vy value))
		   (values)))

   (end :slot-class :virtual
	:type vec2
	:initarg :end
	:initarg end
	:getter ((vec2 (the end-u) (the end-v)))
	:setter ((declare (type vec2 value))
		 (setf (the end-u) (vx value)
		       (the end-v) (vy value))
		 (values)))

   (mid :slot-class :virtual
	:type vec2
	:initarg :mid
	:initarg mid
	:getter ((v+ (the tail location) (v* 0.5d0 (the span))))
	:setter ((let ((new-span (v* 2.0d0 (v- (cl:the vec2 value) (the tail location)))))
		   (setf (the span) new-span)
		   (values))))

   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((and (= (the start-u) (the end-u))
			      (= (the start-v) (the end-v))))
		:setter ((setter-error 'degenerate? self)))

   (valid? :slot-class :virtual
	   :type boolean
	   :getter ()
	   :setter ((setter-error 'valid? self)))	     

   (span :slot-class :virtual
	 :type vec2
	 :initarg :span
	 :initarg span
	 :getter ((v- (cl:the vec2 (the end)) (cl:the vec2 (the start))))
	 :setter ((declare (type 2d-line self) (type vec2 value))
		  (setf (the start) (v+ (cl:the vec2 (the end)) value))))

   (length :slot-class :virtual
	   :type double-float
	   :initarg :length
	   :initarg length
	   :getter ((vlength (cl:the vec2 (the span))))
	   :setter ((setf (the span) (v* value (cl:the vec2 (the direction))))))

   (direction :slot-class :virtual
	      :type vec2
	      :initarg :direction
	      :initarg direction
	      :getter ((if (the degenerate?)
			   (vec2 0 0)
			   (vunit (cl:the vec2 (the span)))))
	      :setter ((setq value (vunit value))
		       (setf (the span) (v* (vlength (cl:the vec2 (the span))) (cl:the vec2 value)))))))

(defmethod evaluate1 ((self 2d-line) (parameter real) &key (derivs 0))
  (v+ (the start) (v* parameter (the span))))
   
(defmethod translate! ((self 2d-line) (offset vec2))
  (setf (the start) (v+ (the start) offset)
	(the end)   (v+ (the end)   offset))
  (values))

(defmethod 2d-rotate! ((self 2d-line) (angle real))
  (setq angle (coerce angle 'double-float))
  (let ((mat (mat2 (cos angle) (- (sin angle))
		   (sin angle)    (cos angle))))
    (setf (the start) (m* mat (the start))
	  (the end)   (m* mat (the end))))
  (values))

(defmethod scale! ((self 2d-line) (scale vec2))
  (let ((mat (mat2 (vx scale) 0.0d0
		   0.0d0 (vy scale))))
    (setf (the start) (m* mat (the start))
	  (the end)   (m* mat (the end))))
  (values))

(defmethod transform! ((self 2d-line) (xform mat2))
  (setf (the start) (m* xform (the start))
	(the end)   (m* xform (the end)))
  (values))

(defclass conic-section-mixin (curve-mixin)
  ())

(defclass circle (2d-mixin conic-section-mixin entity-mixin)
  ((degenerate? :slot-class :virtual
		:type boolean
		:getter ((= 0.0d0 (the radius)))
		:setter ((setter-error 'degenerate? self)))
   
   (closed? :slot-class :virtual
	    :type boolean
	    :getter (t)
	    :setter ((setter-error 'closed? self)))
   
   (periodic? :slot-class :virtual
	      :type boolean
	      :getter (t)
	      :setter ((setter-error 'periodic? self)))

   (center-u :initform 0.0d0
	     :type double-float
	     :initarg :center-u
	     :initarg center-u)

   (center-v :initform 0.0d0
	     :type double-float
	     :initarg :center-v
	     :initarg center-v)

   (radius :initform 0.0d0
	   :type double-float
	   :initarg :radius
	   :initarg radius)

   (center :slot-class :virtual
	   :type vec2
	   :initarg :center
	   :initarg center
	   :getter ((vec2 (the center-u) (the center-v)))
	   :setter ((setf (the center-u) (vx value)
			  (the center-v) (vy value))
		    (values)))

   (location :slot-class :virtual
	     :type vec2
	     :initarg :location
	     :initarg location
	     :getter ((transform (the center) (the coordinate-system)))
	     :setter ((setter-error 'location self)))))

(defclass ellipse (2d-mixin conic-section-mixin entity-mixin)
  ((degenerate? :slot-class :virtual
		:type boolean
		:getter ((or (= 0.0d0 (the semi-major-axis))
			     (= 0.0d0 (the semi-minor-axis))))
		:setter ((setter-error 'degenerate? self)))
   
   (closed? :slot-class :virtual
	    :type boolean
	    :getter (t)
	    :setter ((setter-error 'closed? self)))
   
   (periodic? :slot-class :virtual
	      :type boolean
	      :getter (t)
	      :setter ((setter-error 'periodic? self)))

   (circular? :slot-class :virtual
	      :type boolean
	      :getter ((and (= (the focus1-u) (the focus2-u))
			    (= (the focus1-v) (the focus1-v))))
	      :setter ((setter-error 'circular? self)))
   
   (focus1-u :initform 0.0d0
	     :initarg :focus1-u
	     :initarg focus1-u
	     :type double-float)

   (focus1-v :initform 0.0d0
	     :initarg :focus1-v
	     :initarg focus1-v
	     :type double-float)

   (focus2-u :initform 0.0d0
	     :initarg :focus2-u
	     :initarg :focus2-u
	     :type double-float)

   (focus2-v :initform 0.0d0
	     :initarg :focus2-v
	     :initarg focus2-v
	     :type double-float)

   (focus1 :slot-class :virtual
	   :type vec2
	   :initarg :focus1
	   :initarg focus1
	   :getter ((vec2 (the focus1-u) (the focus1-v)))
	   :setter ((setf (the focus1-u) (vx value)
			  (the focus1-v) (vy value))
		    (values)))

   (focus2 :slot-class :virtual
	   :type vec2
	   :initarg :focus2
	   :initarg focus2
	   :getter ((vec2 (the focus2-u) (the focus2-v)))
	   :setter ((setf (the focus2-u) (vx value)
			  (the focus2-v) (vy value))
		    (values)))

   (focal-distance :slot-class :virtual
		   :type double-float
		   :getter ((vlength (v- (the focus1) (the center))))
		   :setter ())
   
   (semi-major-axis :initform 1.0d0
		    :type double-float
		    :initarg :semi-major-axis
		    :initarg semi-major-axis)

   (major-axis :slot-class :virtual
	       :type double-float
	       :getter ((* 2 (the semi-major-axis)))
	       :setter ())
   
   (semi-minor-axis :slot-class :virtual
		    :type double-float
		    :getter ((sqrt (- (expt (the semi-major-axis) 2) (expt (the focal-distance) 2))))
		    :setter ())
   
   (minor-axis :slot-class :virtual
	       :type double-float
	       :getter ((* 2 (the semi-minor-axis)))
	       :setter ())

   (eccentricity :slot-class :virtual
		 :type double-float
		 :getter ((/ (sqrt (- (expt (the semi-major-axis) 2)
				      (expt (the semi-minor-axis) 2)))
			     (the semi-major-axis)))
				   
		 :setter ())

   (h :slot-class :virtual
      :type double-float
      ;; here is an example of where we would want caching
      :getter ((/ (expt (- (the semi-major-axis) (the semi-minor-axis)) 2)
		  (expt (+ (the semi-major-axis) (the semi-minor-axis)) 2)))
      :setter ((setter-error 'h self)))

   (length :slot-class :virtual
	   :type double-float
	   :getter ((* pi (+ (the semi-major-axis) (the semi-minor-axis))
		       (let ((h (the h)))
			 (loop for n from 0 below 10
			       sum (* (binomial-coefficient-0.5 n) (expt h n))))))
	   :setter ())
		    

   (center :slot-class :virtual
	   :type vec2
	   :initarg :center
	   :initarg center
	   :getter ((v* 0.5d0 (v+ (the focus1) (the focus2))))
	   :setter ((let* ((old-center (the center))
			   (shift (v- value old-center)))
		      (setf (the focus1) (v+ (the focus1) shift)
			    (the focus2) (v+ (the focus2) shift))
		      (values))))

   (location :slot-class :virtual
	     :type vec2
	     :initarg :location
	     :initarg location
	     :getter ((transform (the center) (the coordinate-system)))
	     :setter ((setter-error 'location self)))))

(defun factorial (n)
  (if (<= n 1)
      1
      (* n (factorial (1- n)))))

(defun gamma-m+1/2 (m+1/2)
  (let ((m (- m+1/2 1/2)))
    (labels ((foo (n)
	       (if (< n 1)
		   1
		   (* n (foo (- n 2))))))
      (* #.(sqrt pi) (/ (foo (1- (* 2 m))) (expt 2 m))))))

(defun binomial-coefficient-0.5 (k)
  (/ (gamma-m+1/2 1/2) (* (factorial k) (gamma-m+1/2 (- 1/2 k)))))

(defun binomial-coefficient (n k)
  (cond ((< n 0) (error "< n 0"))
	((or (> k n) (< k 0)) 0)
	((= k 0) 1)
	(t (+ (binomial-coefficient (1- n) (1- k))
	      (binomial-coefficient (1- n) k)))))

(defun monomial-to-bernstein-matrix (n)
  ;; n is the degree of the polynomial
  (let ((array (make-array (list (1+ n) (1+ n)) :initial-element 0)))
    (loop for k from 0 to n
	  do (loop for j from 0 to n
		   when (>= j k)
		     do (setf (aref array j k) (/ (binomial-coefficient (1+ (- n (1+ k))) (- j k))
						  (binomial-coefficient n j)))))
    array))

(defun bernstein-to-monomial-matrix (n)
  ;; todo: cache these matrices in an array where (aref array n) is matrix for n
  ;; n is the degree of the polynomial
  (let ((array (make-array (list (1+ n) (1+ n)) :initial-element 0)))
    (loop for k from 0 to n
	  do (loop for j from 0 to n
		   when (>= j k)
		     do (setf (aref array j k) (* (expt -1 (- j k)) (binomial-coefficient n j) (binomial-coefficient j k)))))
    array))

(defun matrix*vector (matrix vector)
  (let ((n (length vector)))
    (assert (= (second (array-dimensions matrix)) n))
    (flet ((dot (matrix row vector)
	     (loop for i from 0 below n
		   sum (* (aref matrix row i) (aref vector i)))))
      (let* ((m (first (array-dimensions matrix)))
	     (result (make-array m)))
	(loop for row from 0 below m
	      do (setf (aref result row) (dot matrix row vector))
	      finally (return result))))))

(defun monomial-to-bernstein (monomial)
  (let ((matrix (monomial-to-bernstein-matrix (1- (length monomial)))))
    (matrix*vector matrix monomial)))

(defun bernstein-to-monomial (bernstein)
  (let ((matrix (bernstein-to-monomial-matrix (1- (length bernstein)))))
    (matrix*vector matrix bernstein)))

(defun test1 ()
  (let ((monomial #(1 2 3 4 5)))
    (equalp monomial (bernstein-to-monomial (monomial-to-bernstein monomial)))))

(defun convex-hull--2d (points)
  ;; https://en.wikibooks.org/wiki/Algorithm_Implementation/Geometry/Convex_hull/Monotone_chain#C
  (flet ((point< (p1 p2)
	   (or (< (vx p1) (vx p2))
	       (and (= (vx p1) (vx p2))
		    (< (vy p1) (vy p2)))))
	 (det (p1 p2 p3)
	   (- (* (- (vx p2) (vx p1))
		 (- (vy p3) (vy p1)))
	      (* (- (vy p2) (vy p1))
		 (- (vx p3) (vx p1))))))
    (let* ((points (sort (remove-duplicates points :test #'equalp) #'point<))
	   (n (length points))
	   (hull (make-array (* 2 n)))
	   (k 0))

      (when (<= n 1)
	(return-from convex-hull--2d (coerce points 'array)))
    
      (loop for i from 0 below n
	    do (loop
		 while (and (>= k 2)
			    (<= (det (elt hull (- k 2)) (elt hull (- k 1)) (elt points i)) 0.0d0))
		 do (decf k))
	       (setf (elt hull k) (elt points i))
	       (incf k))

      (loop for i from (- n 2) downto 0 with tt = (1+ k)
	    do (loop
		 while (and (>= k tt)
			    (<= (det (elt hull (- k 2)) (elt hull (- k 1)) (elt points i)) 0.0d0))
		 do (decf k))
	       (setf (elt hull k) (elt points i))
	       (incf k))
	 
      (subseq hull 0 k))))

(defun transform-polynomial (polynomial a b)
  ;; transforms variable of polynomial to x=(a + s*(b-a)) and returns polynomial of s in monomial basis
  (let* ((n+1 (length polynomial))
	 (new-poly (make-array n+1 :initial-element 0)))
    (if (= a 0)
	(loop for k from 0 below n+1
	      do (setf (aref new-poly k) (* (expt b k) (aref polynomial k))))

	(let ((intermediate ()))
	  (loop for i from 0 below n+1
		do (let ((new-terms (make-array n+1 :initial-element 0)))
		     (loop for k from 0 to i
			   do (let ((bc (binomial-coefficient i k))
				    (a-pow (expt a (- i k)))
				    (b-minus-a-pow (expt (- b a) k)))
				(setf (aref new-terms k) (* bc a-pow b-minus-a-pow (aref polynomial i)))))
		     (push new-terms intermediate))
		finally (mapcar #'(lambda (terms)
				    (loop for i from 0 below n+1
					  do (incf (aref new-poly i) (aref terms i))))
				intermediate))))
    new-poly))

(defun isolate-roots-vas-cf (f)
  "procedure to return isolated root intervals based on Vincent's method"
  ;; Improving the Performance of the Continued Fractions
  ;; Method Using New Bounds of Positive Roots
  ;; A. G. Akritas, A. W. Strzebonski, P. S. Vigklas
  ;; https://www.semanticscholar.org/reader/87211188ec3548cd115e82442daf2513d5c5aa9a p.267-268

  (let* ((p (map 'vector #'rationalize f))
	 #+NIL(denoms (map 'list #'denominator p))
	 #+NIL(gcd (apply #'gcd denoms)))

    #+NIL(setq p (map 'vector #'(lambda (rat) (* rat gcd)) p))

    (print p)
	
    (flet ((evaluate-polynomial (p x)
	     (loop for i from 0 below (length p)
		   sum (* (aref p i) (expt x i))))

	   (intrv (a b c d)
	     (let ((min)
		   (max))
	       ;; divide by zero,
	       ;; this is a problem
	       (when (zerop c)
		 
		 (setq min (/ (+ a b) d))
		 (setq max most-positive-fixnum))
	       (when (zerop d)
		 (setq min (/ (+ a b) c))
		 (setq max -11))

	       

	       (if min
		   (list min max)
		   (list (min (/ a c) (/ b d)) (max (/ a c) (/ b d))))))

	   (cauchy-bound (p)
	     (let ((temp (map 'list #'(lambda (c)
					(abs (/ c (aref p (1- (length p))))))
			      p)))
	       (1+ (apply #'max temp)))))
  
      (let ((root-list)
	    (interval-stack)
	    alpha
	    a b c d s
	    a1 b1 c1 d1 r p1 s1 
	    a2 b2 c2 d2 p2 s2)

	(tagbody
	 step-1

	   (setq root-list ())

	   (setq s (descartes-rule-of-signs p))

	   (print s)
	   (print p)

	   (when (zerop s)
	     (return-from isolate-roots-vas-cf nil))
	
	   (when (= 1 s)
	     (return-from isolate-roots-vas-cf (list (list 0 (cauchy-bound f)))))

	   (push (list 1 0 0 1 p s) interval-stack)

	 step-2
	   (unless interval-stack
	     (go exit))
	   
	   (multiple-value-setq (a b c d p s) (values-list (pop interval-stack)))

	 step-3
	   (setq alpha (/ (cauchy-bound p)))

	   (print alpha)

	 step-4

	   (when (> alpha 16)
	     (setq p (transform-polynomial p 0 alpha))
	     (setq a (* alpha a))
	     (setq c (* alpha c))
	     (setq alpha 1))

	 step-5

	   (when (>= alpha 1)
	     (setq p (transform-polynomial p alpha (1+ alpha)))
	     (setq b (+ (* alpha a) b))
	     (setq d (+ (* alpha c) d)))

	   (when (zerop (evaluate-polynomial p 0))
	     (let ((root (/ b d)))
	       (push (list root root) root-list)
	       (setq p (subseq p 1))))

	   (setq s (descartes-rule-of-signs p))
	   
	   (when (zerop s)
	     (go step-2))
	   
	   (when (= 1 s)
	     (push (intrv a b c d) root-list)
	     (go step-2))

	 step-6

	   (setq p1 (transform-polynomial p 1 2))

	   (setq a1 a)
	   (setq b1 (+ a b))
	   (setq c1 c) 
	   (setq d1 (+ c d))
	   (setq r 0)

	   (when (zerop (evaluate-polynomial p1 0))
	     (let ((root (/ b1 d1)))
	       (push (list root root) root-list)
	       (setq p1 (subseq p1 1))
	       (setq r 1)))

	   (print p1)
	   (setq s1 (descartes-rule-of-signs p1))
	   (print 's1)
	   (print s1)

	   (setq s2 (- s s1 r))  ;; (- s s1 r) ;;typo?
	   (print 'r)
	   (print r)

	   (setq a2 b)
	   (setq b2 (+ a b))
	   (setq c2 d)
	   (setq d2 (+ c d))

	 step-7
	   (print 's2)
	   (print s2)

	   (when (> s2 1)
	     (setq p2 (transform-polynomial (reverse p) 1 2))
	     
	     (when (zerop (evaluate-polynomial p2 0))
	       (setq p2 (subseq p2 1)))
	     
	     (setq s2 (descartes-rule-of-signs p2))
	   
	     ;;step-8
	     (when (< s1 s2)
	       (let ((a-temp a1)
		     (b-temp b1)
		     (c-temp c1)
		     (d-temp d1)
		     (p-temp p1)
		     (s-temp s1))
		 (setq a1 a2
		       b1 b2
		       c1 c2
		       d1 d2
		       p1 p2
		       s1 s2)
		 (setq a2 a-temp
		       b2 b-temp
		       c2 c-temp
		       d2 d-temp
		       p2 p-temp
		       s2 s-temp)))
	   
	     ;;step-9

	     (when (zerop s1)
	       (go step-2))
	   
	     (if (= 1 s1)
		 (progn 
		 (push (intrv a1 b1 c1 d1) root-list))
		 (push (list a1 b1 c1 d1 p1 s1) interval-stack))
	     
	     ;;step-10

	     (when (zerop s2)
	       (go step-2))

	     (if (= 1 s2)
		 (progn 
		 (push (intrv a2 b2 c2 d2) root-list))
		 (push (list a2 b2 c2 d2 p2 s2) interval-stack))

	     (go step-2))

	   (when (zerop s1)
	     (go step-2))
	   
	   (if (= 1 s1)
	       (progn 	     

	       (push (intrv a1 b1 c1 d1) root-list))
	       (push (list a1 b1 c1 d1 p1 s1) interval-stack))

	   (go step-2)
	   
	 exit)

	(nreverse root-list)
	#+NIL
	(mapcar #'(lambda (entry) ;; what makes you think you can do this?
		    (list (/ (car entry) gcd) (/ (cadr entry) gcd))) (nreverse root-list))))))

(defun roots-of-2d-bezier (control-points intervals epsilon)
  (apply #'append
	 (mapcar #'(lambda (interval)
		     (converge-on-root control-points (car interval) (cadr interval) epsilon))
		 intervals)))

(defun converge-on-root (control-points start end epsilon)
  (if (< (- end start) epsilon)
      (list (vx (decasteljau1-2d control-points (/ (+ start end) 2))))
      (flet ((has-sign-change? (a b)
	       (let ((val-a (decasteljau1-2d control-points a))
		     (val-b (decasteljau1-2d control-points b)))
		 (not (= (signum (vy val-a)) (signum (vy val-b)))))))
	(let ((middle (/ (+ start end) 2)))
	   (if (has-sign-change? start middle)
	       (converge-on-root control-points start middle epsilon)
	       (converge-on-root control-points middle end epsilon))))))

(defun evaluate-polynomial (p x)
  (loop for i from 0 below (length p)
	sum (* (aref p i) (expt x i))))

(defun converge-on-root2 (polynomial start end epsilon)
  (if (< (- end start) epsilon)
      (list (coerce (/ (+ start end) 2) 'double-float))
      (flet ((has-sign-change? (a b)
	       (let ((val-a (evaluate-polynomial polynomial a))
		     (val-b (evaluate-polynomial polynomial b)))
		 (not (= (signum val-a) (signum val-b))))))
	(let ((middle (/ (+ start end) 2)))
	  (if (has-sign-change? start middle)
	      (converge-on-root2 polynomial start middle epsilon)
	      (converge-on-root2 polynomial middle end epsilon))))))


(defun ray-intersects-line-segment? (origin direction point-a point-b)
  (let* ((p2 (v+ origin direction))
	 (x2 (vx p2))
	 (y2 (vy p2))
	 (x1 (vx origin))
	 (y1 (vy origin))
	 (x3 (vx point-a))
	 (y3 (vy point-a))
	 (x4 (vx point-b))
	 (y4 (vy point-b))
	 (x3-x4 (- x3 x4))
	 (y3-y4 (- y3 y4))
	 (denom (- (* (- x1 x2) y3-y4) (* (- y1 y2) x3-x4))))
    (if (zerop denom)
	nil
	(let ((s (/ (- (* (- x1 x3) y3-y4) (* (- y1 y3) x3-x4))
		    denom))
	      (u (/ (- (* (- x1 x3) (- y1 y2)) (* (- y1 y3) (- x1 x2)))
		    denom)))
	  (when (and (<= 0 s 1) (<= 0 u 1))
	    s)))))

(defun intersection-2d-line/2d-line (line-a line-b)
  (when (eq (send line-a coordinate-system) (send line-b coordinate-system))
    (let ((intersection (ray-intersects-line-segment? (send line-a start) (send line-a span) (send line-b start) (send line-b end))))
      (when intersection
	(evaluate1 line-a intersection)))))

(defmethod intersection ((line-a 2d-line) (line-b 2d-line))
  (intersection-2d-line/2d-line line-a line-b))	

(defun convex-polygon-domain (polygon)
  (loop for i from 0 below (1- (length polygon))
	with a = nil
	with b = nil
	do (if (null a)
	       (setq a (ray-intersects-line-segment? (vec2 0 0) (vec2 1 0) (elt polygon i) (elt polygon (1+ i))))
	       (if (null b)
		   (setq b (ray-intersects-line-segment? (vec2 0 0) (vec2 1 0) (elt polygon i) (elt polygon (1+ i))))
		   (return (values (min a b) (max a b)))))
	finally (return (and b (values (min a b) (max a b))))))

(defun descartes-rule-of-signs (polynomial)
  (let ((n 0)
	(last-sign)
	(next-sign))
    
    (do ((i 0 (1+ i)))
	((= i (1- (length polynomial))))

      (unless (zerop (elt polynomial i))
	(setq last-sign (signum (elt polynomial i))))

      (unless (zerop (elt polynomial (1+ i)))
	(setq next-sign (signum (elt polynomial (1+ i))))

	(when last-sign
	  (when (/= last-sign next-sign)
	    (incf n)))))
    n))
       

(defun roots (polynomial &optional (epsilon 1.0d-15))
  (let* ((intervals (isolate-roots-vas-cf polynomial)))
    (sort (apply #'append
		 (mapcar #'(lambda (interval)
			     (converge-on-root2 polynomial (car interval) (cadr interval) epsilon))
			 intervals))
	  #'<)))
    

(defun roots-by-projected-polyhedron (polynomial a b &optional (epsilon 1.0d-15))
  (let* ((degree (1- (length polynomial)))
	 (transformed (transform-polynomial polynomial a b))
	 (bernstein-basis-coefficients (monomial-to-bernstein transformed))
	 (control-points (let ((array (make-array (1+ degree))))
			   (loop for i from 0 to degree
				 do (setf (aref array i) (vec2 (/ i degree) (aref bernstein-basis-coefficients i))))
			   array))
	 (intervals (isolate-roots-vas-cf (map 'vector #'vy control-points)))
	 (convex-hull (convex-hull--2d control-points)))
    ;;(multiple-value-bind (start end) (convex-polygon-domain convex-hull)
    ;;(unless end
    ;;(return-from roots-by-projected-polyhedron nil))
    (let ((roots (roots-of-2d-bezier control-points intervals epsilon)))
      (sort (mapcar #'(lambda (s) (+ a (* s (- b a)))) roots) #'<))))

(defmethod 3d-math::mdet ((matrix simple-array))
  (multiple-value-bind (LU P s) (mlu matrix)
    (declare (ignore P))
    (let ((nrows (first (array-dimensions LU))))
      (loop for det = 1 then (* (expt -1 s) det (aref lu i i))
	    for i from 0 below nrows
	    finally (return det)))))

(defmethod 3d-math::mcopy ((matrix simple-array))
  (destructuring-bind (rows cols) (array-dimensions matrix)
    (let ((result (make-array `(,rows ,cols) :element-type (array-element-type matrix))))
      (loop for i from 0 below rows
	    do (loop for j from 0 below cols
		     do (setf (aref result i j) (aref matrix i j)))
	    finally (return result)))))

(defun meyen (n)
  (let ((m (make-array (list n n) :initial-element 0)))
    (loop for i from 0 below n
	  do (setf (aref m i i) 1)
	  finally (return m))))

(defun mlu (matrix &optional (pivot? t))
  ;; We're using the Crout method for LU decomposition.
  ;; See https://en.wikipedia.org/wiki/Crout_matrix_decomposition
  ;; this comes from Shimera's 3d-matrices library.
  (flet ((swap-row (m k l)
	   (let ((s (second (array-dimensions m))))
	     (dotimes (i s m)
	       (rotatef (aref m k i) (aref m l i))))))
	 
    (let* ((lu (mcopy matrix))
	   (n (second (array-dimensions matrix)))
	   (p (meyen n))
	   (s 0)
	   (scale (make-array n :initial-element 0)))
      ;; discover the largest element and save the scaling
      (loop for i from 0 below n
	    for big = 0
	    do (loop for j from 0 below n
		     for temp = (abs (aref lu i j))
		     when (< big temp)
		       do (setq big temp))
	       (when (= 0 big)
		 (error "The matrix is singular in ~a:" i))
	       (setf (aref scale i) big))
      ;; crout
      (dotimes (j n (values lu p s))
	;; part A without diagonal
	(loop for i from 0 below j
	      for sum = (aref lu i j)
	      do (loop for k from 0 below i
		       do (decf sum (* (aref lu i k) (aref lu k j))))
		 (setf (aref lu i j) sum))
	(let ((imax j))
	  ;; diag + pivot search
	  (loop with big = 0
		for i from j below n
		for sum = (aref lu i j)
		do (loop for k from 0 below j
			 do (decf sum (* (aref lu i k) (aref lu k j))))
		   (setf (aref lu i j) sum)
		   (when pivot?
		     (let ((temp (* (abs sum) (aref scale i))))
		       (when (<= big temp)
			 (setf big temp)
			 (setq imax i)))))
	  ;; pivot swap
	  (unless (= j imax)
	    (incf s)
	    (swap-row lu imax j)
	    (swap-row p  imax j)
	    (setf (aref scale imax) (aref scale j)))
	  ;; division
	  (when (< j (1- n))
	    (let ((div (/ (aref lu j j))))
	      (loop for i from (1+ j) below n
		    do (setf (aref lu i j) (* (aref lu i j) div))))))))))
	    
(defun sylvester-matrix (p q)
  ;; https://en.wikipedia.org/wiki/Sylvester_matrix
  (let* ((m (1- (length p)))
	 (n (1- (length q))))
    (assert (not (zerop (elt p m))))
    (assert (not (zerop (elt q n))))
    (let* ((dim (+ n m))
	   (matrix (make-array (list dim dim) :initial-element 0)))
      
      (loop for i from 0 below n
	    do (loop for j from 0 to m
		     for l from i
		     do (setf (aref matrix i l) (elt p j))))

      (loop for i from 0 below m
	    for k from n
	    do (loop for j from 0 to n
		     for l from i
		     do (setf (aref matrix k l) (elt q j))))
      matrix)))

(defun sylvester-resultant (p q)
  ;; if the sylvester resultant of two polynomials, p and q, is zero,
  ;; then there exists some common root between the two polynomials
  ;; https://sci-hub.se/10.1016/B978-044451104-1/50016-2
  ;; section 15.3.1
  (mdet (sylvester-matrix p q)))


(defun bezout-matrix (p q)
  ;; https://en.wikipedia.org/wiki/B%C3%A9zout_matrix
  (let ((n+1 (max (length p) (length q))))
    (when (/= n+1 (length p))
      (let ((p-prime (make-array n+1 :element-type (array-element-type p)
				     :initial-element (coerce 0 (array-element-type p)))))
	(loop for i from 0 below (length p)
	      do (setf (aref p-prime i) (aref p i))
	      finally (setq p p-prime))))
    (when (/= n+1 (length q))
      (let ((q-prime (make-array n+1 :element-type (array-element-type q)
				     :initial-element (coerce 0 (array-element-type q)))))
	(loop for i from 0 below (length q)
	      do (setf (aref q-prime i) (aref q i))
	      finally (setq q q-prime))))
    (let* ((n (1- n+1))
	   (b (make-array (list n n))))
      (loop for i from 0 below n
	    do (loop for j from 0 below n
		     do (setf (aref b i j)
			      (loop for k from 0 to (min i (- n 1 j))
				    sum (- (* (aref p (+ j k 1)) (aref q (- i k)))
					   (* (aref p (- i k)) (aref q (+ j k 1)))))))
	    finally (return b)))))

(defun bezout-resultant (p q)
  ;; if the bezout resultant of two polynomials, p and q, is zero,
  ;; then there exists some common root of the polynomials
  ;; https://sci-hub.se/10.1016/B978-044451104-1/50016-2
  ;; section 15.3.2
  (mdet (bezout-matrix p q)))


(defun dixon-matrix (p q)
  (let* ((m (1- (length p)))
	 (n (1- (length q)))
	 (D (make-array (list (1+ n) (1+ m)) :initial-element 0)))

    (loop for i from 0 to n
	  do (loop for j from 0 to m
		   do (setf (aref D i j) (* (expt -1 (+ i j)) (aref p i) (aref q j))))
	  finally (return D))))
  
			      
      

(defun quadratic-formula (a b c)
  (let ((discriminant (sqrt (- (expt b 2) (* 4 a c))))
	(2a (* 2 a))
	(-b (- b)))
    (values (/ (+ -b discriminant) 2a)
	    (/ (- -b discriminant) 2a))))
	

(defun intersection-2d-line/circle-1 (line circle)
  (let* ((p0 (send line start))
	 (p1 (send line end))
	 (c (send circle center))
	 (x0 (vx p0))
	 (y0 (vy p0))
	 (x1 (vx p1))
	 (y1 (vy p1))
	 (xc (vx c))
	 (yc (vy c))
	 (radius (send circle radius))
	 (C0 (+ (- (expt radius 2))
		(expt x0 2) (- (* 2 x0 xc)) (expt xc 2)
		(expt y0 2) (- (* 2 y0 yc)) (expt yc 2)))
	 (C1 (+ (- (* 2 (expt x0 2))) (* 2 x0 x1) (* 2 x0 xc) (- (* 2 x1 xc))
		(- (* 2 (expt y0 2))) (* 2 y0 y1) (* 2 y0 yc) (- (* 2 y1 yc))))
	 (C2 (+ (expt x0 2) (- (* 2 x0 x1)) (expt x1 2)
		(expt y0 2) (- (* 2 y0 y1)) (expt y1 2))))
    ;; returns intersection in parameter space of line
    (quadratic-formula C2 C1 C0)))

(defun intersection-2d-line/circle (line circle)
  (when (eq (send line coordinate-system) (send circle coordinate-system))
    (let ((roots (intersection-2d-line/circle-1 line circle)))
      (apply #'values (mapcar #'(lambda (root) (evaluate1 line root)) roots)))))

(defmethod intersection ((line 2d-line) (circle circle))
  (intersection-2d-line/circle line circle))

(defmethod intersection ((circle circle) (line 2d-line))
  (intersection-2d-line/circle line circle))
  
(defun intersection-2d-line/ellipse-1 (line ellipse)
  (let* ((p0 (send line start))
	 (p1 (send line end))
	 (c (send ellipse center))
	 (a (send ellipse semi-major-axis))
	 (b (send ellipse semi-minor-axis))
	 (a^2 (expt a 2))
	 (b^2 (expt b 2))
	 (x0 (vx p0))
	 (y0 (vy p0))
	 (x1 (vx p1))
	 (y1 (vy p1))
	 (xc (vx c))
	 (yc (vy c))
	 (C0 (1- (+ (/ (+ (expt x0 2) (- (* 2 x0 xc)) (expt xc 2)) a^2)
		    (/ (+ (expt y0 2) (- (* 2 y0 yc)) (expt yc 2)) b^2))))
	 (C1 (+ (/ (+ (- (* 2 (expt x0 2))) (* 2 x0 x1) (* 2 x0 xc) (- (* 2 x1 xc))) a^2)
		(/ (+ (- (* 2 (expt y0 2))) (* 2 y0 y1) (* 2 y0 yc) (- (* 2 y1 yc))) b^2)))
	 (C2 (+ (/ (+ (expt x0 2) (- (* 2 x0 x1)) (expt x1 2)) a^2)
		(/ (+ (expt y0 2) (- (* 2 y0 y1)) (expt y1 2)) b^2))))
    ;; returns intersection in parameter space of line
    (quadratic-formula C2 C1 C0)))

(defun intersection-2d-line/ellipse (line ellipse)
  (when (eq (send line coordinate-system) (send ellipse coordinate-system))
    (let ((roots (intersection-2d-line/ellipse-1 line ellipse)))
      (apply #'values (mapcar #'(lambda (root) (evaluate1 line root)) roots)))))

(defmethod intersection ((line 2d-line) (ellipse ellipse))
  (intersection-2d-line/ellipse line ellipse))

(defmethod intersection ((ellipse ellipse) (line 2d-line))
  (intersection-2d-line/ellipse line ellipse))

(defun intersection-planar-cubic-bezier/ellipse-1 (bezier ellipse)
  (let* ((cpoints (send bezier control-points))
	 (p0 (aref cpoints 0))
	 (p1 (aref cpoints 1))
	 (p2 (aref cpoints 2))
	 (p3 (aref cpoints 3))
	 (p0x (vx p0))
	 (p0y (vy p0))
	 (p1x (vx p1))
	 (p1y (vy p1))
	 (p2x (vx p2))
	 (p2y (vy p2))
	 (p3x (vx p3))
	 (p3y (vy p3))
	 (a (send ellipse semi-major-axis))
	 (b (send ellipse semi-minor-axis))
	 (center (send ellipse center))
	 (xc (vx center))
	 (yc (vy center))
	 (a^2 (expt a 2))
	 (b^2 (expt b 2))
	
	 (C6 (+ (/ (+ (expt p0x 2) (* -6 p0x p1x) (* 9 (expt p1x 2)) (* 6 p0x p2x) (* -18 p1x p2x) (* 9 (expt p2x 2)) (* -2 p0x p3x) (* 6 p1x p3x) (* -6 p2x p3x) (expt p3x 2)) a^2)
		(/ (+ (expt p0y 2) (* -6 p0y p1y) (* 9 (expt p1y 2)) (* 6 p0y p2y) (* -18 p1y p2y) (* 9 (expt p2y 2)) (* -2 p0y p3y) (* 6 p1y p3y) (* -6 p2y p3y) (expt p3y 2)) b^2)))
	
	 (C5 (+ (/ (+ (* -6 (expt p0x 2)) (* 30 p0x p1x) (* -36 (expt p1x 2)) (* -24 p0x p2x) (* 54 p1x p2x) (* -18 (expt p2x 2)) (* 6 p0x p3x) (* -12 p1x p3x) (* 6 p2x p3x)) a^2)
		(/ (+ (* -6 (expt p0y 2)) (* 30 p0y p1y) (* -36 (expt p1y 2)) (* -24 p0y p2y) (* 54 p1y p2y) (* -18 (expt p2y 2)) (* 6 p0y p3y) (* -12 p1y p3y) (* 6 p2y p3y)) b^2)))

	 (C4 (+ (/ (+ (* 15 (expt p0x 2)) (* -60 p0x p1x) (* 54 (expt p1x 2)) (* 36 p0x p2x) (* -54 p1x p2x) (* 9 (expt p2x 2)) (* -6 p0x p3x) (* 6 p1x p3x)) a^2)
		(/ (+ (* 15 (expt p0y 2)) (* -60 p0y p1y) (* 54 (expt p1y 2)) (* 36 p0y p2y) (* -54 p1y p2y) (* 9 (expt p2y 2)) (* -6 p0y p3y) (* 6 p1y p3y)) b^2)))

	 (C3 (+ (/ (+ (* -20 (expt p0x 2)) (* 60 p0x p1x) (* -36 (expt p1x 2)) (* -24 p0x p2x) (* 18 p1x p2x) (* 2 p0x p3x) (* -2 p0x xc) (* 6 p1x xc) (* -6 p2x xc) (* 2 p3x xc)) a^2)
		(/ (+ (* -20 (expt p0y 2)) (* 60 p0y p1y) (* -36 (expt p1y 2)) (* -24 p0y p2y) (* 18 p1y p2y) (* 2 p0y p3y) (* -2 p0y yc) (* 6 p1y yc) (* -6 p2y yc) (* 2 p3y yc)) b^2)))

	 (C2 (+ (/ (+ (* 15 (expt p0x 2)) (* -30 p0x p1x) (* 9 (expt p1x 2)) (* 6 p0x p2x) (* 6 p0x xc) (* -12 p1x xc) (* 6 p2x xc)) a^2)
		(/ (+ (* 15 (expt p0y 2)) (* -30 p0y p1y) (* 9 (expt p1y 2)) (* 6 p0y p2y) (* 6 p0y yc) (* -12 p1y yc) (* 6 p2y yc)) b^2)))

	 (C1 (+ (/ (+ (* -6 (expt p0x 2)) (* 6 p0x p1x) (* -6 p0x xc) (* 6 p1x xc)) a^2)
		(/ (+ (* -6 (expt p0y 2)) (* 6 p0y p1y) (* -6 p0y yc) (* 6 p1y yc)) b^2)))

	 (C0 (1- (+ (/ (+ (expt p0x 2) (* 2 p0x xc) (expt xc 2)) a^2)
		    (/ (+ (expt p0y 2) (* 2 p0y yc) (expt yc 2)) b^2)))))
    
    (roots (vector C0 C1 C2 C3 C4 C5 C6))))

(defun intersection-planar-rational-quadratic-bezier/planar-rational-quadratic-bezier-1 (bezier-a bezier-b)
  (let* ((cpoints-a (send bezier-a homogeneous-control-points))
	 (cpoints-b (send bezier-b homogeneous-control-points))
	 (a0 (aref cpoints-a 0))
	 (a1 (aref cpoints-a 1))
	 (a2 (aref cpoints-a 2))
	 (b0 (aref cpoints-b 0))
	 (b1 (aref cpoints-b 1))
	 (b2 (aref cpoints-b 2))
	 (xa0 (rationalize (vx a0)))
	 (ya0 (rationalize (vy a0)))
	 (wa0 (rationalize (vz a0)))
	 (xa1 (rationalize (vx a1)))
	 (ya1 (rationalize (vy a1)))
	 (wa1 (rationalize (vz a1)))
	 (xa2 (rationalize (vx a2)))
	 (ya2 (rationalize (vy a2)))
	 (wa2 (rationalize (vz a2)))
	 (xb0 (rationalize (vx b0)))
	 (yb0 (rationalize (vy b0)))
	 (wb0 (rationalize (vz b0)))
	 (xb1 (rationalize (vx b1)))
	 (yb1 (rationalize (vy b1)))
	 (wb1 (rationalize (vz b1)))
	 (xb2 (rationalize (vx b2)))
	 (yb2 (rationalize (vy b2)))
	 (wb2 (rationalize (vz b2))))
    (roots (vector (rational-quadratic-bezier/quadratic-bezier-c0
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-quadratic-bezier/quadratic-bezier-c1
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-quadratic-bezier/quadratic-bezier-c2
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-quadratic-bezier/quadratic-bezier-c3
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
		   (rational-quadratic-bezier/quadratic-bezier-c4
		    xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)))))

(defmethod intersection ((bezier-a bezier-plane-curve) (bezier-b bezier-plane-curve))
  (intersection-planar-rational-bezier/planar-rational-bezier bezier-a bezier-b))

(defun intersection-planar-rational-bezier/planar-rational-bezier (bezier-a bezier-b)
  (when (eq (send bezier-a coordinate-system) (send bezier-b coordinate-system))
    (let ((deg-a (send bezier-a degree))
	  (deg-b (send bezier-b degree)))

      (cond ((and (= deg-a 2) (= deg-b 2))
	     (let ((roots
		     (intersection-planar-rational-quadratic-bezier/planar-rational-quadratic-bezier-1
		      bezier-a bezier-b)))
	       (mapcar #'(lambda (root)
			   (evaluate1 bezier-b root)) roots)))))))
  
	 
	      

(defun implicit-equation-of-a-planar-line (point-1 point-2)
  "return a, b and c in normalized implicit equation of line as ax + by + c = 0, with a^2 + b^2 = 1"
  (let* ((delta-y (- (vy point-2) (vy point-1)))
	 (delta-x (- (vx point-2) (vx point-1)))
	 (m (/ delta-y delta-x))
	 (abs-a (/ (abs m) (sqrt (1+ (expt m 2)))))
	 (a (* (signum delta-y)  abs-a))
	 (abs-b (sqrt (- 1.0d0 (expt a 2))))
	 (b (- (* (signum delta-x) abs-b)))
	 (c (- (+ (* a (vx point-1)) (* b (vy point-1))))))
    (vector a b c)))


(defun implicit-equation-of-a-planar-line-1 (point-1 point-2)
  "return a, b and c in normalized implicit equation of line as ax + by + c = 0, with a^2 + b^2 = 1"
  (let* ((h-point-1 (vec3 (vx point-1) (vy point-1) 1))
	 (h-point-2 (vec3 (vx point-2) (vy point-2) 1))
	 (line-eq (vc h-point-1 h-point-2))
	 (W (vz line-eq))
	 (a&b (vunit (vec2 (/ (vx line-eq) W) (/ (vy line-eq) W)))))
    (vector (vx a&b) (vy a&b) (- (v. a&b point-1)))))


(defclass arc (2d-mixin conic-section-mixin entity-mixin)
  ((degenerate? :slot-class :virtual
		:type boolean
		:getter ((or (= 0.0d0 (the radius))
			     (= (the end-angle) (the start-angle))))
		:setter ((setter-error 'degenerate? self)))

   (closed? :slot-class :virtual
	    :type boolean
	    :getter ((= 2pi (- (the end-angle) (the start-angle))))
	    :setter ((setter-error 'closed? self)))
   
   (periodic? :slot-class :virtual
	      :type boolean
	      :getter (t)
	      :setter ((setter-error 'periodic? self)))

   (orientation :initform :ccw
		:type symbol
		:initarg :orientation
		:initarg orientation)

   (center-u :initform 0.0d0
	     :type double-float
	     :initarg :center-u
	     :initarg center-u)

   (center-v :initform 0.0d0
	     :type double-float
	     :initarg :center-v
	     :initarg center-v)

   (start-u :initform 0.0d0
	    :type double-float
	    :initarg :start-u
	    :initarg start-u)

   (start-v :initform 0.0d0
	    :type double-float
	    :initarg :start-v
	    :initarg start-v)

   (end-u :initform 0.0f0
	  :type double-float
	  :initarg :end-u
	  :initarg end-u)

   (end-v :initform 0.0f0
	  :type double-float
	  :initarg :end-v
	  :initarg end-v)

   (center :slot-class :virtual
	   :type vec2
	   :getter ((vec2 (the center-u) (the center-v)))
	   :setter ((declare (type vec2 value))
		    (setf (the center-u) (vx value)
			  (the center-v) (vy value))
		    (values)))

   (start-point :slot-class :virtual
		:type vec2
		:getter ((vec2 (the start-u) (the start-v)))
		:setter ((declare (type vec2 value))
			 (setf (the start-u) (vx value)
			       (the start-v) (vy value))
			 (values)))

   (end-point :slot-class :virtual
	      :type vec2
	      :getter ((vec2 (the end-u) (the end-v)))
	      :setter ((declare (type vec2 value))
		       (setf (the end-u) (vx value)
			     (the end-v) (vy value))
		       (values)))

   (%center-to-start :slot-class :virtual
		     :type vec2
		     :getter ((v- (the start-point) (the center)))
		     :setter ((setter-error '%center-to-start self)))

   (%center-to-end :slot-class :virtual
		   :type vec2
		   :getter ((v- (the end-point) (the center)))
		   :setter ((setter-error '%center-to-end self)))

   (radius :slot-class :virtual
	   :type double-float
	   :getter ((min (vlength (the %center-to-start)) (vlength (the %center-to-end))))
	   :setter ((declare (type double-float value))
		    (let ((center (the center))
			  (center-to-start (the %center-to-start))
			  (center-to-end   (the %center-to-end)))
		    (setf (the start-point) (+ center (v* value (vunit center-to-start))))
		    (setf (the end-point)   (+ center (V* value (vunit center-to-end)))))))
   
   (start-angle :slot-class :virtual
		:type double-float
		:getter ((let ((vec (the %center-to-start)))
			   (atan (vy vec) (vx vec))))
		:setter ((let ((dir (vec2 (cos value) (sin value)))
			       (radius (the radius)))
			   (setf (the start-point) (v+ (the center) (v* radius dir))))))
   
   (end-angle :slot-class :virtual
	      :type double-float
	      :getter ((let ((vec (the %center-to-end)))
			 (atan (vy vec) (vx vec))))
	      :setter ((let ((dir (vec2 (cos value) (sin value)))
			     (radius (the radius)))
			 (setf (the end-point) (v+ (the center) (v* radius dir))))))

   (delta-angle :slot-class :virtual
		:type double-float
		:getter ((let* ((start (the start-angle))
				(end (the end-angle))
				(a (- end start)))
			   (if (eq (the orientation) :ccw)
			       (if (< a 0)
				   (+ 2pi a)
				   a)
			       (if (< a 0)
				   a
				   (- a 2pi)))))
		:setter ((setter-error 'delta-angle self)))

   (length :slot-class :virtual
	   :type double-float
	   :getter ((* (abs (the delta-angle)) (the radius)))
	   :setter ((setter-error 'length self)))
   
   (domain :slot-class :virtual
	   :type cl:list
	   :getter ((let ((start (the start-angle)))
		      (if (eq (the orientation) :ccw)
			  (list (mod start 2pi) (+ (mod start 2pi) (the delta-angle)))
			  (list (+ (mod start 2pi) (the delta-angle)) (mod start 2pi)))))			  
	   :setter ((setter-error 'domain self)))))

(defmethod draw ((self arc))
  (let* ((center (the center))
	 (radius (the radius))
	 (plane  (the coordinate-system))
	 (matrix (send plane matrix))
	 (start-angle (the start-angle)))
    (let ((vertices
	    (loop repeat 200 for i from 0
		  with theta = start-angle
		  with step  = (/ (the delta-angle) 199.0d0)
		  append (let* ((angle (+ theta (* i step)))
				(coord-x (+ (vx center) (* radius (cos angle))))
				(coord-y (+ (vy center) (* radius (sin angle))))
				(coord (safe-euclid (m* matrix (vec4 coord-x coord-y 0.0d0 1.0d0)))))
			   (list (krma::clampf (vx coord)) (krma::clampf (vy coord)) (krma::clampf (vz coord)))))))
      (krma::add-3d-polyline vertices :color (or (the color) #x000000ff) :closed? nil :object-id (the krma.gui::object-id))
      (values))))

(defclass object-snap-mixin ()
  ((object)
   (pick-location)))

(defclass nearest (object-snap-mixin)
  ())

(defclass perpendicular (object-snap-mixin)
  ())

(defclass tangent (object-snap-mixin)
  ())

#+NIL
(defclass intersection (object-snap-mixin)
  ((object2)
   (pick-location2)))

(defclass center (object-snap-mixin)
  ())

(defclass quadrant (object-snap-mixin)
  ())

(defclass midpoint (object-snap-mixin)
  ())

(defclass endpoint (object-snap-mixin)
  ())

(defmacro %circle-from-3pts-code ((start-point interior-point end-point) &body body)
  ;; https://web.archive.org/web/20161011113446/http://www.abecedarical.com/zenosamples/zs_circle3pts.html
  `(progn
     (when (or (v= ,start-point ,interior-point)
	       (v= ,interior-point ,end-point)
	       (v= ,start-point ,end-point))
       (error "points are degenerate"))
     (labels ((det2x2 (a b
		       c d)
		(- (* a d) (* b c)))
	      (det3x3 (a b c
		       d e f
		       g h i)
		(+ (* a (det2x2 e f
				h i))
		   (- (* b (det2x2 d f
				   g i)))
		   (* c (det2x2 d e
				g h)))))
	     
       (let* ((a22 (vx ,start-point))
	      (a23 (vy ,start-point))
	      (a21 (+ (* a22 a22) (* a23 a23)))
	      (a24 1.0d0)
	      (a32 (vx ,interior-point))
	      (a33 (vy ,interior-point))
	      (a31 (+ (* a32 a32) (* a33 a33)))
	      (a34 1.0d0)
	      (a42 (vx ,end-point))
	      (a43 (vy ,end-point))
	      (a41 (+ (* a42 a42) (* a43 a43)))
	      (a44 1.0d0)
	      (m11 (det3x3 a22 a23 a24
			   a32 a33 a34
			   a42 a43 a44)))
	     
	 (when (= 0.0d0 m11)
	   (error "points are collinear"))

	 (let* ((m12 (det3x3 a21 a23 a24
			     a31 a33 a34
			     a41 a43 a44))
		(m13 (det3x3 a21 a22 a24
			     a31 a32 a34
			     a41 a42 a44))
		(m14 (det3x3 a21 a22 a23
			     a31 a32 a33
			     a41 a42 a43))
		(center-u (* 0.5 (/ m12 m11)))
		(center-v (* -0.5 (/ m13 m11)))
		(radius (sqrt (+ (* center-u center-u) (* center-v center-v) (/ m14 m11))))
		(center (vec2 center-u center-v))
		(start-to-interior (vec3 (- (vx ,interior-point) (vx ,start-point))
					 (- (vy ,interior-point) (vy ,start-point))
					 0))
		(interior-to-end (vec3 (- (vx ,end-point) (vx ,interior-point))
				       (- (vy ,end-point) (vy ,interior-point))
				       0))
		(counterclockwise? (plusp (vz (vc start-to-interior interior-to-end)))))

	   ,@body)))))

(defmethod initialize-instance ((self arc) &rest initargs &key &allow-other-keys)
  (let ((start-point (or (getf initargs :start-point)
			 (getf initargs 'start-point)))
	(end-point (or (getf initargs :end-point)
		       (getf initargs 'end-point)))
	(interior-point (or (getf initargs :interior-point)
			    (getf initargs 'interior-point)))
	(start-angle (or (getf initargs :start-angle)
			 (getf initargs 'start-angle)))
	(end-angle (or (getf initargs :end-angle)
		       (getf initargs 'end-angle)))
	(center (or (getf initargs :center)
		    (getf initargs 'center)))
	(radius (or (getf initargs :radius)
		    (getf initargs 'radius)))
	(orientation (or (getf initargs :orientation)
			 (getf initargs 'orientation)))
	(plane (or (getf initargs :coordinate-system)
		   (getf initargs 'coordinate-system))))

    (cond ((and start-point end-point center)

	   (unless orientation
	     (setq orientation :ccw))

	   (when radius
	     (assert (plusp radius)))
	   
	   (call-next-method self
			     :orientation orientation
			     :center-u (vx center)
			     :center-v (vy center)
			     :start-u (vx start-point)
			     :start-v (vy start-point)
			     :end-u (vx end-point)
			     :end-v (vy end-point)
			     :coordinate-system plane)
	   (when radius
	     (setf (the radius) radius))
	   
	   self)

	  ((and start-point interior-point end-point)

	   (when (or start-angle end-angle center radius)
	     (error "arc specification is overconstrained ~S
choose start-point, interior-point, end-point OR
choose center, start-point, end-point, orientation OR
choose center, radius, start-angle, end-angle, orientation." initargs))	   
	   
	   (%circle-from-3pts-code (start-point interior-point end-point)

	     (declare (ignore radius))

	     (call-next-method self
			       :orientation (if counterclockwise?
						:ccw
						:cw)
			       :center-u (vx center)
			       :center-v (vy center)
			       :start-u (vx start-point)
			       :start-v (vy start-point)
			       :end-u (vx end-point)
			       :end-v (vy end-point)
			       :coordinate-system plane)))
	  
	  ((and center radius start-angle end-angle)

	   (unless orientation
	     (setq orientation :ccw))
	   
	   (assert (or (eq orientation :cw)
		       (eq orientation :ccw)))

	   (let ((start-point (v+ (the center) (vec2 (cos start-angle) (sin start-angle))))
		 (end-point   (v+ (the center) (vec2 (cos end-angle) (sin end-angle)))))
	   	   
	     (call-next-method self
			       :orientation orientation
			       :center-u (vx center)
			       :center-v (vy center)
			       :start-u (vx start-point)
			       :start-v (vy start-point)
			       :end-u (vx end-point)
			       :end-v (vy end-point)
			       :coordinate-system plane))))))

(defclass rational-power-basis-plane-curve (plane-curve-mixin parametric-curve-mixin geometry-mixin)
  ((wx-polynomial :initarg :wx-polynomial)
   (wy-polynomial :initarg :wy-polynomial)
   (w-polynomial :initarg :w-polynomial)
   (domain :initarg :domain)))

(defmethod evaluate1 ((self rational-power-basis-plane-curve) (parameter real) &key (derivs 0))
  (let ((domain (the domain)))
    (assert (<= (first domain) parameter (second domain)))
    (let* ((wxpoly (the wx-polynomial))
	   (wypoly (the wy-polynomial))
	   (wpoly (the w-polynomial))
	   (w (evaluate-polynomial wpoly parameter)))
      (vec2 (/ (evaluate-polynomial wxpoly parameter) w)
	    (/ (evaluate-polynomial wypoly parameter) w)))))
	       
    

(defclass bezier-mixin ()
  ((homogeneous-control-points :type simple-array
			       :initarg :%homogeneous-control-points)))

(defclass bezier-curve-mixin (bezier-mixin parametric-curve-mixin geometry-mixin)
  ((order :slot-class :virtual
	  :type fixnum
	  :getter ((length (the homogeneous-control-points)))
	  :setter ((setter-error 'order self)))
   
   (degree :slot-class :virtual
	   :type fixnum
	   :getter ((1- (the order)))
	   :setter ((setter-error 'degree self)))

   (domain :slot-class :virtual
	   :type cl:list
	   :getter ((list 0.0d0 1.0d0))
	   :setter ((setter-error 'domain self)))

   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((let ((cpoints (the homogeneous-control-points)))
			   (loop for i from 0 below (the degree)
				 always (v= (elt cpoints i) (elt cpoints (1+ i))))))
		:setter ((setter-error 'degenerate? self)))

   (closed? :slot-class :virtual
	    :type boolean
	    :getter ((v= (elt (the homogeneous-control-points) 0)
			 (elt (the homogeneous-control-points) (the degree))))
	    :setter ((setter-error 'closed? self)))
   
   (periodic? :slot-class :virtual
	      :type boolean
	      :getter (nil)
	      :setter ((setter-error 'periodic? self)))))

(defclass bezier-space-curve (space-curve-mixin bezier-curve-mixin entity-mixin)
  ((rational? :slot-class :virtual
	      :type boolean
	      :getter ((let ((cpoints (the homogeneous-control-points)))
			 (not
			  (loop for cpoint across cpoints
				always (= (vw cpoint) 1.0d0)))))
	      :setter ((setter-error 'rational? self)))))


(defclass bezier-plane-curve (plane-curve-mixin bezier-curve-mixin entity-mixin)
  ((rational? :slot-class :virtual
	      :type boolean
	      :getter ((let ((cpoints (the homogeneous-control-points)))
			 (not
			  (loop for cpoint across cpoints
				always (= (vz cpoint) 1.0d0)))))
	      :setter ((setter-error 'rational? self)))))



(defmethod initialize-instance ((self bezier-plane-curve)
				&rest initargs &key %homogeneous-control-points &allow-other-keys)
  (if %homogeneous-control-points
      
      (call-next-method)
      
      (let* ((cpoints (or (getf initargs :control-points)
			  (getf initargs 'control-points)))
	     (weights (or (getf initargs :weights)
			  (getf initargs 'weights)
			  (make-array (length cpoints) :initial-element 1.0d0))))
    
	(assert cpoints)
    
	(when (listp cpoints)
	  (setq cpoints (coerce cpoints 'vector)))
	
	(call-next-method self
			  :%homogeneous-control-points
			  (map 'vector #'(lambda (cp w)
					   (vec3 (* w (vx cp)) (* w (vy cp)) w))
			       cpoints
			       weights)))))

(defmethod initialize-instance ((self bezier-space-curve)
				&rest initargs &key %homogeneous-control-points &allow-other-keys)
  (if %homogeneous-control-points
      
      (call-next-method)
      
      (let* ((cpoints (or (getf initargs :control-points)
			  (getf initargs 'control-points)))
	     (weights (or (getf initargs :weights)
			  (getf initargs 'weights)
			  (make-array (length cpoints) :initial-element 1.0d0))))
    
	(assert cpoints)
    
	(when (listp cpoints)
	  (setq cpoints (coerce cpoints 'vector)))
	
	(call-next-method self
			  :%homogeneous-control-points
			  (map 'vector #'(lambda (cp w)
					   (vec4 (* w (vx cp)) (* w (vy cp)) (* w (vz cp)) w))
			       cpoints
			       weights)))))



(declaim (ftype (function (simple-array double-float) vec3) decasteljau1))
(defun decasteljau1 (P u)
  (declare (type double-float u))
  (declare (type sequence P))
  (declare (optimize (speed 3) (safety 3)))
  (let* ((n+1 (length P))
	 (Q (make-array n+1 :element-type 'vec3
			    :initial-element (load-time-value (vec3 most-positive-double-float
								    most-positive-double-float
								    most-positive-double-float)))))
    (declare (type (simple-array vec3) Q))
    (declare (type fixnum n+1))
    (loop for i from 0 below n+1
	  do (setf (aref Q i) (elt P i)))
    (loop for k from 1 below n+1
	  do (loop for i from 0 below (- n+1 k)
		   do (setf (aref Q i) (v+ (cl:the vec3 (v* (- 1.0d0 u) (aref Q i)))
					   (cl:the vec3 (v* u (aref Q (1+ i)))))))
	  finally (return (aref Q 0)))))

(declaim (ftype (function (simple-array double-float) vec2) decasteljau1-2d))
(defun decasteljau1-2d (P u)
  (declare (type double-float u))
  (declare (type sequence P))
  (declare (optimize (speed 3) (safety 3)))
  (let* ((n+1 (length P))
	 (Q (make-array n+1 :element-type 'vec2
			    :initial-element (load-time-value (vec2 most-positive-double-float
								    most-positive-double-float)))))
    (declare (type (simple-array vec2) Q))
    (declare (type fixnum n+1))
    (loop for i from 0 below n+1
	  do (setf (aref Q i) (elt P i)))
    (loop for k from 1 below n+1
	  do (loop for i from 0 below (- n+1 k)
		   do (setf (aref Q i) (v+ (cl:the vec2 (v* (- 1.0d0 u) (aref Q i)))
					   (cl:the vec2 (v* u (aref Q (1+ i)))))))
	  finally (return (aref Q 0)))))

(declaim (ftype (function (fixnum double-float) (simple-array double-float)) bernstein))
(defun bernstein (n u)
  (declare (type fixnum n) (type double-float u))
  (declare (optimize (speed 3) (safety 1)))
  (let ((B (make-array (1+ n) :element-type 'double-float :initial-element 1.0d0))
	(u1 (- 1.0d0 u))
	(saved 0.0d0)
	(temp 0.0d0))
    (declare (type double-float saved temp))
    (loop for j from 1 to n
	  do (setq saved 0.0d0)
	     (loop for k from 0 below j
		   do (setq temp (aref B k))
		      (setf (aref B k) (+ saved (* u1 temp)))
		      (setq saved (* u temp)))
	     (setf (aref B j) saved)
	  finally (return B))))

(defmethod evaluate1 ((self bezier-plane-curve) (parameter real) &key (derivs 0))
  ;; todo: make work for rational curves
  (declare (optimize (speed 3) (safety 3)))
  (setq parameter (coerce parameter 'double-float))
  (let* ((n (the degree)))
    (declare (type fixnum n))
    (let* ((B (bernstein n parameter))
	   (C (3dm.d::%vec3 0.0d0 0.0d0 0.0d0))
	   (P (the homogeneous-control-points)))
      (loop for k from 0 to n
	    do (setq C (v+ (cl:the vec3 C) (v* (cl:the double-float (aref B k)) (cl:the vec3 (elt P k)))))
	    finally (return (3dm.d::%vec2 (/ (vx C) (vz C)) (/ (vy C) (vz C))))))))

(defmethod evaluate1 ((self bezier-space-curve) (parameter real) &key (derivs 0))
  ;; todo: make work for rational curves
  (declare (optimize (speed 3) (safety 3)))
  (setq parameter (coerce parameter 'double-float))
  (let* ((n (the degree)))
    (declare (type fixnum n))
    (let* ((B (bernstein n parameter))
	   (C (3dm.d::%vec3 0.0d0 0.0d0 0.0d0))
	   (P (the control-points)))
      (loop for k from 0 to n
	    do (setq C (v+ (cl:the vec3 C) (v* (cl:the double-float (aref B k)) (cl:the vec3 (elt P k)))))
	    finally (return C)))))


(defclass b-spline-mixin ()
  ((homogeneous-control-points :type simple-array
			       :initarg :%homogeneous-control-points)))

(defclass b-spline-curve-mixin (b-spline-mixin parametric-curve-mixin)
  ((degree :slot-class :virtual
	   :type fixnum
	   :getter (;; m = n + p + 1
		    (let* ((m (1- (length (the knot-vector))))
			   (cpoints (the homogeneous-control-points))
			   (n (1- (length cpoints))))
		      (- m n 1)))
	   :setter ((setter-error 'degree-u self)))
   
   (knot-vector :type simple-array
		:initarg :knot-vector
		:initarg knot-vector)
   
   (order :slot-class :virtual
	  :type fixnum
	  :getter ((1+ (the degree)))
	  :setter ((setter-error 'order self)))

   (bezier? :slot-class :virtual
	    :type boolean
	    :getter ((and (= (the degree) (1- (length (the homogeneous-control-points))))
			  (let* ((knot-vector (the knot-vector))
				 (m+1 (length knot-vector)))
			    (and (loop for i from 0 below (/ m+1 2)
				       always (= 0.0d0 (aref knot-vector i)))
				 (loop for i from (/ m+1 2) below m+1
				       always (= 1.0d0 (aref knot-vector i)))))))
	    :setter ((setter-error 'bezier? self)))

   (domain :slot-class :virtual
	   :type cl:list
	   :getter ((let ((knot-vector (the knot-vector)))
		      (list (aref knot-vector 0) (aref knot-vector (1- (length knot-vector))))))
	   :setter ((setter-error 'domain self)))

   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((let ((cpoints (the homogeneous-control-points)))
			   (loop for i from 0 to (- (length cpoints) 2)
				 always (v= (elt cpoints i) (elt cpoints (1+ i))))))
		:setter ((setter-error 'degenerate? self)))
   
   (closed? :slot-class :virtual
	    :type boolean
	    :getter ()
	    :setter ((setter-error 'closed? self)))

   (uniform? :slot-class :virtual
	     :type boolean
	     :getter ()
	     :setter ())
   
   (periodic? :slot-class :virtual
	      :type boolean
	      :getter ((and (not (the clamped?)) (the uniform?)))
	      :setter ((setter-error 'periodic? self)))

   (clamped? :slot-class :virtual
	     :type boolean
	     :getter ((let ((kv (the knot-vector))
			    (order (the order)))
			(and (apply #'= (loop for i from 0 below order
					      collect (elt kv i)))
		             (apply #'= (let ((m (1- (length kv))))
			                  (loop for i from 0 below order
						collect (elt kv (- m i))))))))
	     :setter ())))

(defgeneric insert-knot (b-spline-curve knot i))

(defclass b-spline-plane-curve (plane-curve-mixin b-spline-curve-mixin entity-mixin)
  ((rational? :slot-class :virtual
	      :type boolean
	      :getter ((let ((hcpoints (the homogeneous-control-points)))
			 (not
			  (loop for cpoint across hcpoints
				always (= (vz cpoint) 1.0d0)))))
	      :setter ((setter-error 'rational? self)))))

(defmethod initialize-instance ((self b-spline-plane-curve) &rest initargs &key %homogeneous-control-points control-points weights knot-vector)
  (if %homogeneous-control-points
      (call-next-method)
      (let* ((cpoints (or control-points
			  (getf initargs 'control-points)))
	     (weights (or weights
			  (getf initargs 'weights)
			  (make-array (length cpoints) :initial-element 1.0d0)))
	     (knot-vector (or knot-vector
			      (getf initargs 'knot-vector))))
    
	(assert cpoints)
	(assert knot-vector)
    
	(when (listp knot-vector)
	  (setq knot-vector (coerce knot-vector 'vector)))

	(let* ((m (1- (length knot-vector)))
	       (n+1 (length cpoints))
	       (p (- m n+1)))
      
	  ;; (3.2) pg. 82 _The Nurbs Book_, 2nd Edition
	  ;; m+1 is number of knots
	  ;; n+1 is number of control points
	  ;; p is degree
	  ;; m = n + p + 1
	  ;; so p = m - (n + 1)

	  (remf initargs :knot-vector)
      
	  (apply #'call-next-method self
		 :%homogeneous-control-points
		 (map 'vector #'(lambda (cp w)
				  (vec3 (* w (vx cp)) (* w (vy cp)) w))
		      cpoints
		      weights)
		 :knot-vector knot-vector
		 :degree p
		 initargs)))))



(defmethod evaluate1 ((self b-spline-plane-curve) (parameter real) &key (derivs 0))
  (let* ((knot-vector (the knot-vector))
	 (cpoints (the homogeneous-control-points))
	 (n (1- (length cpoints)))
	 (p (the degree))
	 (span (find-span n p parameter knot-vector))
	 (basis-funs (basis-funs span parameter p knot-vector)))
    (let ((Cw (vec3 0 0 0)))
      (loop for i from 0 to p
	    do (setq Cw (v+ Cw (v* (aref basis-funs i)
				   (aref cpoints (+ (- span p) i)))))
	    finally (return (vec2 (/ (vx Cw) (vz Cw)) (/ (vy Cw) (vz Cw))))))))

(defun find-multiplicity (p knot-vector span u)
  (declare (ignore p span))
  (loop for knot across knot-vector with count = 0
     when (= u knot)
     do (incf count)
     finally (return count)))

(defun curve-knot-insertion (p UP Pw u r)
  "Compute new curve from knot insertion."
  ;; Algorithm A5.1 pg. 151 _The Nurbs Book_ 2nd edition
  (let* ((np (1- (length Pw)))
	 (k (find-span np p u UP))
	 (s (find-multiplicity p UP nil u))
	 (mp (+ 1 np p))
	 (nq (+ np r))
	 (Rw (make-array (1+ p)))
	 (UQ (make-array (+ (length UP) r)))
	 (Qw (make-array (1+ nq)))
	 (L)
	 (alpha))

    ;; Load the new knot-vector
    (loop for i from 0 to k
       do (setf (elt UQ i) (elt UP i)))

    (loop for i from 1 to r
       do (setf (elt UQ (+ k i)) u))

    (loop for i from (1+ k) to mp
       do (setf (elt UQ (+ i r)) (elt UP i)))

    ;; save unaltered control points
    (loop for i from 0 to (- k p)
       do (setf (elt Qw i) (elt Pw i)))

    (loop for i from (- k s) to np
       do (setf (elt Qw (+ i r)) (elt Pw i)))

    (loop for i from 0 to (- p s)
       do (setf (elt Rw i) (elt Pw (+ (- k p) i))))

    ;; insert the knot r times
    (loop for j from 1 to r
       do (setq L (+ (- k p) j))
	 (loop for i from 0 to (- p j s)
	    do (setq alpha (/ (- u (elt UP (+ L i)))
			      (- (elt UP (+ i k 1))
				 (elt UP (+ L i)))))
	      (setf (elt Rw i) (v+ (v* alpha (aref Rw (1+ i)))
				   (v* (- 1.0d0 alpha) (aref Rw i)))))
	 (setf (elt Qw L) (elt Rw 0))
	 (setf (elt Qw (+ k r (- j) (- s))) (elt Rw (- p j s))))

    ;; load remaining control points
    (loop for i from (1+ L) below (- k s)
       do (setf (elt Qw i) (elt Rw (- i L))))
    (values nq UQ Qw)))

(defmethod insert-knot ((self b-spline-curve-mixin) (knot real) (multiplicity fixnum))
  (let ((p (the degree))
	(UP (the knot-vector))
	(Pw (the homogeneous-control-points)))
    (multiple-value-bind (nq UQ Qw) (curve-knot-insertion p UP Pw knot multiplicity)
      (declare (ignore nq))
      (make-instance (class-of self)
		     :%homogeneous-control-points Qw
		     :knot-vector UQ))))

(defun number-of-interior-knot-spans (knot-vector)
  (loop for i from 0 below (1- (length knot-vector))
	unless (= (elt knot-vector i) (elt knot-vector (1+ i)))
	  sum 1))


(defun decompose-curve-1 (p knot-vector Pw)
  "Decompose curve into Bezier segments."
  ;; Algorithm A5.6 pg. 173-176 _The Nurbs Book_ 2nd edition
  (let* ((n (1- (length Pw)))
	 (m (+ n p 1))
	 (a p)
	 (b (1+ p))
	 (nb 0)
	 (nspans (number-of-interior-knot-spans knot-vector))
	 (spans (make-array nspans :initial-element t))
	 (alphas (make-array nspans))
	 (Qw (make-array nspans)))
    
    (loop for i from 0 below nspans
	  do (setf (aref Qw i) (make-array (1+ p) :initial-element nil)))

    (loop for i from 0 to p
	  do (setf (aref (aref Qw nb) i) (aref Pw i)))

    (setf (aref spans nb) (vector (aref knot-vector (1- b)) (aref knot-vector b)))
    
    (loop while (< b m)
	  do (let ((i b))

	       (loop while (and (< b m) (= (aref knot-vector (1+ b)) (aref knot-vector b)))
		     do (incf b))
	       (let ((mult (1+ (- b i))))
		 (when (< mult p)
		   ;; numerator of alpha
		   (let ((numer (- (aref knot-vector b) (aref knot-vector a))))
		     ;; compute and store alphas
		     (loop for j from p downto (1+ mult)
			   do
			      (setf (aref alphas (- j mult 1)) (/ numer (- (aref knot-vector (+ a j))
									   (aref knot-vector a))))))
		   ;; insert knot r times
		   (let ((r (- p mult))
			 (save)
			 (s))
		     (loop for j from 1 to r
			   do (setq save (- r j))
			      (setq s (+ mult j)) ;; this many new points
			      (let ((alpha))
				(loop for k from p downto s
				      do (setq alpha (aref alphas (- k s)))
					 (setf (aref (aref Qw nb) k)
					       (v+ (v* alpha (aref (aref Qw nb) k))
						   (v* (- 1.0d0 alpha) (aref (aref Qw nb) (1- k)))))))
			      (when (< b m)
				;; control point of next segment
				(setf (aref Qw (1+ nb)) save) (aref (aref Qw nb) p)))))
		 (incf nb) ;; bezier segment completed
		 (when (< b m)
		   ;; initialize for next segment
		   (loop for i from (- p mult) to p
			 do (setf (aref (aref Qw nb) i) (aref Pw (+ (- b p) i))))
		   (setq a b)
		   (incf b)
		   (setf (aref spans nb) (vector (aref knot-vector (1- b)) (aref knot-vector b)))))))
    
    (values Qw spans)))

(defmethod decompose-curve ((self b-spline-curve-mixin))
  (let* ((knot-vector (the knot-vector))
	 (degree (the degree))
	 (control-points (the homogeneous-control-points)))
    (multiple-value-bind (Qws spans) (decompose-curve-1 degree knot-vector control-points)
      (declare (ignore spans))
      (let ((class (find-class
		    (etypecase self
		      (space-curve-mixin 'bezier-space-curve)
		      (plane-curve-mixin 'bezier-plane-curve))))
	    (coordinate-system (the coordinate-system)))
	(map 'list #'(lambda (cpoints)
		       (make-instance class :%homogeneous-control-points cpoints
				      :coordinate-system coordinate-system))
	     Qws)))))

(defmethod power-basis ((self b-spline-plane-curve))
  (multiple-value-bind (Qws spans)
      (decompose-curve-1 (the degree) (the knot-vector) (the homogeneous-control-points))
    (loop for cpoints across Qws
	  for span across spans
	  collect
	  (let ((points (make-array (list (length cpoints) 3)
				    :element-type 'number :initial-element 0.0d0)))
	    (loop for i from 0 below (length cpoints)
		  do (let ((cpoint (aref cpoints i)))
		       (setf (aref points i 0) (vx cpoint)
			     (aref points i 1) (vy cpoint)
			     (aref points i 2) (vz cpoint))))
	    (let* ((R (reparameterization-matrix (1- (length cpoints)) (elt span 0) (elt span 1)))
		   (M (bezier-to-power-basis-matrix (1- (length cpoints)))))
	      (flet ((the-col (matrix i)
		       (let ((vector (make-array (length cpoints))))
			 (loop for k from 0 below (length cpoints)
			       do (setf (aref vector k) (aref matrix k i)))
			 vector)))
		(let ((matrix (m* R M points)))
		  (make-instance 'rational-power-basis-plane-curve
				 :wx-polynomial (the-col matrix 0)
				 :wy-polynomial (the-col matrix 1)
				 :w-polynomial (the-col matrix 2)
				 :domain (list (elt span 0) (elt span 1))))))))))
    
			

(defun reparameterization-matrix (degree ui ui+1)
  (let* ((c (/ (- ui+1 ui)))
	 (d (- (* ui c)))
	 (R (make-array (list (1+ degree) (1+ degree)) :initial-element 0)))
    (loop for j from 0 to degree
	  do (loop for i from 0 to degree
		   when (<= i j)
		     do (setf (aref R i j) (* (binomial-coefficient j i) (expt c i) (expt d (- j i)))))
	  finally (return R))))

(defun bezier-to-power-basis-matrix (degree)
  (let ((M (make-array (list (1+ degree) (1+ degree)) :initial-element 0)))
    ;; shouldn't this be the same as bernstein-to-monomial?
    ;; set corner elements
    (setf (aref M 0 0)
	  (setf (aref M degree degree) 1.0d0))
    (if (not (zerop (mod degree 2))) ;; um oddp?
	(setf (aref M degree 0) -1.0d0)
	(setf (aref M degree 0) 1.0d0))
    (let ((sign -1))
      (loop for i from 1 below degree ;; compute the first column, last row, and the diagonal.
	    do (setf (aref M i i) (binomial-coefficient degree i))
	       (setf (aref M i 0)
		     (setf (aref M degree (- degree i))
			   (* sign (aref M i i))))
	       (setq sign (- sign)))
      ;; compute the remaining elements
      (let ((k1 (floor (1+ degree) 2))
	    (pk (1- degree)))
	(loop for k from 1 below k1
	      do (setq sign -1)
		 (loop for j from (1+ k) to pk
		       do (setf (aref M j k)
				(setf (aref M pk (- degree j))
				      (* sign (binomial-coefficient degree k)
					 (binomial-coefficient (- degree k) (- j k)))))
			  (setq sign (- sign)))
		 (decf pk)
	      finally (return M))))))


	

	 
	 
	 


    

(defun make-nurbs-line (a b)
  (make-instance 'b-spline-space-curve
		 :control-points
		 (list a b)
		 :knot-vector (list 0 0 1 1)))

(defun make-nurbs-line2 (a b)
  (make-instance 'b-spline-plane-curve
		 :control-points
		 (list a b)
		 :knot-vector (list 0 0 1 1)))

(defun swept-surface (trajectory-curve section-curve)
  (make-instance 'b-spline-surface
		 :%homogeneous-control-points
		 (let ((TR (send trajectory-curve homogeneous-control-points))
		       (Q (send section-curve homogeneous-control-points)))
		   (make-array
		    (list (length Q) (length TR))
		    :initial-contents
		    (loop for i from 0 below (length Q)
			  collect (loop for j from 0 below (length TR)
					collect (let ((wij (* (vw (elt TR j)) (vw (elt Q i)))))
						  (vec4 (* wij (+ (/ (vx (elt TR j)) (vw (elt TR j))) (/ (vx (elt Q i)) (vw (elt Q i)))))
							(* wij (+ (/ (vy (elt TR j)) (vw (elt TR j))) (/ (vy (elt Q i)) (vw (elt Q i)))))
							(* wij (+ (/ (vz (elt TR j)) (vw (elt TR j))) (/ (vz (elt Q i)) (vw (elt Q i)))))
							wij))))))
		 :knot-vector-u (send section-curve knot-vector)
		 :knot-vector-v (send trajectory-curve knot-vector)))





						


  

(defclass b-spline-space-curve (space-curve-mixin b-spline-curve-mixin entity-mixin)
  ((rational? :slot-class :virtual
	      :type boolean
	      :getter ((let ((cpoints (the homogeneous-control-points)))
			 (not
			  (loop for cpoint across cpoints
				always (= (vw cpoint) 1.0d0)))))
	      :setter ((setter-error 'rational? self)))))

(defmethod initialize-instance ((self b-spline-space-curve) &rest initargs &key %homogeneous-control-points control-points weights knot-vector)
  (if %homogeneous-control-points
      (call-next-method)
      (let* ((cpoints (or control-points
			  (getf initargs 'control-points)))
	     (weights (or weights
			  (getf initargs 'weights)
			  (make-array (length cpoints) :initial-element 1.0d0)))
	     (knot-vector (or knot-vector
			      (getf initargs 'knot-vector))))
    
	(assert cpoints)
	(assert knot-vector)
    
	(when (listp knot-vector)
	  (setq knot-vector (coerce knot-vector 'vector)))

	(remf initargs :knot-vector)

	(apply #'call-next-method self
			  :%homogeneous-control-points
			  (map 'vector #'(lambda (cp w)
					   (vec4 (* w (vx cp)) (* w (vy cp)) (* w (vz cp)) w))
			       cpoints
			       weights)
			  :knot-vector knot-vector
			  initargs))))




(defmethod evaluate1 ((self b-spline-space-curve) (parameter real) &key (derivs 0))
  (let* ((knot-vector (the knot-vector))
	 (cpoints (the homogeneous-control-points))
	 (n (1- (length cpoints)))
	 (p (the degree))
	 (span (find-span n p parameter knot-vector))
	 (basis-funs (basis-funs span parameter p knot-vector)))
    (let ((Cw (vec4 0 0 0 0)))
      (loop for i from 0 to p
	    do (setq Cw (v+ Cw (v* (aref basis-funs i)
				   (aref cpoints (+ (- span p) i)))))
	    finally (return (safe-euclid Cw))))))



(defclass b-spline-surface-mixin (b-spline-mixin parametric-surface-mixin geometry-mixin)
  ((order-u :slot-class :virtual
	    :type fixnum
	    :getter ((1+ (the degree-u)))
	    :setter ((setter-error 'order-u self)))
	     
   (order-v :slot-class :virtual
	    :type fixnum
	    :getter ((1+ (the degree-v)))
	    :setter ((setter-error 'order-v self)))

   (degree-u :slot-class :virtual
	     :type fixnum
	     :getter (;; m = n + p + 1
		      (let* ((m (1- (length (the knot-vector-u))))
			     (cpoints (the homogeneous-control-points))
			     (n (1- (first (array-dimensions cpoints)))))
			(- m n 1)))
	     :setter ((setter-error 'degree-u self)))

   (degree-v :slot-class :virtual
	     :type fixnum
	     :getter (;; m = n + p + 1
		      (let* ((m (1- (length (the knot-vector-v))))
			     (cpoints (the homogeneous-control-points))
			     (n (1- (second (array-dimensions cpoints)))))
			(- m n 1)))
	     :setter ((setter-error 'degree-u self)))
   
   (knot-vector-u :type sequence
		  :initarg :knot-vector-u
		  :initarg knot-vector-u)
   
   (knot-vector-v :type sequence
		  :initarg :knot-vector-v
		  :initarg knot-vector-v)

   (u-closed? :slot-class :virtual
	      :type boolean
	      :getter (nil)
	      :setter ((setter-error 'u-closed? self)))
   
   (v-closed? :slot-class :virtual
	      :type boolean
	      :getter (nil)
	      :setter ((setter-error 'v-closed? self)))
   
   (u-periodic? :slot-class :virtual
		:type boolean
		:getter (nil)
		:setter ((setter-error 'u-periodic? self)))
   
   (v-periodic? :slot-class :virtual
		:type boolean
		:getter (nil)
		:setter ((setter-error 'v-periodic? self)))
   
   (u-period :slot-class :virtual
	     :type null
	     :getter (nil)
	     :setter ((setter-error 'u-period self)))

   (v-period :slot-class :virtual
	     :type null
	     :getter (nil)
	     :setter ((setter-error 'v-period self)))

   (clamped-u? :slot-class :virtual
	       :type boolean
	       :getter ((let ((kv (the knot-vector-u))
			      (order (the order-u)))
			  (and (apply #'= (loop for i from 0 below order
						collect (elt kv i)))
		               (apply #'= (let ((m (1- (length kv))))
			                    (loop for i from 0 below order
						  collect (elt kv (- m i))))))))
	       :setter ())

   (clamped-v? :slot-class :virtual
	       :type boolean
	       :getter ((let ((kv (the knot-vector-v))
			      (order (the order-v)))
			  (and (apply #'= (loop for i from 0 below order
						collect (elt kv i)))
		               (apply #'= (let ((m (1- (length kv))))
			                    (loop for i from 0 below order
						  collect (elt kv (- m i))))))))
	       :setter ())
   
   (rational? :slot-class :virtual
	      :type boolean
	      :getter ((let* ((hcps (the homogeneous-control-points))
			      (dims (array-dimensions hcps)))
			 (not (loop for i from 0 below (first dims)
				    always (loop for j from 0 below (second dims)
						 always (= (vw (aref hcps i j)) 1.0d0))))))
	      :setter ((setter-error 'rational? self)))))

(defmethod initialize-instance ((self b-spline-surface-mixin) &rest initargs &key %homogeneous-control-points control-points weights knot-vector-u knot-vector-v)
  (if %homogeneous-control-points
      (call-next-method)
      (let ((cpoints (or control-points (getf initargs 'control-points))))
	(multiple-value-bind (n m)
	    (if (arrayp cpoints)
		(values-list (array-dimensions cpoints))
		(values (length cpoints) (length (elt cpoints 0))))
	  (let ((weights (or weights (getf initargs 'weights) (make-array (list n m) :initial-element 1.0d0)))
		(knot-vector-u (or knot-vector-u (getf initargs 'knot-vector-u)))
		(knot-vector-v (or knot-vector-v (getf initargs 'knot-vector-v))))
    
	    (assert cpoints)
	    (assert knot-vector-u)
	    (assert knot-vector-v)
	
	    (when (listp knot-vector-u)
	      (setq knot-vector-u (coerce knot-vector-u 'vector)))
	    (when (listp knot-vector-v)
	      (setq knot-vector-u (coerce knot-vector-v 'vector)))

	    (remf initargs :knot-vector-u)
	    (remf initargs :knot-vector-v)
	    (remf initargs :control-points)
	    (remf initargs :weights)
	
	    (apply #'call-next-method self
			      :%homogeneous-control-points
			      (flet ((element (aggregate i j)
				       (if (arrayp aggregate)
					   (aref aggregate i j)
					   (elt (elt aggregate i) j))))
			    
				(let ((array (make-array (list n m) :element-type 'vec4 :initial-element (vec4 0 0 0 0))))
				  (loop for i from 0 below n
					do (loop for j from 0 below m
						 do (let ((cpt (element cpoints i j))
							  (w (element weights i j)))
						      (setf (aref array i j) (vec4 (* w (vx cpt))
										   (* w (vy cpt))
										   (* w (vz cpt))
										   w)))))
				  array))
			      :knot-vector-u knot-vector-u
			      :knot-vector-v knot-vector-v
			      initargs))))))




(defun find-span (n p u knot-vector)
  ;; Algorithm A2.1 pg. 68 _The Nurbs Book_ 2nd edition
  (when (= u (elt knot-vector (1+ n)))
    (return-from find-span n))
  (let* ((low p)
	 (high (1+ n))
	 (mid (floor (+ low high) 2)))
    (loop while (or (< u (aref knot-vector mid))
		    (>= u (aref knot-vector (1+ mid))))
	  do (if (< u (aref knot-vector mid))
		 (setq high mid)
		 (setq low mid))
	     (setq mid (floor (+ low high) 2))
	  finally (return mid))))

(defun basis-funs (i u p knot-vector)
  ;; Algorithm A2.2 pg. 70 _The Nurbs Book_ 2nd edition
  (let ((N (make-array (1+ p) :initial-element 1.0d0))
	(left (make-array (1+ p)))
	(right (make-array (1+ p)))
	(saved 0.0d0)
	(temp 0.0d0))
    
    (loop for j from 1 to p
	  do (setf (aref left j) (- u (aref knot-vector (- (1+ i) j))))
	     (setf (aref right j) (- (aref knot-vector (+ i j)) u))
	     (setq saved 0.0d0)
	     
	     (loop for r from 0 below j
		   do (setq temp (/ (aref N r) (+ (aref right (1+ r)) (aref left (- j r)))))
		      (setf (aref N r) (+ saved (* (aref right (1+ r)) temp)))
		      (setq saved (* (aref left (- j r)) temp)))

	     (setf (aref N j) saved)
	  finally (return N))))

(defun ders-basis-funs (i u p n knot-vector)
  ;; Algorithm A2.3, The Nurbs Book, 2nd edition, p. 72
  "Compute nonzero basis functions and their derivatives."
  (setq u (coerce u 'double-float))
  (let* ((1+p (1+ p))
	 (ders (make-array (list 1+p 1+p) :initial-element 0.0d0))
	 (ndu  (make-array (list 1+p 1+p) :initial-element 1.0d0))
	 (left  (make-array 1+p))
	 (right (make-array 1+p))
	 (saved 0.0d0)
	 (temp 0.0d0))
    (loop for j from 1 to p
	  do (setf (aref left j) (- u (aref knot-vector (1+ (- i j))))
		   (aref right j) (- (aref knot-vector (+ i j)) u))
	     (setq saved 0.0d0)
	     (loop for r from 0 below j
		   do ;; lower triangle:
		      (setf (aref ndu j r) (+ (aref right (1+ r)) (aref left (- j r))))
		      (setq temp (/ (aref ndu r (1- j)) (aref ndu j r)))
		      ;; upper triangle:
		      (setf (aref ndu r j) (+ saved (* (aref right (1+ r)) temp)))
		      (setq saved (* (aref left (- j r)) temp)) )
	     (setf (aref ndu j j) saved))
    ;; load the basis functions:
    (loop for j from 0 to p
	  do (setf (aref ders 0 j) (aref ndu j p)))
    ;; This section computes the derivatives
    (let ((a (make-array (list 2 (1+ n)) :initial-element 1.0d0)))
      (loop for r from 0 to p ;; loop over function index
	    do (let ((s1 0) (s2 1))
		 ;;(setf (aref a 0 0) 1.0d0)
		 ;; loop to compute kth derivative
		 (loop for k from 1 to n
		       do (let ((d 0.0d0)
				(rk (- r k))
				(pk (- p k))
				(j1)
				(j2)
				(j))
			    (when (>= r k)
			      (setf (aref a s2 0) (/ (aref a s1 0) (aref ndu (+ pk 1) rk)))
			      (setq d (* (aref a s2 0) (aref ndu rk pk))))
			    (if (>= rk -1)
				(setq j1 1)
				(setq j1 (- rk)))
			    (if (<= (1- r) pk)
				(setq j2 (1- k))
				(setq j2 (- p r)))
			    (loop for j from j1 to j2
				  do (setf (aref a s2 j) (/ (- (aref a s1 j) (aref a s1 (1- j))) (aref ndu (1+ pk) (+ rk j))))
				     (incf d (* (aref a s2 j) (aref ndu (+ rk j) pk))))
			    (when (<= r pk)
			      (setf (aref a s2 k) (/ (- (aref a s1 (1- k))) (aref ndu (1+ pk) r)))
			      (incf d (* (aref a s2 k) (aref ndu r pk))))
			    (setf (aref ders k r) d)
			    (setq j s1
				  s1 s2
				  s2 j) ;; switch rows
			    )))))
    ;; multiply through by the correct factors
    (let ((r p))
      (loop for k from 1 to n
	    do (loop for j from 0 to p
		     do (setf (aref ders k j) (* (aref ders k j) r)))
	       (setq r (* r (- p k)))))
    ders))

(defun testders (surface u v)
  (let* ((cpoints (send surface homogeneous-control-points))
	 (n (1- (first (array-dimensions cpoints))))
	 (m (1- (second (array-dimensions cpoints))))
	 (kv-u (send surface knot-vector-u))
	 (kv-v (send surface knot-vector-v)))
    (surface-derivs-alg1 n (send surface degree-u) kv-u
			 m (send surface degree-v) kv-v
			 cpoints
			 u v 10)))
			 

(defun surface-derivs-alg1 (n p knot-vector-u m q knot-vector-v control-points u v d)
  ;; Algorithm A3.6, The Nurbs Book, 2nd edition, p. 111
  (setq u (coerce u 'double-float))
  (setq v (coerce v 'double-float))
  (let* ((du (min d p))
	 (dv (min d q))
	 (uspan (find-span n p u knot-vector-u))
	 (vspan (find-span m q v knot-vector-v))
	 (Nu (ders-basis-funs uspan u p du knot-vector-u))
	 (Nv (ders-basis-funs vspan v q dv knot-vector-v))
	 (SKL (make-array (list (1+ d) (1+ d)) :initial-element (vec4 0 0 0 0)))
	 (temp (make-array (1+ q) :initial-element (vec4 0 0 0 0))))
    (loop for k from 0 to du
	  do (loop for s from 0 to q
		   do (setf (aref temp s) (vec4 0 0 0 0))
		      (loop for r from 0 to p
			    do (setf (aref temp s) (v+ (aref temp s)
						       (v* (aref Nu k r) (aref control-points (+ (- uspan p) r) (+ (- vspan q) s)))))))
	     (loop for l from 0 to (min (- d k) dv)
		   do (setf (aref SKL k l) (vec4 0 0 0 0))
		      (loop for s from 0 to q
			    do (setf (aref SKL k l) (v+ (aref SKL k l) (v* (aref Nv l s) (aref temp s)))))))
    SKL))

(defun rat-surface-derivs (surface u v d)
  (let* ((cpoints (send surface homogeneous-control-points))
	 (n (1- (first (array-dimensions cpoints))))
	 (m (1- (second (array-dimensions cpoints))))
	 (kv-u (send surface knot-vector-u))
	 (kv-v (send surface knot-vector-v))
	 (d-u (send surface degree-u))
	 (d-v (send surface degree-v))
	 (ders (surface-derivs-alg1 n d-u kv-u
				    m d-v kv-v
				    cpoints
				    u v d))
	 (SKL (make-array (list (1+ d) (1+ d))
			  :initial-element nil)))
    ;; Algorithm A4.4, The Nurbs Book, 2nd edition, p. 137-138 
    (loop for k from 0 to d
	  do (loop for l from 0 to (- d k)
		   do (let ((v0 (vec3 (vx (aref ders k l)) (vy (aref ders k l)) (vz (aref ders k l)))))
			(loop for j from 1 to l
			      do (setf v0 (v- v0 (v* (* (binomial-coefficient l j) (vw (aref ders 0 j))) (aref SKL k (- l j))))))
			(loop for i from 1 to k
			      do (setf v0 (v- v0 (v* (* (binomial-coefficient k i) (vw (aref ders i 0))) (aref SKL (- k i) l))))
				 (let ((v2 (vec3 0 0 0)))
				   (loop for j from 1 to l
					 do (setf v2 (v+ v2 (v* (* (binomial-coefficient l j) (vw (aref ders i j))) (aref SKL (- k i) (- l j))))))
				   (setf v0 (v- v0 (v* (binomial-coefficient k i) v2)))))
			(setf (aref SKL k l) (v/ v0 (vw (aref ders 0 0)))))))
    SKL))
		 
(defmethod evaluate2 ((self b-spline-surface-mixin) (u real) (v real) &key (derivs 0))

  (if (> derivs 0)
      
      (let* ((d (min derivs (max (the degree-u) (the degree-v))))
	     (results (rat-surface-derivs self u v d)))
	
	(values-list (append (list (aref results 0 0))
			     (loop for i from 1 to d
				   collect
				   (append (loop for j from 0 to i
						 collect (aref results j i))
					   (loop for j from (1- i) downto 0
						 collect (aref results i j)))))))
      
      (let* ((knot-vector-u (the knot-vector-u))
	     (knot-vector-v (the knot-vector-v))
	     (Pw (the homogeneous-control-points))
	     (dims (array-dimensions Pw))
	     (n (1- (first dims)))
	     (m (1- (second dims)))
	     (p (the degree-u))
	     (q (the degree-v))
	     (uspan (find-span n p u knot-vector-u))
	     (uspan-p (- uspan p))
	     (Nu (basis-funs uspan u p knot-vector-u))
	     (vspan (find-span m q v knot-vector-v))
	     (vspan-q (- vspan q))
	     (Nv (basis-funs vspan v q knot-vector-v))
	     (temp (make-array (1+ q)
			       :element-type 'vec4
			       :initial-element (load-time-value (vec4 0 0 0 0))))
	     (Sw (load-time-value (vec4 0 0 0 0))))
	
	(loop for l from 0 to q
	      do (loop for k from 0 to p
		       do (setf (aref temp l)
				(v+
				 (cl:the vec4 (aref temp l))
				 (v*
				  (aref Nu k)
				  (cl:the vec4 (aref Pw (+ uspan-p k) (+ vspan-q l)))))))
	      finally (loop for l from 0 to q
			    do (setq Sw (v+
					 (cl:the vec4 Sw)
					 (v* (aref Nv l)
					     (cl:the vec4 (aref temp l))))))
		      (return (safe-euclid Sw))))))
	  

   
  
(defclass b-spline-surface (3d-mixin b-spline-surface-mixin entity-mixin)
  ())

(defmethod draw ((self b-spline-surface-mixin))
  (let* ((kv-u (the knot-vector-u))
	 (kv-v (the knot-vector-v))
	 (u-min (aref kv-u 0))
	 (u-max (aref kv-u (1- (length kv-u))))
	 (v-min (aref kv-v 0))
	 (v-max (aref kv-v (1- (length kv-v))))
	 (vertices ())
	 (indices ())
	 (resolution 100))
	
    (loop for i from 0 to resolution
	  with u-step = (/ (- u-max u-min) resolution)
	  with v-step = (/ (- v-max v-min) resolution)
	  do (let ((u (+ u-min (* i u-step))))
	       (loop for j from 0 to resolution
		     do (let ((v (+ v-min (* j v-step))))
			  (multiple-value-bind (point first-derivative) (evaluate2 self u v :derivs 1)
			    (let* ((du (first first-derivative))
				   (dv (first (last first-derivative)))
				   (normal (vc dv du)))
			      (when (zerop (vsqrlength normal))
				(setq normal (vunit (vec3 1 1 1))))
			      (unless (zerop (vsqrlength normal))
				(setq normal (vunit normal)))
			      (push (krma::clampf (vx point)) vertices)
			      (push (krma::clampf (vy point)) vertices)
			      (push (krma::clampf (vz point)) vertices)
			      (push (krma::clampf (vx normal)) vertices)
			      (push (krma::clampf (vy normal)) vertices)
			      (push (krma::clampf (vz normal)) vertices)
			      ))))))
    
    (loop for i from 0 below resolution
	  with k1 with k2
	  do (setq k1 (* i (1+ resolution))
		   k2 (+ k1 (1+ resolution)))
	     (loop for j from 1 to resolution
		   ;;when (not (= i 0))
		     do (push k1 indices)
			(push k2 indices)
			(push (1+ k1) indices)
			
			
		   when (not (= i resolution))
		     do (push (1+ k1) indices)
			(push k2 indices)
			(push (1+ k2) indices)
			
			
		   do (incf k1)
		      (incf k2)))

    (setq vertices (nreverse vertices))
    (setq indices (nreverse indices))

    (print (apply #'max indices))

    (let ((scene (krma::application-scene krma::*app*))
	  (oid (the krma.gui::object-id))
	  (color (krma::canonicalize-color (or (the color) #x00ffffff)))
	  (group (or (the %group-id) :default)))
      (krma::rm-dispatch-to-render-thread-with-handle (scene draw-data handle)
	(let ((draw-list (krma::draw-data-3d-triangle-list-with-normals-draw-list draw-data)))
	  (setf (gethash handle (krma::draw-data-handle-hash-table draw-data))
		(let* ((va (krma::draw-list-vertex-array draw-list))
		       (ia (krma::draw-list-index-array draw-list)))
		  (declare (type krma::foreign-adjustable-array ia va))
		  (let ((first-index (krma::foreign-array-fill-pointer ia))
			(vtx-offset (krma::foreign-array-fill-pointer va))
			(elem-count 0))
		    (krma::with-draw-list-transaction (%draw-list-draw-b-spline draw-list first-index vtx-offset)
		      (block krma::block
			(loop for (x y z nx ny nz) on vertices by #'(lambda (list)
								      (nthcdr 6 list))
			      do (krma::standard-3d-vertex-with-normal-array-push-extend va oid x y z nx ny nz color))
			(loop for index in indices
			      do (krma::index-array-push-extend ia index)
				 (incf elem-count))
			(let ((cmd (krma::make-standard-draw-indexed-cmd
				    draw-list
				    first-index elem-count vtx-offset
				    group nil nil krma::*white-texture* nil nil nil)))
			  (vector-push-extend cmd (krma::draw-list-cmd-vector draw-list))
			  cmd)))))))))))
			      
										
										
										
										
										
	      

;; http://web.mit.edu/hyperbook/Patrikalakis-Maekawa-Cho/node7.html#359
;; 80-85% of mechanical shapes are composed of planar or cylindrical surfaces,
;; 90-95% of mechanical shapes are with the addition of cones
;; and remaining 5-10% are everything else
;; the remaining 5-10% constitute 95% of the math: quadrics and splines

(defclass standard-form-mixin ()
  ((center)
   (xi)
   (eta)
   (zeta)
   (a)
   (b)
   (c)))

(defclass ellipsoid-mixin (quadric-mixin) ())
(defclass elliptic-cone-mixin (quadric-mixin) ())
(defclass elliptic-cylinder-mixin (quadric-mixin) ())
(defclass sphere (ellipsoid-mixin) ())
(defclass ellipsoid (ellipsoid-mixin) ())
(defclass cone (elliptic-cone-mixin) ())
(defclass elliptic-cone (elliptic-cone-mixin) ())
(defclass cylinder (elliptic-cylinder-mixin) ())
(defclass elliptic-cylinder (elliptic-cone-mixin) ())
(defclass torus () ())
(defclass paraboloid (quadric-mixin) ())
(defclass hyperboloid-mixin (quadric-mixin) ())
(defclass hyperboloid-of-one-sheet (hyperboloid-mixin) ())
(defclass hyperboloid-of-two-sheets (hyperboloid-mixin) ())
(defclass hyperbolic-cylinder (quadric-mixin) ())


  


(unless (boundp '*global-coordinate-system*)
(setq *global-coordinate-system* (make-instance 'global-coordinate-system))

(setq *global-origin* (make-instance 'point :x 0.0d0 :y 0.0d0 :z 0.0d0 :coordinate-system *global-coordinate-system*))

(setq *coordinate-system* *global-coordinate-system*)

(setq *xy-plane* (make-instance 'plane
				:origin (vec3 0 0 0)
				:normal (vec3 0 0 1)))

(setq *yz-plane* (make-instance 'plane
				:origin (vec3 0 0 0)
				:normal (vec3 1 0 0)))

(setq *zx-plane* (make-instance 'plane
				:origin (vec3 0 0 0)
				:normal (vec3 0 1 0)))

(setq *sketch-plane* *xy-plane*)


)

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
