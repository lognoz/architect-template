;; architect.el --- Architect JQuery Plugin Template -*- lexical-binding: t; -*-

(architect-default-directory "~/document")

(architect-variable
  :variable "__year__"
  :value (format-time-string "%Y"))

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
  :variable "__class__"
  :regex "^[a-zA-Z]+$"
  :input "Class"
  :input-error "only accept alpha"
  :after-function 'capitalize)

(architect-commit
  :add "LICENSE"
  :message "Build: Add a license")

(architect-commit
  :add ".editorconfig"
  :message "Build: Add supports to maintain consistent coding styles")

(architect-commit
  :add ".gitignore .npmignore"
  :message "Build: Add ignored files and directories")

(architect-commit
  :add ".eslintrc.json"
  :message "Test: Add rule for syntax validation")

(architect-commit
  :add ".travis.yml"
  :message "Travis: Add initial travis-ci directives")

(architect-commit
  :add "Gruntfile.js"
  :message "Grunt: Add testing, dist and default tasks")

(architect-commit
  :add "grunt"
  :message "Grunt: Add testing, uglify, eslint and builder configurations")

(architect-commit
  :add "lib"
  :message "Lib: Add JQuery and testing dependencies")
