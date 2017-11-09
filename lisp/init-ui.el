;; default to better frame titles
;; (setq frame-title-format
;;       (concat  "%b - emacs@" (system-name)))
(setq frame-title-format
      '("Emacs@zzs - ["(buffer-file-name"%f]"
					(dired-directory dired-directory"%b]")))) 
;;cancel welcome page
(setq inhibit-splash-screen t)
;;tool bar
(tool-bar-mode -1)
;;scroll bar
(scroll-bar-mode -1)
;;cursor set
(setq-default cursor-type 'bar)
;;highlight current line
(global-hl-line-mode t)
;;always show line numbers
(global-linum-mode t)
;;open with full screen
;(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;window width and height
(set-frame-width (selected-frame) 80)
(set-frame-height (selected-frame) 50)

(provide 'init-ui)
