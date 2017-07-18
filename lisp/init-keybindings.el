;;swiper ivy counsel
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "M-s i") 'counsel-imenu) ;switch position by function-menu
;;especially for hacking
(global-set-key (kbd "C-`") 'open-my-init-file)
;;set key
(global-set-key "\C-x\ \C-r" 'recentf-open-files)   ;eval-buffer
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;;github
(global-set-key (kbd "C-c p f") 'counsel-git)
;;indent region/buffer
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
;;hippie-expend a extra-function help company-mode
(global-set-key (kbd "s-/") 'hippie-expand)
;;dired-mode
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
;;occur-dwin
(global-set-key (kbd "M-s o") 'occur-dwin)
;;expand-region
(global-set-key (kbd "C-=") 'er/expand-region)
;;iedit
(global-set-key (kbd "M-s e") 'iedit-mode)
;;company key-fix
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))
;;helm-ag
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root) ;then C-c C-e edit


(provide 'init-keybindings)
