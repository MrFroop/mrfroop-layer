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

(defun mrfroop/goto-or-create-todays-jounal ()
  "Opens my journal on todays date, creates is if it doesn't exists."
  (interactive)
  (find-file
   (expand-file-name
    (concat (format-time-string "%Y%m%d") ".org")
    org-journal-dir)))

(defun mrfroop/get-journal-file-name (&optional time)
  "Calculate and return the name of todays journal file. Or get
the name of the file for optional parameter time"
  (interactive)
  (expand-file-name
   (concat (format-time-string "%Y%m%d") ".org")
   org-journal-dir))

(defun mrfroop/journal-file-insert ()
  "Insert's the journal heading based on the file's name."
  (interactive)
  (when (string-match "\\(20[0-9][0-9]\\)\\([0-9][0-9]\\)\\([0-9][0-9]\\)"
                      (buffer-name))
    (let ((year  (string-to-number (match-string 1 (buffer-name))))
          (month (string-to-number (match-string 2 (buffer-name))))
          (day   (string-to-number (match-string 3 (buffer-name))))
          (datim nil))
      (setq datim (encode-time 0 0 0 day month year))
      (insert (format-time-string
               "#+TITLE: Journal Entry- %Y-%b-%d (%A)\n\n" datim)))))

;;; Local Variables: ***
;;; mode:Emacs-lisp ***
;;; fill-column: 79 ***
;;; comment-column: 0 ***
;;; End: ***
