(in-package :direct)


(cl:defclass dml-class (standard-class) ())

(defmethod validate-superclass ((c1 dml-class) (c2 standard-class))
  t)

(cl:defclass virtual-slot-definition-mixin ()
  ())

(defmethod slot-definition-allocation ((slotd virtual-slot-definition-mixin))
  :none)

(defmethod shared-initialize :after ((instance virtual-slot-definition-mixin) slot-names &rest initargs
				     &key &allow-other-keys)
  (declare (ignore slot-names initargs))
  (values))

(cl:defclass direct-virtual-slot-definition-mixin (virtual-slot-definition-mixin)
  ((getter :initarg :getter)
   (setter :initarg :setter)))

(cl:defclass effective-virtual-slot-definition-mixin (virtual-slot-definition-mixin)
  ((getter)
   (setter)))  

(cl:defclass direct-ordinary-virtual-slot-definition (direct-virtual-slot-definition-mixin
						   standard-direct-slot-definition)
  ())

(cl:defclass effective-ordinary-virtual-slot-definition (effective-virtual-slot-definition-mixin
						      standard-effective-slot-definition)
  ())



(defun compute-getter-emfun (dslotds)
  (when dslotds
    (let ((attribute-method-function (slot-value (car dslotds) 'getter)))
      (when attribute-method-function
	(unless (functionp attribute-method-function)
	  (let ((fn (compile nil `(lambda (self)
				    ,@attribute-method-function))))
	    (setq attribute-method-function
		  (setf (slot-value (car dslotds) 'getter)
			#'(lambda (next-emfun object)
			    (funcall fn object))))))
	(let ((next-emfun (compute-getter-emfun (cdr dslotds))))
	  #'(lambda (object)
	      (funcall attribute-method-function next-emfun object)))))))

(defun compute-setter-emfun (dslotds)
  (when dslotds
    (let ((attribute-method-function (slot-value (car dslotds) 'setter)))
      (when attribute-method-function
	(unless (functionp attribute-method-function)
	  (let ((fn (compile nil `(lambda (self value)
				    ,@attribute-method-function))))
	    (setq attribute-method-function
		  (setf (slot-value (car dslotds) 'setter)
			#'(lambda (next-emfun object value)
			    (funcall fn object value))))))
	(let ((next-emfun (compute-setter-emfun (cdr dslotds))))
	  #'(lambda (object value)
	      (funcall attribute-method-function next-emfun object value)))))))


(defmethod adhoc::upgrade-eslotd ((eslotd effective-virtual-slot-definition-mixin)
			   (dslotd direct-virtual-slot-definition-mixin)
				  &rest dslotds)
  (setf (slot-value eslotd 'getter) (compute-getter-emfun dslotds))
  (setf (slot-value eslotd 'setter) (compute-setter-emfun dslotds))
  eslotd)


(defmethod direct-slot-definition-class ((class dml-class) &rest initargs)
  (case (getf initargs :slot-class)
    (:virtual (load-time-value (find-class 'direct-ordinary-virtual-slot-definition)))
    (t (call-next-method))))

(defmethod effective-slot-definition-class ((class dml-class) &rest initargs)
  (let* ((name (getf initargs :name))
	 (dslotd (loop for c in (class-precedence-list class)
		       do (let ((dslotd (find name (class-direct-slots c)
					      :key #'slot-definition-name :test #'eq)))
			    (when dslotd (return dslotd))))))
    (typecase dslotd
      (direct-ordinary-virtual-slot-definition
       (load-time-value (find-class 'effective-ordinary-virtual-slot-definition)))
      (t (call-next-method)))))

(defmethod compute-effective-slot-definition ((class dml-class) slot-name dslotds)
  (declare (ignore slot-name))
  (let ((eslotd (call-next-method)))
    (apply #'adhoc::upgrade-eslotd eslotd (first dslotds) dslotds)))

(defmethod slot-value-using-class ((class dml-class) instance
				   (slotd effective-ordinary-virtual-slot-definition))
  (funcall (slot-value slotd 'getter) instance))

(defmethod (setf slot-value-using-class) (value (class dml-class) instance
					  (slotd effective-ordinary-virtual-slot-definition))
  (funcall (slot-value slotd 'setter) instance value)
  (values))

(defmethod slot-boundp-using-class ((class dml-class) instance
				    (slotd effective-ordinary-virtual-slot-definition))
  t)


#+NIL
(defmethod finalize-inheritance :after ((class dml-class))
  (let ((eslotds (class-slots class)))
    (loop for slotd in eslotds
	  when (typep slotd 'virtual-slot-definition-mixin)
	    do (unless (functionp (slot-value slotd 'getter))
		 (setf (slot-value slotd 'getter)
		       (compile nil (slot-value slotd 'getter))))
	       (unless (functionp (slot-value slotd 'setter))
		 (setf (slot-value slotd 'setter)
		       (compile nil (slot-value slotd 'setter)))))
    (values)))
	       
(defmacro direct::defclass (name supers slots &body body)
  (let* ((adhoc::*slots-table* (make-hash-table))
	 (slots (adhoc::parse-slots-section name slots))
	 (metaclass (if (assoc :metaclass body)
			(cdr (assoc :metaclass body))
			'dml-class))
	 (initargs (when (assoc :default-initargs body)
		     (cdr (assoc :default-initargs body)))))
    (ensure-class name :metaclass metaclass ;; ensure type
		       :direct-superclasses supers)
    `(let ((old (find-class ',name nil)))
       (ensure-class ',name ;; define class
		     :metaclass ',metaclass
		     :direct-superclasses '(,@supers)
		     :direct-slots (list ,@slots)
		     :direct-default-initargs (list ,@(loop for (initarg expression) on initargs by #'cddr
							    collect `(list ',initarg ',expression
									   (lambda ()
									     ,expression)))))
       (when old (make-instances-obsolete old))
       #+sbcl(sb-pcl::update-class (find-class ',name) t)
       #+ccl(let ((ccl::*update-slots-preserve-existing-wrapper* t))
	      (ccl::update-class adhoc-class t))
       (find-class ',name))))

#+NIL
(defclass test2345 ()
  ((a :slot-class :virtual
      :getter (named-lambda (:getter a) (self) 12)
      :setter (named-lambda (:setter a) (self value) 13)))
  (:metaclass dml-class))

