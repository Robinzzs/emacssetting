;;disable audio bell
(setq ring-bell-function 'ignore)
;;enable emacs auto load extra modify files
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
;;enhance the show-paren-mode function
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))
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
;;hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name
					 try-complete-file-name-partially
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))
;;simplify the yes or no question
(fset 'yes-or-no-p 'y-or-n-p)
;;dired mode
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired-x) ;;C-x C-j open dired-mode in current directory
(setq dired-dwim-target t) ;;help in two windows dired
;;M-x reveal-in-osx-finder can open finder at current directory
;;dired-mode C-x d
;; +:to creat a directory
;; C-x C-f:to creat a file
;; g:to refresh dired mode
;; C:copy file
;; D:delete file ;d:delete file need execute
;; R:rename files
;;C-x C-q and use iedit-mode to modify

;;occur mode dwin=do what i mean
(defun occur-dwin()
  "Call 'occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
	    (buffer-substring-no-properties
	     (region-beginning)
	     (region-end))
	  (let ((sym (thing-at-point 'symbol)))
	    (when (stringp sym)
	      (regexp-quote sym))))
	regexp-history)
  (call-interactively 'occur))
;;

(provide 'init-better-defaults)
