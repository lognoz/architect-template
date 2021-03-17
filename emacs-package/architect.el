;; architect.el --- Architect Emacs Package Template -*- lexical-binding: t; -*-

(architect-default-directory "~/.emacs.d/site-lisp/")

(architect-variable
  :variable "__year__"
  :value (format-time-string "%Y"))

(architect-variable
  :variable "__package__"
  :regex "^[-_a-z0-9]+$"
  :input "Filename"
  :input-error "alphanumeric"
  :default-value (architect-directory))

(architect-variable
  :variable "__title__"
  :input "Title"
  :after-function 'string-trim
  :default-value
  (let ((package (architect-get "__package__")))
    (capitalize (replace-regexp-in-string "[\-\_]" " " package))))

(architect-variable
  :variable "__keywords__"
  :input "Keywords"
  :after-function 'downcase
  :default-value
  (downcase (architect-get "__title__")))

(architect-variable
  :variable "__test__"
  :input "Do you want to include test directory? "
  :prompt 'y-or-n-p)

(architect-shell-command
  :command "rm -rf test"
  :only-if (not (architect-get "__test__"))
  :quiet t)

(architect-commit
  :add "LICENSE"
  :message "Build: Add a license")

(architect-commit
  :add ".editorconfig"
  :message "Build: Add supports to maintain consistent coding styles")

(architect-commit
  :add ".gitignore"
  :message "Build: Add ignored files and directories")

(architect-commit
  :add ".dir-locals.el"
  :message "Build: Disabled indent-tabs-mode in directory local variables")

(architect-commit
  :add ".travis.yml"
  :message "Travis: Add initial travis-ci directives")

(architect-commit
  :add "Makefile"
  :message "Make: Add functions to compile and checkdoc files")
