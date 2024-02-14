
;; remove asking before exit
(setq confirm-kill-emacs nil)
;; email / git confug
(setq user-full-name "Talandar"
      user-mail-address "talandar99@protonmail.com")
;; fonts
(setq doom-font (font-spec :family "FiraCode Nerd Font Mono" :size 16)
      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font Mono" :size 16) ; inherits `doom-font''s :size
      doom-symbol-font (font-spec :family "FiraCode Nerd Font Mono" :size 18)
      doom-big-font (font-spec :family "FiraCode Nerd Font Mono" :size 22))
;; transparency
(set-frame-parameter (selected-frame) 'alpha '(90 . 90)) (add-to-list 'default-frame-alist '(alpha . (90 . 90)))
(add-to-list 'default-frame-alist '(alpha . 90))
;; open in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))
; theme
(setq doom-theme 'doom-tokyo-night)
; rember to change cyan to dark-cyan in tokyonight theme if you value youe eyes c:
(setq display-line-numbers-type 'relative)
;set background to be black
(custom-set-faces
  '(default ((t (:background "#000000")))))
; turn off bold
(setq doom-themes-enable-bold nil)
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
(map! :n "M-=" 'harpoon-add-file)
(map! :n "M--" 'harpoon-toggle-file)
(map! :n "M-1" 'harpoon-go-to-1)
(map! :n "M-2" 'harpoon-go-to-2)
(map! :n "M-3" 'harpoon-go-to-3)
(map! :n "M-4" 'harpoon-go-to-4)
(map! :n "M-5" 'harpoon-go-to-5)
(map! :n "M-6" 'harpoon-go-to-6)
(map! :n "M-7" 'harpoon-go-to-7)
(map! :n "M-8" 'harpoon-go-to-8)
(map! :n "M-9" 'harpoon-go-to-9)
