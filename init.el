;; use Ctrl-h as backspace

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(define-key global-map "\C-h" 'delete-backward-char)

;; use cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; auto-complete
(ac-config-default)

;; config per package
(setq load-path
      (append '(
		"~/.emacs.d/conf"
		) load-path))

(load "golang.el")

