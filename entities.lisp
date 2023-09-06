(in-package :dml)

(defun setter-error (slot-name self)
  (error "slot ~A cannot be set in ~S" slot-name self))

(defclass entity-mixin ()
  ;; entities are persistent objects
  ((%plist :initform (list :head))
   
   (plist :slot-class :virtual
	  :type cl:list
	  :getter ((cdr (the %plist)))
	  :setter ((setter-error 'plist self)))))

(defmethod set-property ((self entity-mixin) (property-name symbol) property-value)
  (setf (getf (cdr (the %plist)) property-name) property-value))

(defmethod get-property ((self entity-mixin) (property-name symbol))
  (let ((val (getf (the plist) property-name :%%none%%)))
    (if (eq val :%%none%%)
	(values nil nil)
	(values val t))))

(defclass geometry-mixin ()
  ;; these objects are objects with drawable geometry
  ((%group-id :initform nil)
   (%prim-ids :initform nil)
   
   (hidden? :initform nil
	    :type boolean
	    :initarg :hidden?
	    :initarg hidden?)

   (layer :initform nil
	  :initarg :layer
	  :initarg layer)

   (color :initform nil
	  :initarg :color
	  :initarg color)))

(defclass bounding-box (geometry-mixin)
  ((hidden? :initform t
	    :type boolean)
   
   (min :initform (vec3 most-negative-double-float
			most-negative-double-float
			most-negative-double-float)
	:initarg :min
	:initarg min
	:type vec3)
   
   (max :initform (vec3 most-positive-double-float
			most-positive-double-float
			most-positive-double-float)
	:initarg :max
	:initarg max
	:type vec3)

   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((let* ((min (the min))
				(max (the max)))
			   (or (= (vx min) (vx max))
			       (= (vy min) (vy max))
			       (= (vz min) (vz max)))))
		:setter ((setter-error 'degenerate? self)))

   (center :slot-class :virtual
	   :type vec3
	   :getter ((v/ (v+ (the min) (the max)) 2.0d0))
	   :setter ((setter-error 'center self)))))

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
  ((origin :type point-mixin
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
	     :getter ((the origin center))
	     :setter ((declare (type vec3 value))
		      (setf (the origin center) value)
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
			  (location (the origin center)))
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
	   :type point-mixin
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
			     (location (send origin center)))
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
   
   (location :slot-class :virtual
	     :type vec3
	     :initarg :location
	     :initarg location
	     :getter ((vec3 (the x) (the y) (the z)))
	     :setter ((declare (type vec3 value))
		      (setf (the x) (vx value)
			    (the y) (vy value)
			    (the z) (vz value))))
   
   (center :slot-class :virtual
	   :type vec3
	   :initarg :center
	   :initarg center
	   :getter ((the location))
	   :setter ((setf (the location) value)
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
	     :getter ((vec2 (the u) (the v)))
	     :setter ((declare (type vec2 value))
		      (setf (the u) (vx value)
			    (the v) (vy value))))
   
   (center :slot-class :virtual
	   :type vec3
	   :getter ((transform (the location) (the plane)))
	   :setter ((setter-error 'center self)))
   
   (x :slot-class :virtual
      :type double-float
      :getter ((vx (cl:the vec3 (the center))))
      :setter ((setter-error 'x self)))

   (y :slot-class :virtual
      :type double-float
      :getter ((vy (cl:the vec3 (the center))))
      :setter ((setter-error 'y self)))

   (z :slot-class :virtual
      :type double-float
      :getter ((vy (cl:the vec3 (the center))))
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
  ((linetype :initform nil
	     :initarg :linetype
	     :initarg linetype)))

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
		 :getter ((let* ((ctail (the tail center))
				 (chead (the head center))
				 (max-x (max (vx ctail) (vx chead)))
				 (max-y (max (vy ctail) (vy chead)))
				 (max-z (max (vz ctail) (vz chead)))
				 (min-x (min (vx ctail) (vx chead)))
				 (min-y (min (vy ctail) (vy chead)))
				 (min-z (min (vz ctail) (vz chead))))
			    (make-bounding-box (vec3 min-x min-y min-z)
					       (vec3 max-x max-y max-z))))
		 :setter ((setter-error 'bounding-box self)))))

(defclass line (3d-mixin line-mixin entity-mixin)
  ((tail :type point-mixin
	 :initarg :tail
	 :initarg tail)
   
   (head :type point-mixin
	 :initarg :head
	 :initarg head)

   (start :slot-class :virtual
	  :type vec3
	  :initarg :start
	  :initarg start
	  :getter ((the tail center))
	  :setter ((setf (the tail location) (cl:the vec3 value))))

   (end :slot-class :virtual
	:type vec3
	:initarg :end
	:initarg end
	:getter ((the head center))
	:setter ((setf (the head location) (cl:the vec3 value))))

   (mid :slot-class :virtual
	:type vec3
	:initarg :mid
	:initarg mid
	:getter ((v+ (the tail center) (v* 0.5d0 (the span))))
	:setter ((let ((new-span (v* 2.0d0 (v- (cl:the vec3 value) (the tail location)))))
		   (setf (the span) new-span)
		   (values))))
   
   (degenerate? :slot-class :virtual
		:type boolean
		:getter ((v= (the tail center) (the head center)))
		:setter ((setter-error 'degenerate? self)))
   
   (span :slot-class :virtual
	 :type vec3
	 :initarg :span
	 :initarg span
	 :getter ((v- (cl:the vec3 (the head center)) (cl:the vec3 (the tail center))))
	 :setter ((declare (type vec3 value))
		  ;; this will fail if head is 2d-point
		  (setf (the head center) (v+ (cl:the vec3 (the tail center)) value))))

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
