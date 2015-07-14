(in-package :cl-user)
(defpackage markedit-test
  (:use :cl :fiveam))
(in-package :markedit-test)

(def-suite tests
  :description "MarkEdit tests.")
(in-suite tests)

(test requests
  (finishes
   (markedit:start-app))
  (finishes
   (lucerne:stop markedit:app)))

(run! 'tests)
