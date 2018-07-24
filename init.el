;; use Ctrl-h as backspace
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

