(defsystem markedit
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :maintainer "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage "https://github.com/ceramic/markedit"
  :bug-tracker "https://github.com/ceramic/markedit/issues"
  :source-control (:git "git@github.com:ceramic/markedit.git")
  :depends-on (:ceramic
               :lucerne
               :3bmd
               :3bmd-ext-code-blocks)
  :components ((:module "assets"
                :components
                ((:module "css"
                  :components
                  ((:static-file "style.css")))
                 (:module "js"
                  :components
                  ((:static-file "scripts.js")))))
               (:module "src"
                :serial t
                :components
                ((:file "markedit"))))
  :description "A Markdown editor example with Ceramic."
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op markedit-test))))
