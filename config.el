(setq doom-font (font-spec :family "FiraCode Nerd Font Mono" :size 16)
      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font Mono" :size 16) ; inherits `doom-font''s :size
      doom-symbol-font (font-spec :family "FiraCode Nerd Font Mono" :size 18)
      doom-big-font (font-spec :family "FiraCode Nerd Font Mono" :size 22))
;; turn off bold
(setq doom-themes-enable-bold nil)

;; transparency
(add-to-list 'default-frame-alist '(alpha-background . 90))
;; open in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; rember to change cyan to dark-cyan in tokyonight theme if you value youe eyes c:
;;.config/emacs/.local/straight/build-29.2/doom-themes
(setq doom-theme 'doom-tokyo-night)
;; line numbers
(setq display-line-numbers-type 'relative)

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

(define-key evil-normal-state-map (kbd "C-d") (lambda () (interactive)
                                                (call-interactively 'evil-scroll-down) (recenter)))
(define-key evil-normal-state-map (kbd "C-u") (lambda () (interactive)
                                                (call-interactively 'evil-scroll-up) (recenter)))

;; remove asking before exit
(setq confirm-kill-emacs nil)
;; email / git config
(setq user-full-name "Talandar"
      user-mail-address "talandar99@protonmail.com")
;; org directory
(setq org-directory "~/.org/")
;; substition works as intended
(setq evil-ex-substitute-case' sensitive)
;; treat _ as a word
(add-hook 'after-change-major-mode-hook
          (lambda ()
            (modify-syntax-entry ?_ "w")))
;; Beacon
(beacon-mode 1)
;; org bulltes
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(use-package! tree-sitter
   :hook (prog-mode . turn-on-tree-sitter-mode)
   :hook (tree-sitter-after-on . tree-sitter-hl-mode)
   :config
   (require 'tree-sitter-langs)
   ;; This makes every node a link to a section of code
   (setq tree-sitter-debug-jump-buttons t
         ;; and this highlights the entire sub tree in your code
         tree-sitter-debug-highlight-jump-region t))

(setq elcord-editor-icon "emacs_icon")
(setq elcord--editor-name "DOOM Emacs")
(setq elcord- "DOOM Emacs")
(elcord-mode)

(apheleia-global-mode +1)
;; fennel mode
(add-to-list 'auto-mode-alist '("\\.fnl\\'" . fennel-mode))
;; csv mode
(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
;; tab add 4 space
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
;;disable line wraping
(setq visual-line-mode -1)
(setq toggle-truncate-lines 1)
;; fixing markdown links
(after! markdown-mode
  (setq markdown-fontify-whole-heading-line nil
        markdown-enable-wiki-links nil))
