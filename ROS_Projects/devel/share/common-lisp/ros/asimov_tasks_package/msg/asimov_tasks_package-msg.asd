
(cl:in-package :asdf)

(defsystem "asimov_tasks_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "calc_message" :depends-on ("_package_calc_message"))
    (:file "_package_calc_message" :depends-on ("_package"))
  ))