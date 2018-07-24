;; Goのパスを通す
(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/"))

;; 必要なパッケージのロード
(require 'go-mode)

;; 諸々の有効化、設定
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook (lambda()
           (add-hook 'before-save-hook' 'gofmt-before-save)
           (local-set-key (kbd "M-.") 'godef-jump)
           (setq indent-tabs-mode nil)    ; タブを利用
           (setq c-basic-offset 4)        ; tabサイズを4にする
           (setq tab-width 4)))

;; for auto-complete golang
(setq load-path
      (append '(
		"~/go/src/github.com/nsf/gocode/emacs"
		) load-path))
;;(load "go-autocomplete.el")
(require 'go-autocomplete)
(require 'auto-complete-config)
