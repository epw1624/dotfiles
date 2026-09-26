(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("gnu" . "https://elpa.gnu.org/packages/")))

(setq package-check-signature nil)

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(setq inhibit-startup-message t)
(electric-pair-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)

(use-package catppuccin-theme
	     :config
	     (setq catppuccin-flavor 'macchiato)
	     (load-theme 'catppuccin t))

(use-package doom-modeline
	     :init
	     (doom-modeline-mode 1)
	     :config
	     (setq doom-modeline-height 25
		   doom-modeline-bar-width 3
		   doom-modeline-buffer-file-name-style 'truncate-upto-project
		   doom-modeline-icon t))

(use-package clipetty
	     :ensure t
	     :hook (after-init . global-clipetty-mode))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status)
  :config
  (setq magit-auto-revert-mode-lighter ""))

(use-package consult
  :ensure t
  :bind (("C-c r" . consult-ripgrep)
	 ("C-s" . consult-line)
	 ("C-x b" . consult-buffer)))

(use-package rg
  :ensure t
  :config
  (rg-enable-default-bindings)
  (setq rg-custom-type-aliases nil
	rg-default-alias-fallback "all"))

(use-package wgrep
  :ensure t
  :config
  (setq wgrep-auto-save-buffer t))

(use-package diff-hl
  :ensure t
  :init
  (global-diff-hl-mode 1)
  :hook ((dired-mode . diff-hl-dired-mode)
	 (magit-pre-refresh . diff-hl-magit-pre-refresh)
	 (magit-post-refresh . diff-hl-magit-post-refresh))
  :config
  (unless (display-graphic-p)
    (diff-hl-margin-mode 1)))
