(defsystem direct
  :description "A direct modeling layer for a CAD system."
  :author "Andrew K Wolven <awolven@gmail.com>"
  :license "proprietary"
  :depends-on
  (:3d-math)
  :serial t
  :components
  ((:file "package")
   (:file "dml-class")
   (:file "entities")))
