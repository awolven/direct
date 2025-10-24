(defsystem direct
  :description "A direct modeling layer for a CAD system."
  :author "Andrew K Wolven <awolven@gmail.com>"
  :license "proprietary"
  :depends-on
  (:adhoc :3d-math)
  :components
  ((:file "package")
   (:file "dml-class" :depends-on ("package"))
   #+NOTYET
   (:module "intersection-planar-rational-cubic-beziers"
    :depends-on ("package")
    :components ((:file "intersection-planar-rational-cubic-beziers-c0")
		 (:file "intersection-planar-rational-cubic-beziers-c1")
		 (:file "intersection-planar-rational-cubic-beziers-c2")
		 (:file "intersection-planar-rational-cubic-beziers-c3")
		 (:file "intersection-planar-rational-cubic-beziers-c4")
		 (:file "intersection-planar-rational-cubic-beziers-c5")
		 (:file "intersection-planar-rational-cubic-beziers-c6")
		 (:file "intersection-planar-rational-cubic-beziers-c7")
		 (:file "intersection-planar-rational-cubic-beziers-c8")
		 (:file "intersection-planar-rational-cubic-beziers-c9")))
   #+NOTYET
   (:module "intersection-planar-rational-cubic-quadratic-beziers"
    :depends-on ("package")
    :components ((:file "intersection-planar-rational-cubic-quadratic-beziers-c0")
		 (:file "intersection-planar-rational-cubic-quadratic-beziers-c1")
		 (:file "intersection-planar-rational-cubic-quadratic-beziers-c2")
		 (:file "intersection-planar-rational-cubic-quadratic-beziers-c3")
		 (:file "intersection-planar-rational-cubic-quadratic-beziers-c4")
		 (:file "intersection-planar-rational-cubic-quadratic-beziers-c5")
		 (:file "intersection-planar-rational-cubic-quadratic-beziers-c6")))
   #+NOTYET
   (:module "intersection-planar-rational-quadratic-cubic-beziers"
    :depends-on ("package")
    :components ((:file "intersection-planar-rational-quadratic-cubic-beziers-c0")
		 (:file "intersection-planar-rational-quadratic-cubic-beziers-c1")
		 (:file "intersection-planar-rational-quadratic-cubic-beziers-c2")
		 (:file "intersection-planar-rational-quadratic-cubic-beziers-c3")
		 (:file "intersection-planar-rational-quadratic-cubic-beziers-c4")
		 (:file "intersection-planar-rational-quadratic-cubic-beziers-c5")
		 (:file "intersection-planar-rational-quadratic-cubic-beziers-c6")))
   #+NOTYET
   (:module "intersection-planar-rational-quadratic-beziers"
    :depends-on ("package")
    :components ((:file "intersection-planar-rational-quadratic-beziers-c0")
		 (:file "intersection-planar-rational-quadratic-beziers-c1")
		 (:file "intersection-planar-rational-quadratic-beziers-c2")
		 (:file "intersection-planar-rational-quadratic-beziers-c3")
		 (:file "intersection-planar-rational-quadratic-beziers-c4")))
   (:file "intersection-circle-planar-rational-cubic-bezier")
   (:file "intersection-circle-planar-rational-quadratic-bezier")
   (:file "intersection-ray-planar-rational-cubic-bezier")
   (:file "intersection-ray-planar-rational-quadratic-bezier")
   (:file "intersection-planar-rational-cubic-bezier-line")
   (:file "intersection-planar-rational-quadratic-bezier-line")
   ;;(:file "power-basis-cubic-cubic-intersection" :depends-on ("package"))
   ;;(:file "power-basis-cubic-quadratic-intersection" :depends-on ("package"))
   (:file "entities" :depends-on ("dml-class"))
   (:file "instances" :depends-on ("entities"))
   (:file "test" :depends-on ("instances"))))
