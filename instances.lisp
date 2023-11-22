(in-package :direct)


;;(unless (boundp '*global-coordinate-system*)
(setq *global-coordinate-system* (make-instance 'global-coordinate-system))

(setq *global-origin* (make-instance 'point :x 0.0d0 :y 0.0d0 :z 0.0d0 :coordinate-system *global-coordinate-system*))
;;)

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




		    
