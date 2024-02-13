;; remove asking before exit
(setq confirm-kill-emacs nil)
;; email / git confug
(setq user-full-name "Talandar"
      user-mail-address "talandar99@protonmail.com")
;; fonts
(setq doom-font (font-spec :family "FiraCode Nerd Font Mono" :size 18)
      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font Mono" :size 18) ; inherits `doom-font''s :size
      doom-symbol-font (font-spec :family "FiraCode Nerd Font Mono" :size 18)
      doom-big-font (font-spec :family "FiraCode Nerd Font Mono" :size 22))
;; transparency
(set-frame-parameter (selected-frame) 'alpha '(90 . 90)) (add-to-list 'default-frame-alist '(alpha . (90 . 90)))
(add-to-list 'default-frame-alist '(alpha . 90))
;; open in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))
; theme
(setq doom-theme 'doom-tokyo-night)
(custom-set-faces
  '(default ((t (:background "#000000"))))
  )

(setq display-line-numbers-type 'relative)
;(set-face-foreground 'line-number "#FF0000")
;(set-face-background 'line-number "#FF0000")
;; custom keymaps
;; org directory
(setq org-directory "~/.org/")
;; disocrd status
(setq elcord-editor-icon "emacs_icon")
(setq elcord--editor-name "DOOM Emacs")
(elcord-mode)
;; Beacon
(beacon-mode 1)
;; Github Flavored Markdown exporter for Org Mode
(eval-after-load "org"
  '(require 'ox-gfm nil t))
;; treesitter
(use-package! tree-sitter
  :config
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))
