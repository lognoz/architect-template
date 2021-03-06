;; architect.el --- Architect LaTex Template -*- lexical-binding: t; -*-

(defun architect-latex--require-program (program)
  "Check for system PROGRAM and printing error if not found."
  (unless (executable-find program)
    (user-error "Required program '%s' not found in your path" program)))

(defun architect-latex--pip-version ()
  "Return the current pip version."
  (architect-latex--require-program "pip")
  (string-trim
    (replace-regexp-in-string ")" ""
      (shell-command-to-string "pip -V | grep -oE '[^ ]+$'"))))

(defvar architect-latex-python-version
  (let ((version (architect-latex--pip-version)))
    (require-program (concat "python" version))
    version)
  "The current python version.")

(architect-default-directory "~/document/latex/")

(architect-variable
  :variable "__date__"
  :value (format-time-string "%B %Y"))

(architect-variable
  :variable "__python_version__"
  :value architect-latex-python-version)

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
  :command "pip install -r src/script/requirements.txt")

(architect-shell-command
  :command "make pdf clean image")
