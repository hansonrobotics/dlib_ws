
(cl:in-package :asdf)

(defsystem "dlib_puppeteering-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "lm_points" :depends-on ("_package_lm_points"))
    (:file "_package_lm_points" :depends-on ("_package"))
  ))