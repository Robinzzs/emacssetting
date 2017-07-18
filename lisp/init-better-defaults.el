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
;;Indent-region or buffer
(defun indent-buffer ()
  "Indent the currently visited buffer"
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer"
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))


(provide 'init-better-defaults)
