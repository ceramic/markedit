(in-package :cl-user)
(defpackage marked
  (:use :cl :lucerne)
  (:export :app)
  (:documentation "Main marked code."))
(in-package :marked)

;;; Set up 3bmd

(setf 3bmd:*smart-quotes* t)

;;; App

(defapp app
  :middlewares ((<clack-middleware-static>
                 :root (asdf:system-relative-pathname :self #p"assets/")
                 :path "/static/")))

;;; Templates

(djula:add-template-directory
 (asdf:system-relative-pathname :marked #p"templates/"))

(defparameter +index+
  (djula:compile-template* "index.html"))

;;; Views

@route app "/"
(defview index ()
  "The index page displays the editor."
  (render-template (+index+)))

@route app (:post "/to-html")
(defview to-html ()
  "This part of the API receives Markdown and emits HTML"
  (with-params (markdown)
    (respond
     (with-output-to-string (str)
       (3bmd:parse-string-and-print-to-stream markdown str)))))
