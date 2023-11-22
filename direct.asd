(defsystem direct
  :description "A direct modeling layer for a CAD system."
  :author "Andrew K Wolven <awolven@gmail.com>"
  :license "proprietary"
  :depends-on
  (:adhoc :3d-math)
  :components
  ((:file "package")
   (:file "dml-class" :depends-on ("package"))
   (:file "intersection-rational-quadratic-beziers" :depends-on ("package"))
   (:module "intersection-rational-cubic-beziers"
    :depends-on ("package")
    :components (;;(:file "intersection-rational-cubic-beziers-c0")
		 ;;(:file "intersection-rational-cubic-beziers-c1")
		 ;;(:file "intersection-rational-cubic-beziers-c2")
		 ;;(:file "intersection-rational-cubic-beziers-c3")
		 ;;(:file "intersection-rational-cubic-beziers-c4")
		 ;;(:file "intersection-rational-cubic-beziers-c5")
		 ;;(:file "intersection-rational-cubic-beziers-c6")
		 ;;(:file "intersection-rational-cubic-beziers-c7")
		 ;;(:file "intersection-rational-cubic-beziers-c8")
		 ;;(:file "intersection-rational-cubic-beziers-c9")
		 ))
   (:file "power-basis-cubic-cubic-intersection" :depends-on ("package"))
   (:file "power-basis-cubic-quadratic-intersection" :depends-on ("package"))
   (:file "entities" :depends-on ("dml-class"))
   (:file "instances" :depends-on ("entities"))
   (:file "test" :depends-on ("instances"))))
