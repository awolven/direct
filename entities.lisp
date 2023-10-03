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

(defgeneric intersection-2 (thing1 thing2))

(defgeneric intersection-3 (thing1 thing2 thing3))

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

(defclass generalized-cylinder-mixin (explicit-surface-mixin) ())

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

(defmethod evaluate2 ((self plane) (u real) (v real) &key (derivs-u 0) (derivs-v 0))
  (setq u (coerce u 'double-float))
  (setq v (coerce v 'double-float))
  (let* ((x-axis (the x-axis))
	 (y-axis (the y-axis))
	 (origin (the origin location))
	 (value
	   (vec3 (+ (* u (vx x-axis)) (* v (vx y-axis)) (vx origin))
		 (+ (* u (vy x-axis)) (* v (vy y-axis)) (vy origin))
		 (+ (* u (vz x-axis)) (* v (vz y-axis)) (vy origin)))))
    (cond ((and (= derivs-u 0)(= derivs-v 1)) (values value (the y-axis)))
	  ((and (= derivs-u 1)(= derivs-v 0)) (values value (the x-axis)))
	  (t (apply #'values value (make-list (max derivs-u derivs-v) :initial-element (vec3 0 0 0)))))))

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

(defclass plane-curve-mixin () ())

(defclass space-curve-mixin () ())

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
		       (the end-z) (vy value))))

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
		       (the end-v) (vx value))
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
  ;; transforms variable of polynomial to (a + s*(b-a)) and returns polynomial of s in monomial basis
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

(defun roots-of-2d-bezier (control-points start end epsilon expected-number-of-roots)
  (let ((intervals (isolate-roots-of-2d-bezier control-points start end epsilon expected-number-of-roots)))
    (unless intervals
      (return-from roots-of-2d-bezier nil))
    (apply #'append
	   (mapcar #'(lambda (interval)
		       (converge-on-root control-points (car interval) (cadr interval) epsilon))
		   intervals))))

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


(defun isolate-roots-of-2d-bezier (control-points start end epsilon expected-number-of-roots)
  (flet ((has-sign-change? (a b)
	   (let ((val-a (decasteljau1-2d control-points a))
		 (val-b (decasteljau1-2d control-points b)))
	     (not (= (signum (vy val-a)) (signum (vy val-b)))))))
    
    (let ((isolated-intervals ())
	  (intervals (list (list start end))))

      (do ()
	  ((null intervals))

	(destructuring-bind (a b) (pop intervals)
o	  (cond ((has-sign-change? a b)
		 (push (list a b) isolated-intervals))
		(t (let ((middle (/ (+ a b) 2)))
		     (unless (< (- b a) epsilon)
		       (setf intervals (nconc intervals (list (list a middle) (list middle b))))))))
	  (when (= (length isolated-intervals) expected-number-of-roots)
	    ;; early out.
	    (return-from isolate-roots-of-2d-bezier isolated-intervals))))

      (return-from isolate-roots-of-2d-bezier isolated-intervals))))

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
       
(defun roots-by-projected-polyhedron (polynomial a b &optional (epsilon 1.0d-15))
  (let* ((degree (1- (length polynomial)))
	 (transformed (transform-polynomial polynomial a b))
	 (bernstein-basis-coefficients (monomial-to-bernstein transformed))
	 (expected-number-of-roots (loop for i from 1 below (length bernstein-basis-coefficients)
					 with sign = (signum (elt bernstein-basis-coefficients 0))
					 when (/= sign (setq sign (signum (elt bernstein-basis-coefficients i))))
					   sum 1))
	 (control-points (let ((array (make-array (1+ degree))))
			   (loop for i from 0 to degree
				 do (setf (aref array i) (vec2 (/ i degree) (aref bernstein-basis-coefficients i))))
			   array))
	 (convex-hull (convex-hull--2d control-points)))
    (multiple-value-bind (start end) (convex-polygon-domain convex-hull)
      (unless end
	(return-from roots-by-projected-polyhedron nil))
      (let ((roots (roots-of-2d-bezier control-points start end epsilon expected-number-of-roots)))
	(sort (mapcar #'(lambda (s) (+ a (* s (- b a)))) roots) #'<)))))
  


  

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

(defclass bezier-mixin () ())

(defclass bezier-curve-mixin (bezier-mixin parametric-curve-mixin geometry-mixin)
  ((order :slot-class :virtual
	  :type fixnum
	  :getter ((length (the control-points)))
	  :setter ((setter-error 'order self)))
   
   (degree :slot-class :virtual
	   :type fixnum
	   :getter ((1- (the order)))
	   :setter ((setter-error 'degree self)))
   
   (control-points :initarg :control-points
		   :initarg control-points)

   (domain :slot-class :virtual
	   :type cl:list
	   :getter ((list 0.0d0 1.0d0))
	   :setter ((setter-error 'domain self)))

   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((let ((cpoints (the control-points)))
			   (loop for i from 0 below (the degree)
				 always (v= (elt cpoints i) (elt cpoints (1+ i))))))
		:setter ((setter-error 'degenerate? self)))

   (closed? :slot-class :virtual
	    :type boolean
	    :getter ((v= (elt (the control-points) 0) (elt (the control-points) (the degree))))
	    :setter ((setter-error 'closed? self)))
   
   (periodic? :slot-class :virtual
	      :type boolean
	      :getter (nil)
	      :setter ((setter-error 'periodic? self)))))


(defclass bezier-space-curve (space-curve-mixin bezier-curve-mixin entity-mixin)
  ((rational? :slot-class :virtual
	      :type boolean
	      :getter ((let ((cpoints (the control-points)))
			 (not
			  (loop for cpoint across cpoints
				always (= (vw cpoint) 1.0d0)))))
	      :setter ((setter-error 'rational? self)))))


(defclass bezier-plane-curve (plane-curve-mixin bezier-curve-mixin entity-mixin)
  ((rational? :slot-class :virtual
	      :type boolean
	      :getter ((let ((cpoints (the control-points)))
			 (not
			  (loop for cpoint across cpoints
				always (= (vz cpoint) 1.0d0)))))
	      :setter ((setter-error 'rational? self)))))


(defmethod initialize-instance ((self bezier-curve-mixin) &rest initargs)
  (let ((cpoints (or (getf initargs :control-points)
		     (getf initargs 'control-points))))
    
    (assert cpoints)
    
    (when (listp cpoints)
      (setq cpoints (coerce cpoints 'vector)))
    
    (call-next-method self :control-points cpoints)))

(defmethod initialize-instance :after ((self bezier-space-curve) &rest initargs)
  (declare (ignore initargs))
  (let ((cpoints (the control-points)))
    (loop for cpoint across cpoints for i from 0
	  do (cond ((typep cpoint 'vec3) (setf (aref cpoints i) (3dm.d::%vec4 (vx cpoint) (vy cpoint) (vz cpoint) 1.0d0)))
		   ((typep cpoint 'vec4) t)
		   (t (error "invalid control point type for space curve: ~S ~S" (type-of cpoint) cpoint))))
    (values)))

(defmethod initialize-instance :after ((self bezier-plane-curve) &rest initargs)
  (declare (ignore initargs))
  (let ((cpoints (the control-points)))
    (loop for cpoint across cpoints for i from 0
	  do (cond ((typep cpoint 'vec2) (setf (aref cpoints i) (3dm.d::%vec3 (vx cpoint) (vy cpoint) 1.0d0)))
		   ((typep cpoint 'vec3) t)
		   (t (error "invalid control point type for plane curve: ~S ~S" (type-of cpoint) cpoint))))
    (values)))

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
  (declare (optimize (speed 3) (safety 3)))
  (setq parameter (coerce parameter 'double-float))
  (let* ((n (the degree)))
    (declare (type fixnum n))
    (let* ((B (bernstein n parameter))
	   (C (3dm.d::%vec2 0.0d0 0.0d0))
	   (P (the control-points)))
      (loop for k from 0 to n
	    do (setq C (v+ (cl:the vec2 C) (v* (cl:the double-float (aref B k)) (cl:the vec2 (elt P k)))))
	    finally (return C)))))

(defmethod evaluate1 ((self bezier-space-curve) (parameter real) &key (derivs 0))
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


(defclass b-spline-mixin () ())

(defclass b-spline-curve-mixin (b-spline-mixin parametric-curve-mixin)
  ((degree :type fixnum
	   :initarg :degree
	   :initarg degree)
   
   (knot-vector :type simple-array
		:initarg :knot-vector
		:initarg knot-vector)
   
   (control-points :type simple-array
		   :initarg :control-points
		   :initarg control-points)

   (order :slot-class :virtual
	  :type fixnum
	  :getter ((1+ (the degree)))
	  :setter ((setter-error 'order self)))

   (bezier? :slot-class :virtual
	    :type boolean
	    :getter ((and (= (the degree) (1- (length (the control-points))))
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
		:getter ((let ((cpoints (the control-points)))
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

(defmethod initialize-instance ((self b-spline-curve-mixin) &rest initargs)
  (let ((cpoints (or (getf initargs :control-points)
		     (getf initargs 'control-points)))
	(knot-vector (or (getf initargs :knot-vector)
			 (getf initargs 'knot-vector))))
    
    (assert cpoints)
    (assert knot-vector)
    
    (when (listp cpoints)
      (setq cpoints (coerce cpoints 'vector)))

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
      
      (call-next-method self
			:control-points cpoints
			:knot-vector knot-vector
			:degree p))))
			
			

(defgeneric insert-knot (b-spline-curve knot i))

(defclass b-spline-plane-curve (plane-curve-mixin b-spline-curve-mixin entity-mixin)
  ((rational? :slot-class :virtual
	      :type boolean
	      :getter ((let ((cpoints (the control-points)))
			 (not
			  (loop for cpoint across cpoints
				always (= (vz cpoint) 1.0d0)))))
	      :setter ((setter-error 'rational? self)))))

(defclass b-spline-space-curve (space-curve-mixin b-spline-curve-mixin entity-mixin)
  ((rational? :slot-class :virtual
	      :type boolean
	      :getter ((let ((cpoints (the control-points)))
			 (not
			  (loop for cpoint across cpoints
				always (= (vw cpoint) 1.0d0)))))
	      :setter ((setter-error 'rational? self)))))

(defclass b-spline-surface-mixin (b-spline-mixin parametric-surface-mixin)
  ((order-u :slot-class :virtual
	    :type fixnum
	    :getter ((first (array-dimensions (the control-points))))
	    :setter ((setter-error 'order-u self)))
	     
   (order-v :slot-class :virtual
	    :type fixnum
	    :getter ((second (array-dimensions (the control-points))))
	    :setter ((setter-error 'order-v self)))

   (degree-u :slot-class :virtual
	     :type fixnum
	     :getter ((1- (the order-u)))
	     :setter ((setter-error 'degree-u self)))
	     
   (degree-v :slot-class :virtual
	     :type fixnum
	     :getter ((1- (the order-u)))
	     :setter ((setter-error 'degree-v self)))
   
   (knot-vector-u :type sequence
		  :initarg :knot-vector-u
		  :initarg knot-vector-u)
   
   (knot-vector-v :type sequence
		  :initarg :knot-vector-v
		  :initarg knot-vector-v)

   (control-points :type array
		   :initarg :control-points
		   :initarg control-points)
   
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
	       :setter ())))

(defun find-span (n p u knot-vector)
  ;; Algorithm A2.1 pg. 68 _The Nurbs Book_ 2nd edition
  (when (= u (elt knot-vector (1+ n)))
    (return-from find-span n))
  (let* ((low p)
	 (high (1+ n))
	 (mid (/ (+ low high) 2)))
    (loop while (or (< u (aref knot-vector mid))
		    (>= u (aref knot-vector (1+ mid))))
	  do (if (< u (aref knot-vector mid))
		 (setq high mid)
		 (setq low mid))
	     (setq mid (/ (+ low high) 2))
	  finally (return mid))))

(defun basis-funs (i u p knot-vector)
  ;; Algorithm A2.2 pg. 70 _The Nurbs Book_ 2nd edition
  (let ((N (make-array (1+ p) :element-type 'double-float :initial-element 1.0d0))
	(left (make-array (1+ p) :element-type 'double-float))
	(right (make-array (1+ p) :element-type 'double-float))
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

(defmethod evaluate2 ((self b-spline-surface-mixin) (u real) (v real) &key (derivs-u 0) (derivs-v 0))
  (let* ((knot-vector-u (the knot-vector-u))
	 (knot-vector-v (the knot-vector-v))
	 (Pw (the control-points))
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
			    (3dm::binary-v+
			     (cl:the vec4 (aref temp l))
			     (3dm::binary-v*
			      (cl:the double-float (aref Nu k))
			      (cl:the vec4 (aref Pw (+ uspan-p k) (+ vspan-q l)))))))
	  finally (loop for l from 0 to q
			do (setq Sw (3dm::binary-v+
				     (cl:the vec4 Sw)
				     (3dm::binary-v* (cl:the double-float (aref Nv l))
						     (cl:the vec4 (aref temp l))))))
		  (return (safe-euclid Sw)))))
	  

   
  
(defclass b-spline-surface (3d-mixin b-spline-surface-mixin entity-mixin)
  ())


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


