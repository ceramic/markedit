(in-package :cl-user)
(defpackage marked-test
  (:use :cl :fiveam))
(in-package :marked-test)

(def-suite tests
  :description "marked tests.")
(in-suite tests)

(test simple-test
  (is
   (equal 1 1))
  (is-true
   (and t t)))

(run! 'tests)
