;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  File:       layers/mrfroop/funcs.el
;;  Created:    <2017-04-19 on>
;;  Language:   Emacs-Lisp
;;  Time-stamp: <2017-04-19 on>
;;  Platform:   Emacs
;;  OS:         N/A
;;  Author:     [MrFroop] Fredrik Jambrén <fredrik@jambren.com>
;;
;;  PURPOSE:    GNU Emacs functions
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;      Personal emacs functions.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:
;;

(defun mrfroop/insert-time-stamp ()
  "Inserts the current date and time."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %R")))

;;; Local Variables: ***
;;; mode:Emacs-lisp ***
;;; fill-column: 79 ***
;;; comment-column: 0 ***
;;; End: ***
