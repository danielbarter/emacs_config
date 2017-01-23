;; Don't use hard tabs
(setq-default indent-tabs-mode nil)

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))


;; Highlights matching parens
(show-paren-mode 1)

;;load evil mode on startup
(evil-mode)

;; rainbow parens everywhere
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; enable interactive haskell mode
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
