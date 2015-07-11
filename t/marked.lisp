(in-package :cl-user)
(defpackage marked-test
  (:use :cl :fiveam))
(in-package :marked-test)

(def-suite tests
  :description "marked tests.")
(in-suite tests)

(test requests
  (finishes
   (marked:start-app))
  (finishes
   (lucerne:stop marked:app)))

(run! 'tests)
