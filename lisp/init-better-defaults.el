;;disable audio bell
(setq ring-bell-function 'ignore)
;;
(global-auto-revert-mode t)

;;define your abbrev
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;;signature
					    ("bbb" "zzs")
					    ;;emacs regex
					    
					    ))
;;disable backup file
(setq make-backup-files nil)
;;disable autosave
(setq auto-save-default nil)
;;enable recentf-mode
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;; turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)
;; highlight brackets
(setq show-paren-style 'parenthesis)
;;delete selection mode
(delete-selection-mode t)



(provide 'init-better-defaults)
