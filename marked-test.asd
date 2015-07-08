(defsystem marked-test
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :description "Tests for marked."
  :depends-on (:marked
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "marked")))))
