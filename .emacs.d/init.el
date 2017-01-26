;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;;needed to use MELPA
(require 'package)
;;add the MELPA URL
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;load package manager
(package-initialize)



;; install packages
(load "install.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")

;; Hard-to-categorize customizations
(load "misc.el")

;;since we are installing elm into a funny place, we need to tell emacs
(load "elmPath.el")
