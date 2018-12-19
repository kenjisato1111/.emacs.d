;;; package --- Summary
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;; Commentary:
;;; Code:
(package-initialize)

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

;; set color theme
(load-theme 'tsdh-dark)

;; resize window
    (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
    (global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
    (global-set-key (kbd "S-C-<down>") 'shrink-window)
    (global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq abbrev-file-name "~/.abbrev_defs")
(setq save-abbrevs t)
(quietly-read-abbrev-file)

(provide 'init)
;;; init.el ends here
