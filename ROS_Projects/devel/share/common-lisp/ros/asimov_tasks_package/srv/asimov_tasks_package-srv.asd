
(cl:in-package :asdf)

(defsystem "asimov_tasks_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "calc_service" :depends-on ("_package_calc_service"))
    (:file "_package_calc_service" :depends-on ("_package"))
  ))