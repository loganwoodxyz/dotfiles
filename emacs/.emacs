(setq visible-bell t)
(load-theme 'tango-dark nil nil)
(set-face-attribute 'default nil :height 120)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; Automatically refresh packages
(package-initialize)
(package-refresh-contents)

















(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-treemacs lsp-ui company evil lsp-mode omnisharp csharp-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(package-install-selected-packages)

 ;; Automatically install packages
 (unless (package-installed-p 'evil)
   (package-install 'evil))

 ;; Enable Evil
 (require 'evil)
 (evil-mode 1)

 ;; Global company-mode
 (require 'company)
 (add-hook 'after-init-hook 'global-company-mode t)

 ;; Omnisharp Hook
 (require 'lsp)
 (add-hook 'csharp-mode-hook #'lsp-deferred)
