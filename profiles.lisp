(in-package :direct)

(defun compute-wires (segments)
  (when segments
    (let* ((n (length segments))
	   (wires (make-array n :initial-element nil)))

      (loop for s in segments for i from 0
	    do (setf (aref wires i) (list s)))
      
      (flet ((coalesce (source-index dest-index)
	       (setf (aref wires dest-index) (remove-duplicates
					      (append (aref wires source-index)
						      (aref wires dest-index)))
		     (aref wires source-index) nil)
	       (values)))
	     
	(let ((done nil))

	  (loop until done
	        do (setq done t)
	           (loop for i from 0 below n
		         do (let ((dest-segs (aref wires i)))
		              (loop for j below n
			            do (block connected-test
			                 (unless (eq i j)
				           (let ((src-segs (aref wires j)))
				             (loop for s in src-segs
				                   when (segments-connected? s dest-segs)
				                     do (coalesce j i)
					                (setq done nil)
					                (return-from connected-test))))))))
		 
	        finally (return-from compute-wires
		          (loop for segments across wires
			        when segments
			          append (if (cdr segments)
					     (let ((segs-n-coords
						     (orient-segments
						      (order-segments segments))))
					       (let ((wire
						       (if (null (list-length segs-n-coords))
							   (let ((edges (make-edges-closed segs-n-coords)))
							     (when (car edges)
							       edges #+NIL(create-wire edges)))
							   (let ((edges (make-edges-open segs-n-coords)))
							     (when (car edges)
							       edges #+NIL (create-wire edges))))))
					         (when wire (list wire))))
					     (let ((edge (pk::to-parasolid (car segments) :forward)))
					       (when edge
					         (list (list edge) #+NIL(create-wire (list edge))))))))))))))

(defun make-edges-closed (segs-n-coords)
  (remove-if
   #'null
   (when segs-n-coords
     (let* ((start (car segs-n-coords))
	    (result ())
	    (entity)
	    (coord1)
	    (coord2))
       ;;(print segs-n-coords)
       (if (typep start 'vec2)
	   (loop
	     for i from 0
	     do (setq coord1 (car segs-n-coords)
		      entity (cadr segs-n-coords)
		      coord2 (caddr segs-n-coords))
		(when (and coord1 coord2)
		  (let ((edge (pk::to-parasolid entity (if (v-within-tolerance (send entity start)
									       coord2)
							   :reverse
							   :forward))))
								   
		    (when edge
		      (push edge result))))
		(setq segs-n-coords (cddr segs-n-coords))
		(when (or (null segs-n-coords)
			  (v= start (car segs-n-coords)))
		  (return (nreverse result))))
	   (make-edges-closed (cdr segs-n-coords)))))))

(defun make-edges-open (segs-n-coords)
  (remove-if
   #'null
   (when segs-n-coords
     (if (cdr segs-n-coords)
	 (cond ((not (typep (car segs-n-coords) 'vec2))
		(error "invalid segs-n-coords list"))
	       (t (let ((coord1)
			(entity)
			(coord2)
			(result ()))
		    (loop
		      do (unless (cddr segs-n-coords)
			   (return (nreverse result)))
			 (setq coord1 (car segs-n-coords)
			       entity (cadr segs-n-coords)
			       coord2 (caddr segs-n-coords))
			 (when (and coord1 coord2)
			   (push (pk::to-parasolid entity :forward) result))
			 (setq segs-n-coords (cddr segs-n-coords))))))
	 (list (pk::to-parasolid (car segs-n-coords) :forward))))))

(defun order-segments (segs &optional (wire nil) (start nil))
  (if (null segs)
      wire
      (if (null wire)
	      (if (null (cdr segs))
	          segs
	          (order-segments (cdr segs) (list (car segs)) start))
	      (let ((first-wire (car wire))
		        (first-segs (car segs)))
	        (if (segments-connected? first-segs (list first-wire))
		        (order-segments (cdr segs) (cons first-segs wire) start)
		        (let ((last-wire (last wire)))
		          (if (segments-connected? first-segs last-wire)
		              (order-segments (cdr segs) (append wire (list first-segs)) start)
		              (if (eq first-segs start)
			              (error "not connected")
			              (order-segments (append (cdr segs) (list first-segs)) wire first-segs)))))))))

(defmethod segments-connected? (seg-a segments)
  (loop for seg-b in segments
     when (segments-connected-1? seg-a seg-b)
       do (return t)))

(defmethod segments-connected? ((seg-a circle) segments)
  nil)

(defun segments-connected-1? (seg-a seg-b)
  (flet ((average-point (p1 p2)
	   (let ((v (v/ (v+ p1 p2) 2)))
	     v)))
    (unless (eq seg-a seg-b)
      (cond ((and (within-tolerance (vx (send seg-a start))
				    (vx (send seg-b start)))
		  (within-tolerance (vy (send seg-a start))
				    (vy (send seg-b start))))
	     (average-point (send seg-a start) (send seg-b start)))
	    
	    ((and (within-tolerance (vx (send seg-a start))
				    (vx (send seg-b end)))
		  (within-tolerance (vy (send seg-a start))
				    (vy (send seg-b end))))
	     (average-point (send seg-a start) (send seg-b end)))
	    
	    ((and (within-tolerance (vx (send seg-a end))
				    (vx (send seg-b start)))
		  (within-tolerance (vy (send seg-a end))
				    (vy (send seg-b start))))
	     (average-point (send seg-a end) (send seg-b start)))
		  
	    ((and (within-tolerance (vx (send seg-a end))
				    (vx (send seg-b end)))
		  (within-tolerance (vy (send seg-a end))
				    (vy (send seg-b end))))
	     (average-point (send seg-a end) (send seg-b end)))
	    
	    (t nil)))))

(defun orient-segments (segments)
  (when segments
    (if (null (cdr segments))
	segments
	(loop while segments ;; we know segments are connected and in order
	      with seg0 = (car (last segments))
	      with seg1 = (car segments)
	      with conn = nil
	      with wire = ()
	      with open? = nil
	      do (setq conn (segments-connected-1? seg0 seg1)) ;; not connected on first iteration if open wire
		 (if conn
		     (progn (push seg0 wire)
			    (push conn wire)
			    (when (null (cdr segments))
			      (push seg1 wire)
			      ;; if closed seg1 == (car original-segments)
			      ;; if closed conn == (cadr wire)
			      ;; if open, put coord on wire
			      (when open?
				;; is the connection at the end of the seg1?
				(let ((end-pnt (send seg1 end)))
				  (if (and (within-tolerance (vx conn) (vx end-pnt))
					   (within-tolerance (vy conn) (vy end-pnt)))
				      ;; yes, start is the first point
				      (push (send seg1 start) wire)
				      ;; no, end is the first point
				      (push end-pnt wire))))))
		    
		     (progn (when open? (error "not connected"))
			    (setq open? t)
			    #+NIL
			    (push seg0 wire)))
		 
		 (setq segments (cdr segments))

		 (setq seg0 seg1
		       seg1 (and segments (car segments)))
       
	      finally (let ((wire (nreverse wire)))
			(when wire
			  (when open? ;; fixup first coordinate
			    (if (cddr wire) ;; there is another segment
				(progn
				  ;; we know they are connected, but where
				  (setq conn (segments-connected-1? (car wire) (if (typep (caddr wire) 'vec2)
										   (break)
										   (caddr wire))))

				  (let ((end-pnt (send (car wire) end)))
				    (if (and (within-tolerance (vx conn) (vx end-pnt))
					     (within-tolerance (vy conn) (vy end-pnt)))
					;; yes, start is the first point
					(push (send (car wire) start) wire)
					;; no, end is the first point
					(push end-pnt wire))))
		       
				(progn ;; end/start any order, only one segment
				  (push (send (car wire) end) wire)
				  (setq wire (nconc wire (list (send (cadr wire) start)))))))
			  (unless open?
			    (nconc wire (rest wire)))
			  ;; open wires start with coordinate, end with coordinate
			  ;; closed wires are circular
			  (return wire)))))))
