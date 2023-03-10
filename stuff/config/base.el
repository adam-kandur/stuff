(defun stuff-config-base ()
  ;; fix tramp for guix
  (require 'tramp)
  (add-to-list 'tramp-remote-path 'tramp-own-remote-path)

  (setq inhibit-startup-message t)

  (setq backup-by-copying t)
  (setq backup-directory-alist '(("." . "~/.emacs-saves/")))

  (setq delete-old-versions t)
  (setq kept-new-versions 6)
  (setq kept-old-versions 2)
  (setq indent-tabs-mode nil)
  (setq-default tab-width 4)
  (setq dired-listing-switches "-alFh")  

  (menu-bar-mode -1)
  (when (display-graphic-p)
    (scroll-bar-mode -1)
    (tool-bar-mode -1))

  (load-theme 'tsdh-light t))

(provide 'stuff/config/base)
