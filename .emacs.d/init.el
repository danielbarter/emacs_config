;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;;needed to use MELPA
(require 'package)
;;add the MELPA URL
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;load package manager
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;;list of packages
(defvar packages
  '(
    evil
    rainbow-delimiters))

;;if package is not downloaded, then grab it
(dolist (p packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")

;; Hard-to-categorize customizations
(load "misc.el")
