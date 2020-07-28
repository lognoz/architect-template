;; architect.el --- Architect LaTex Template -*- lexical-binding: t; -*-

(architect-default-directory "~/document/latex/")

(architect-variable
  :variable "__date__"
  :value (format-time-string "%B %Y"))

(architect-variable
  :variable "__filename__"
  :regex "^[-_a-z0-9]+$"
  :input "Filename"
  :input-error "alphanumeric")

(architect-variable
  :variable "__title__"
  :input "Title"
  :after-function 'capitalize)

(architect-variable
  :variable "__description__"
  :input "Description")

(architect-shell-command
   :command "make pdf image clean")
