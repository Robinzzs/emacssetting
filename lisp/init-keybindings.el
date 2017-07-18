;;swiper ivy counsel
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
;;hacking
(global-set-key (kbd "C-=") 'open-my-init-file)
;;set key
(global-set-key "\C-x\ \C-r" 'recentf-open-files)   ;eval-buffer
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;;github
(global-set-key (kbd "C-c p f") 'counsel-git)

;;indent region
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
(provide 'init-keybindings)
