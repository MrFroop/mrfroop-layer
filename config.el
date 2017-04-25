;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  File:       layers/mrfroop/config.el
;;  Created:    2017-04-19
;;  Language:   Emacs-Lisp
;;  Time-stamp: <2017-04-19 on>
;;  Platform:   Emacs (Spacemacs)
;;  OS:         N/A
;;  Author:     [MrFroop] Fredrik Jambrén <fredrik@jambren.com>
;;
;;  PURPOSE:    Configuration variables for the layer
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;      This file is copied from `mjl' a personal configuration layer by Michael
;;      James Lockhart https://github.com/sinewalker/dotspacemacs
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:
;;

(with-eval-after-load 'org
  (progn
    (setq org-support-shift-select t
          org-journal-dir "c:/Users/n462650/org/journal"
          org-agenda-files `(,org-journal-dir))
    (add-to-list org-agenda-files `(,org-journal-dir))
    (add-hook 'find-file-hook 'auto-insert)
    (setq auto-insert-alist '((".*/[0-9]*\\.org$" . mrfroop/journal-file-insert)))))

;;; Local Variables: ***
;;; mode:Emacs-lisp ***
;;; fill-column: 79 ***
;;; comment-column: 0 ***
;;; End: ***
