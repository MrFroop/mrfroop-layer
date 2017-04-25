;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  File:       layers/mrfroop/keybindings.el
;;  Created:    <2017-04-19 on>
;;  Language:   Emacs-Lisp
;;  Time-stamp: <2017-04-19 on>
;;  Platform:   Emacs (Spacemacs)
;;  OS:         N/A
;;  Author:     [MrFroop] Fredrik Jambrén <fredrik@jambren.com>
;;
;;  PURPOSE:    Keybindings for my personal layer "mrfroop"
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(when (display-graphic-p)

  (spacemacs/set-leader-keys
    "odd" 'mrfroop/insert-time-stamp
    "odj" 'mrfroop/goto-or-create-todays-jounal)
)

;;; Local Variables: ***
;;; mode:Emacs-lisp ***
;;; fill-column: 79 ***
;;; comment-column: 0 ***
;;; End: ***
