;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;;list of packages
(defvar packages
  '(
    evil
    rainbow-delimiters
    markdown-mode
    haskell-mode
    racket-mode))

;;if package is not downloaded, then grab it
(dolist (p packages)
  (when (not (package-installed-p p))
    (package-install p)))

