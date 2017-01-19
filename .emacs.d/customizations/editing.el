;; Don't use hard tabs
(setq-default indent-tabs-mode nil)

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))

;;load evil mode on startup
(evil-mode)
