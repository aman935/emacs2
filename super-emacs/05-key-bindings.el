(defvar super-emacs--my-keyboard-bindings 
  '(("C-}" . mc/mark-next-like-this)
    ("C-{" . mc/mark-previous-like-this)
    ("C-|" . mc/mark-all-like-this)
    ("C->" . ace-jump-mode)
    ("C-<" . ace-jump-mode-pop-mark)
    ("M-/" . undo-tree-visualize)
    ("C-\," . neotree-toggle)
    ("C-\"" . theme-looper-enable-next-theme)
    ("C-M-'" . myterminal-controls-open-controls)
    ("C-c M-x" . execute-extended-command)
    ("M-x" . helm-M-x)
    ("C-x b" . helm-mini)
    ("C-x C-b" . helm-buffers-list)
    ("C-x C-f" . helm-find-files)
    ("C-x C-r" . helm-recentf)
    ("M-y" . helm-show-kill-ring)
    ("C-;" . ace-window)
    ("C-S-<up>" . buf-move-up)
    ("C-S-<down>" . buf-move-down)
    ("C-S-<left>" . buf-move-left)
    ("C-S-<right>" . buf-move-right)
    ("<f5>" . super-emacs-reload-current-file)))

(defun super-emacs-apply-keyboard-bindings (pair)
  "Apply keyboard-bindings for supplied list of key-pair values"
  (global-set-key (kbd (car pair))
                  (cdr pair)))

(mapc 'super-emacs-apply-keyboard-bindings
      super-emacs--my-keyboard-bindings)
(global-set-key (kbd "C-z") 'ace-window)
(global-set-key (kbd "<f4>") 'kill-some-buffers)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(define-key global-map (kbd "C-c ;") 'iedit-mode)
(define-key global-map (kbd "C-c m") 'mc/mark-next-like-this-word)
(define-key global-map (kbd "C-c n") 'mc/skip-to-next-like-this)
(define-key global-map (kbd "C-c r") 'set-rectangular-region-anchor)


(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(mapc 'super-emacs-apply-keyboard-bindings
      super-emacs--my-keyboard-bindings)
(add-to-list 'load-path
	     "~/path-to-yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
