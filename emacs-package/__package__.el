;; __package__.el --- __title__ File  -*- lexical-binding: t; -*-

;; Copyright (c) __year__ Marc-Antoine Loignon

;; Author: Marc-Antoine Loignon <developer@lognoz.org>
;; Homepage: https://github.com/lognoz/__package__
;; Keywords: __keywords__
;; Package-Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))

;; This file is not part of GNU Emacs.

;;; License: GNU General Public License v3.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Provide __title__...
;; https://github.com/lognoz/__package__

;;; Code:

(require 'cl-lib)

;;; Contextual constant.

(defgroup __package__ nil
  "Provide __title__..."
  :prefix "__package__"
  :group 'tools
  :link '(url-link "https://github.com/lognoz/__package__"))

(defgroup __package__-faces nil
  "Faces used in __title__."
  :group '__package__
  :group 'faces)

(defvar __package__-version
  (eval-when-compile
    (with-temp-buffer
      (concat "0.0.1"
        (let ((dir (file-name-directory (or load-file-name
                                            byte-compile-current-file))))
          ;; Git repository or running in batch mode
          (if (and (file-exists-p (concat dir "/.git"))
                (ignore-errors
                  (zerop (call-process "git" nil '(t nil) nil
                                       "rev-parse"
                                       "--short" "HEAD"))))
            (progn
              (goto-char (point-min))
              (concat "-"
                (buffer-substring (point-min)
                  (line-end-position)))))))))
  "The current version of __title__.")

;;; Internal functions.


;;; External __title__ functions.

;;;###autoload
(define-minor-mode __package__-mode
  "Mode for __title__."
  :lighter " __package__"
  (message "__package__ mode initialized..."))

;;;###autoload
(defun __package__-version ()
  "Print the current __title__ version."
  (interactive)
  (message "__title__ %s, Emacs %s, %s"
           __package__-version
           emacs-version
           system-type))


(provide '__package__)

;;; __package__.el ends here
