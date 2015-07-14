(defsystem markedit-test
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :description "Tests for MarkEdit."
  :depends-on (:markedit
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "markedit")))))
