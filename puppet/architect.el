;; architect.el --- Architect Puppet Template -*- lexical-binding: t; -*-

(architect-default-directory "~/project/puppet/")

(architect-variable
  :variable "__virtual_machine__"
  :input "Vagrant Virtual Machine")

(architect-variable
  :variable "__synced_folder__"
  :input "Synced Folder")

(architect-variable
  :variable "__module__"
  :regex "^[-_a-z0-9]+$"
  :input "Module"
  :input-error "alphanumeric")

(architect-variable
  :variable "__os__"
  :input "Operating System")

(architect-variable
  :variable "__example__"
  :regex "^[-_a-z0-9]+$"
  :input "Example Filename"
  :input-error "alphanumeric")

(architect-commit
  :add ".editorconfig"
  :message "Build: Add supports to maintain consistent coding styles")

(architect-commit
  :add ".gitignore"
  :message "Build: Add ignored files and directories")

(architect-commit
  :add "Gemfile"
  :message "Tests: Add inital Gemfile")

(architect-commit
  :add "Rakefile"
  :message "Tests: Add initial Rakefile")

(architect-commit
  :add "LICENSE"
  :message "Build: Add a license")
