(setq doom-font (font-spec :family "FiraCode Nerd Font Mono" :size 16)
      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font Mono" :size 16) ; inherits `doom-font''s :size
      doom-symbol-font (font-spec :family "FiraCode Nerd Font Mono" :size 18)
      doom-big-font (font-spec :family "FiraCode Nerd Font Mono" :size 22))
;; turn off bold
(setq doom-themes-enable-bold nil)

;; transparency
(set-frame-parameter (selected-frame) 'alpha '(90 . 90)) (add-to-list 'default-frame-alist '(alpha . (90 . 90)))
(add-to-list 'default-frame-alist '(alpha . 90))
;; open in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; rember to change cyan to dark-cyan in tokyonight theme if you value youe eyes c:
(setq doom-theme 'doom-tokyo-night)
;; line numbers
(setq display-line-numbers-type 'relative)
;; set background to be black
(custom-set-faces '(default ((t (:background "#0a1124")))))

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
(map! :n "SPC-t-c" 'display-fill-column-indicator)

(define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
(define-key evil-visual-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)
(define-key evil-visual-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)

(define-key evil-normal-state-map (kbd "C-M-=") 'enlarge-window-horizontally)
(define-key evil-normal-state-map (kbd "C-M--") 'shrink-window-horizontally)

;; remove asking before exit
(setq confirm-kill-emacs nil)
;; email / git config
(setq user-full-name "Talandar"
      user-mail-address "talandar99@protonmail.com")
;; org directory
(setq org-directory "~/.org/")
;; Github Flavored Markdown exporter for Org Mode
(eval-after-load "org"
  '(require 'ox-gfm nil t))
;; substition works as intended
(setq evil-ex-substitute-case' sensitive)
;; treat _ as a word
(add-hook 'after-change-major-mode-hook
          (lambda ()
            (modify-syntax-entry ?_ "w")))
;; Beacon
(beacon-mode 1)

(use-package! tree-sitter
  :config
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(setq elcord-editor-icon "emacs_icon")
(setq elcord--editor-name "DOOM Emacs")
(setq elcord- "DOOM Emacs")
(elcord-mode)

;; use editorconfig
(setq lsp-enable-indentation nil)
(editorconfig-mode 1)
;; autoformat on save using editor config
(add-hook 'before-save-hook #'editorconfig-format-buffer)
;; fennel mode
(add-to-list 'auto-mode-alist '("\\.fnl\\'" . fennel-mode))
;; disable wraping
(remove-hook 'text-mode-hook #'visual-line-mode)
(+global-word-wrap-mode 0)
(+word-wrap-mode 0)
;; tab add 4 space
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
