;;auto-company
(global-company-mode t)
;;load monokai-theme/darkokai-theme
;;(load-theme 'monokai t)
(load-theme 'darkokai t)
;;load hungry delete
(require 'hungry-delete)
(global-hungry-delete-mode)
;;config for swiper/counsel 
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
;;config smartparens
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
;; Find Executable Path on OS X
(use-package exec-path-from-shell
  :ensure t
  :config
  (progn
    (when (memq window-system '(mac ns))
      (exec-path-from-shell-initialize))
    )
  )
;;config popwin
(require 'popwin)
(popwin-mode t)
;;config of anaconda-mode/python
(add-hook 'python-mode-hook 'anaconda-mode)
;;flycheck
;;version C-c ! V setup C-c ! v
;;(global-flycheck-mode t)
(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'c-mode-common-hook 'flycheck-mode)
;;(add-hook 'prog-mode-hook #'flycheck-mode) ;self-modify
;;yasnippet
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)
;;which-key
(which-key-mode 1)
(provide 'init-packages)
