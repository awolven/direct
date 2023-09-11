(in-package :direct)

(defconstant 2pi #.(* pi 2.0d0))

(defconstant pi/2 #.(/ pi 2.0d0))

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

(defclass geometry-mixin ()
  ;; these objects are objects with drawable geometry
  ((%group-id :initform nil)
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

(defclass bounding-box (geometry-mixin)
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
  (print-unreadable-object (self stream :type t)
    (format stream "MIN: ~A, MAX: ~A" (the min) (the max))
    self))

(defun make-bounding-box (min max)
  (declare (type vec3 min max))
  (make-instance 'bounding-box :min min :max max))   
   

(defclass point-mixin (geometry-mixin)
  ((bounding-box :slot-class :virtual
		 :type bounding-box
		 :getter ((let ((center (the center))) (make-bounding-box center center)))
		 :setter ((setter-error 'bounding-box self)))))

(defclass placement-mixin (geometry-mixin)
  ((origin :type t
	   :initarg :origin
	   :initarg origin
	   :initform (make-instance 'point
				     :x most-positive-double-float
				     :y most-positive-double-float
				     :z most-positive-double-float))
   
   (location :slot-class :virtual
	     :type vec3
	     :initarg :location
	     :initarg location
	     :getter ((the origin location))
	     :setter ((declare (type vec3 value))
		      (setf (the origin location) value)
		      (values)))))

(defmethod initialize-instance :before ((self placement-mixin) &rest initargs)
  (when (and (or (getf initargs :location)
		 (getf initargs 'location))
	     (or (getf initargs :origin)
		 (getf initargs 'origin)))
    (error "cannot specify both location and origin when initializing a placement: ~S" initargs))
  (values))

(defmethod initialize-instance :after ((self placement-mixin) &rest initargs)
  (unless (or (getf initargs :location)
	      (getf initargs 'location)
	      (getf initargs :origin)
	      (getf initargs 'origin))
    (setf (the location) (vec3 0 0 0)))
  (values))

(defclass axis1-placement (placement-mixin entity-mixin)
  ((axis-x :initform 0.0d0
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
		  (setf (the axis-x) (vx value)
			(the axis-y) (vy value)
			(the axis-z) (vz value))
		  (values)))))

(defclass axis2-placement-2d (placement-mixin entity-mixin)
  ((ref-direction-x :initform 1.0d0
		    :type double-float)
   
   (ref-direction-y :initform 0.0d0
		    :type double-float)
   
   (ref-direction-z :initform 0.0d0
		    :type double-float)

   (ref-direction :slot-class :virtual
		  :type vec3
		  :initarg :ref-direction
		  :initarg ref-direction
		  :getter ((vec3 (the ref-direction-x)
				 (the ref-direction-y)
				 (the ref-direction-z)))
		  :setter ((declare (type vec3 value))
			   (setf (the ref-direction-x) (vx value)
				 (the ref-direction-y) (vy value)
				 (the ref-direction-z) (vz value))
			   (values)))))

(defclass axis2-placement-3d (placement-mixin entity-mixin)
  ((axis-x :initform 0.0d0
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
			   (setf (the ref-direction-x) (vx value)
				 (the ref-direction-y) (vy value)
				 (the ref-direction-z) (vz value))
			   (values)))
   
   (matrix :slot-class :virtual
	   :type mat4
	   :initarg :matrix
	   :initarg matrix
	   :getter ((let ((y-axis (vc (the axis) (the ref-direction)))
			  (location (the origin location)))
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

(defmethod translate! ((self axis2-placement-3d) (offset vec3))
  (setf (the location) (v+ (the location) offset))
  (values))

(defmethod rotate! ((self axis2-placement-3d) (axis vec3) (angle real))
  (let* ((quat (qrotation axis angle))
	 (matrix (matrix-from-quaternion quat)))
    (setf (the matrix) (m* matrix (the matrix)))
    (values)))

(defmethod scale! ((self axis2-placement-3d) (factor vec3))
  (scale! (the origin) factor))

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
	   :getter (nil)
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

(defclass relative-coordinate-system-mixin (coordinate-system-mixin)
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
	   :setter ((declare (type point-mixin value))
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

(defmethod add-entity ((coord-sys coordinate-system-mixin) entity)
  (declare (type coordinate-system-mixin coord-sys))
  (let ((entities (slot-value coord-sys '%entities)))
    (setf (gethash entity entities) entity)
    t))

(defmethod delete-entity ((coord-sys coordinate-system-mixin) entity)
  (declare (type coordinate-system-mixin coord-sys))
  (let ((entities (slot-value coord-sys '%entities)))
    (remhash entity entities)
    t))

(defvar *global-coordinate-system* (make-instance 'global-coordinate-system))

(defclass 3d-mixin ()
  ((3-space :initarg :coordinate-system
	    :type (or null 3-space)))
  
  (:default-initargs :coordinate-system *global-coordinate-system*))

(defmethod initialize-instance :after ((self 3d-mixin) &rest initargs)
  (declare (ignore initargs))
  (let ((coord-sys (the 3-space)))
    (when coord-sys
      (let ((entities (slot-value coord-sys '%entities)))
	(setf (gethash self entities) self))))
  (values))

(defclass 3-space (3d-mixin relative-coordinate-system-mixin entity-mixin)
  ;; a 3-space is not a geometry mixin, but it's placement is
  ())

(defclass plane (3d-mixin relative-coordinate-system-mixin geometry-mixin entity-mixin)
  ((normal :slot-class :virtual
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
			     (origin (send placement origin))
			     (location (send origin location)))
			(vec4 (vx normal)
			      (vy normal)
			      (vz normal)
			      (- (v. location normal)))))
	     :setter ((declare (type vec4 value))
		      (let* ((a (vx value))
			     (b (vy value))
			     (c (vz value))
			     (d (vw value))
			     (normal (vec3 a b c))
			     (origin (v* (/ (- d) (+ (* a a) (* b b) (* c c))) normal)))
			(setf (the placement location) origin)
			(setf (the placement axis) normal)
			(values))))))

(defmethod add-entity :around ((coord-sys global-coordinate-system) entity)
  (prog1 (call-next-method)
    (setf (send entity 3-space) coord-sys)))

(defmethod add-entity :around ((coord-sys 3-space) entity)
  (prog1 (call-next-method)
    (setf (send entity 3-space) coord-sys)))

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
  (print-unreadable-object (self stream :type t)
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
  



(defclass 2d-mixin ()
  ((plane :initarg :plane
	  :initarg plane
	  :type plane)))

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

(defmethod scale! ((self 3d-point-mixin) (factor vec3))
  (let* ((matrix (nmscale (meye 4) (vec4 (vx factor) (vy factor) (vz factor) 1.0d0)))
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
  (print-unreadable-object (self stream :type t)
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
	     :getter ((transform (the center) (the plane)))
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
  (print-unreadable-object (self stream :type t)
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

(defclass line-mixin (curve-mixin)
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

(defclass line (3d-mixin line-mixin entity-mixin)
  ((tail :type t
	 :initarg :tail
	 :initarg tail)
   
   (head :type t
	 :initarg :head
	 :initarg head)

   (start :slot-class :virtual
	  :type vec3
	  :initarg :start
	  :initarg start
	  :getter ((the tail location))
	  :setter ((setf (the tail location) (cl:the vec3 value))))

   (end :slot-class :virtual
	:type vec3
	:initarg :end
	:initarg end
	:getter ((the head location))
	:setter ((setf (the head location) (cl:the vec3 value))))

   (mid :slot-class :virtual
	:type vec3
	:initarg :mid
	:initarg mid
	:getter ((v+ (the tail location) (v* 0.5d0 (the span))))
	:setter ((let ((new-span (v* 2.0d0 (v- (cl:the vec3 value) (the tail location)))))
		   (setf (the span) new-span)
		   (values))))
   
   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((v= (the tail location) (the head location)))
		:setter ((setter-error 'degenerate? self)))
   
   (span :slot-class :virtual
	 :type vec3
	 :initarg :span
	 :initarg span
	 :getter ((v- (cl:the vec3 (the head location)) (cl:the vec3 (the tail location))))
	 :setter ((declare (type vec3 value))
		  ;; this will fail if head is 2d-point
		  (setf (the head location) (v+ (cl:the vec3 (the tail location)) value))))

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
		       (setf (the span) (v* (vlength (cl:the vec3 (the span))) (cl:the vec3 value))))))
  (:default-initargs :tail (make-instance 'point)
		     :head (make-instance 'point)))

(defmethod evaluate ((self line) (parameter real))
  (v+ (the start) (v* parameter (the span))))

(defmethod translate! ((self line) (offset vec3))
  (translate! (the tail) offset)
  (translate! (the head) offset)
  (values))

(defmethod rotate! ((self line) (axis vec3) (angle real))
  (rotate! (the tail) axis angle)
  (rotate! (the head) axis angle)
  (values))

(defmethod scale! ((self line) (factor vec3))
  (scale! (the tail) factor)
  (scale! (the head) factor)
  (values))

(defmethod transform! ((self line) (xform mat4))
  (transform! (the tail) xform)
  (transform! (the head) xform)
  (values))

(defclass 2d-line (line-mixin entity-mixin)
  ((tail :type 2d-point-mixin
	 :initarg :tail
	 :initarg tail)
   
   (head :type 2d-point-mixin
	 :initarg :head
	 :initarg head)

   (start :slot-class :virtual
	  :type vec2
	  :initarg :start
	  :initarg start
	  :getter ((the tail location))
	  :setter ((setf (the tail location) (cl:the vec2 value))))

   (end :slot-class :virtual
	:type vec2
	:initarg :end
	:initarg end
	:getter ((the head location))
	:setter ((setf (the head location) (cl:the vec2 value))))

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
		:getter ((and (= (the tail u) (the head u))
			      (= (the tail v) (the head v))))
		:setter ((setter-error 'degenerate? self)))

   (valid? :slot-class :virtual
	   :type boolean
	   :getter ((and (eq (the tail plane) (the head plane))
			 ))
	   :setter ((setter-error 'valid? self)))		     

   (plane :slot-class :virtual
	  :type plane
	  :initarg :plane
	  :initarg plane
	  :getter ((the tail plane))
	  :setter ((setf (the tail plane)
			 (setf (the head plane)
			       (cl:the plane value)))))

   (span :slot-class :virtual
	 :type vec2
	 :initarg :span
	 :initarg span
	 :getter ((v- (cl:the vec2 (the head location)) (cl:the vec2 (the tail location))))
	 :setter ((declare (type 2d-line self) (type vec2 value))
		  (setf (the tail location) (v+ (cl:the vec2 (the head location)) value))))

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
		       (setf (the span) (v* (vlength (cl:the vec2 (the span))) (cl:the vec2 value))))))
  
  (:default-initargs :tail (make-instance '2d-point)
		     :head (make-instance '2d-point)))

(defmethod evaluate ((self 2d-line) (parameter real))
  (v+ (the start) (v* parameter (the span))))
   
(defmethod translate! ((self 2d-line) (offset vec2))
  (translate! (the tail) offset)
  (translate! (the head) offset)
  (values))

(defmethod 2d-rotate! ((self 2d-line) (angle real))
  (2d-rotate! (the tail) angle)
  (2d-rotate! (the head) angle)
  (values))

(defmethod scale! ((self 2d-line) (factor vec2))
  (scale! (the tail) factor)
  (scale! (the head) factor)
  (values))

(defmethod transform! ((self 2d-line) (xform mat2))
  (transform! (the tail) xform)
  (transform! (the head) xform)
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
	     :getter ((transform (the center) (the plane)))
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
	     :getter ((transform (the center) (the plane)))
	     :setter ((setter-error 'location self)))))

(defun binomial-coefficient-0.5 (k)
  (/ (gamma-m+1/2 1/2) (* (factorial k) (gamma-m+1/2 (- 1/2 k)))))

(defun factorial (n)
  (if (= 0 n)
      1
      (* n (factorial (1- n)))))



(defun gamma-m+1/2 (m+1/2)
  (let ((m (- m+1/2 1/2)))
    (labels ((foo (n)
	       (if (< n 1)
		   1
		   (* n (foo (- n 2))))))
      (* #.(sqrt pi) (/ (foo (1- (* 2 m))) (expt 2 m))))))
  

(defclass arc (2d-mixin conic-section-mixin entity-mixin)
  ((orientation :initform :ccw
		:type symbol
		:initarg :orientation
		:initarg orientation)

   (degenerate? :slot-class :virtual
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

   (start-angle :initform 0.0d0
		:type double-float
		:initarg :start-angle
		:initarg start-angle)
   
   (end-angle :initform 2pi
	      :type double-float
	      :initarg :end-angle
	      :initarg end-angle)

   (delta-angle :slot-class :virtual
		:type double-float
		:getter ((let ((start (the start-angle))
			       (end (the end-angle)))
			   (if (eq (the orientation) :ccw)
			       (if (> start end)
				   (- (+ end 2pi) start)
				   (- end start))
			       (if (> end start)
				   (- (+ start 2pi) end)
				   (- start end)))))
		:setter ((setf (the end-angle)
			       (+ (the start-angle) (mod (cl:the double-float value) 2pi)))))

   (domain :slot-class :virtual
	   :type cl:list
	   :getter ((let ((start (the start-angle))
			  (end (the end-angle)))
		      (list start end)))
	   :setter ((setter-error 'domain self)))

   (start-u :slot-class :virtual
	    :type double-float
	    :getter ((+ (the center-u) (* (the radius) (cos (the start-angle)))))
	    :setter ())

   (start-v :slot-class :virtual
	    :type double-float
	    :getter ((+ (the center-v) (* (the radius) (sin (the start-angle)))))
	    :setter ())

   (start-point :slot-class :virtual
		:type vec2
		:getter ((vec2 (the start-u) (the start-v)))
		:setter ())

   (end-u :slot-class :virtual
	  :type double-float
	  :getter ((+ (the center-u) (* (the radius) (cos (the end-angle)))))
	  :setter ())

   (end-v :slot-class :virtual
	  :type double-float
	  :getter ((+ (the center-v) (* (the radius) (sin (the end-angle)))))
	  :setter ())

   (end-point :slot-class :virtual
	      :type vec2
	      :getter ((vec2 (the end-u) (the end-v)))
	      :setter ())))

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
		(start-to-interior (vec3 (- (vx interior-point) (vx start-point))
					 (- (vy interior-point) (vx start-point))
					 0))
		(interior-to-end (vec3 (- (vx end-point) (vx interior-point))
				       (- (vy end-point) (vy interior-point))
				       0))
		(clockwise? (minusp (vz (vc start-to-interior interior-to-end)))))

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
			 (getf initargs 'orientation))))			       

    (cond ((and start-point interior-point end-point)

	   (when (or start-angle end-angle center radius)
	     (error "arc specification is overconstrained ~S
choose start-point, interior-point, end-point OR
choose center, radius, start-angle, end-angle, orientation not BOTH." initargs))	   

	   (%circle-from-3pts-code (start-point interior-point end-point)
	     
	     (let* ((center-to-start (v- start-point center))
		    (center-to-end (v- end-point center))
		    (start-angle (atan (vy center-to-start) (vx center-to-start)))
		    (end-angle (atan (vy center-to-end) (vx center-to-end))))

	       (when (minusp start-angle)
		 (incf start-angle 2pi))

	       (if clockwise?
		   (when (minusp end-angle)
		     (incf end-angle 2pi))
		   (when (not (plusp end-angle))
		     (incf end-angle 2pi)))
	       
	       (call-next-method self
				 :orientation (if clockwise?
						  :cw
						  :ccw)
				 :radius radius
				 :center-u center-u
				 :center-v center-v
				 :start-angle start-angle
				 :end-angle end-angle))))
	  
	  ((and center radius start-angle end-angle)

	   (unless orientation
	     (setq orientation :ccw))

	   (assert (or (eq orientation :cw)
		       (eq orientation :ccw)))

	   (setf start-angle (mod start-angle 2pi))
	   (setf end-angle (mod end-angle 2pi))

	   (when (minusp start-angle)
	     (incf start-angle 2pi))
	   
	   (when (minusp end-angle)
	     (incf end-angle 2pi))
	   
	   (call-next-method self
			     :orientation orientation
			     :radius radius
			     :center-u (vx center)
			     :center-v (vy center)
			     :start-angle start-angle
			     :end-angle end-angle)))))

(defclass bezier-curve-mixin (geometry-mixin)
  ((degree :type fixnum
	   :initarg :degree
	   :initarg degree)
   
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

(defclass bezier-curve (3d-mixin bezier-curve-mixin entity-mixin)
  ())

(defclass 2d-bezier-curve (2d-mixin bezier-curve-mixin entity-mixin)
  ())

(defmethod initialize-instance ((self bezier-curve-mixin) &rest initargs)
  (let ((degree (or (getf initargs :degree)
		    (getf initargs 'degree)))
	(cpoints (or (getf initargs :control-points)
		     (getf initargs 'control-points))))

    (assert cpoints)

    (if degree
	(assert (= (1+ degree) (length cpoints)))
	(setq degree (1- (length cpoints))))
    
    (when (listp cpoints)
      (setq cpoints (coerce cpoints 'vector)))
    
    (call-next-method self :degree degree :control-points cpoints)))

(defmethod initialize-instance :after ((self bezier-curve) &rest initargs)
  (declare (ignore initargs))
  (let ((cpoints (the control-points)))
    (assert
     (loop for i from 0 to (the degree)
	   always (typep (elt cpoints i) 'vec3)))
    (values)))

(defmethod initialize-instance :after ((self 2d-bezier-curve) &rest initargs)
  (declare (ignore initargs))
  (let ((cpoints (the control-points)))
    (assert
     (loop for i from 0 to (the degree)
	   always (typep (elt cpoints i) 'vec2)))
    (values)))

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

(defmethod evaluate ((self 2d-bezier-curve) (parameter real))
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

(defmethod evaluate ((self bezier-curve) (parameter real))
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
	
	      
		   
	  
		   
			       

  

   
