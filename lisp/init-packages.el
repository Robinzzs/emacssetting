(require 'cl)
;;make package system more powerful with Melpa
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
;;add whaever package you want here
(defvar zzs/packages '(
		       company
		       monokai-theme
		       darkokai-theme
		       hungry-delete
		       swiper
		       counsel
		       smartparens
		       exec-path-from-shell
		       popwin
		       reveal-in-osx-finder
		       expand-region
		       iedit
		       helm-ag
		       anaconda-mode
		       ) "Default packages")
(setq package-selected-packages zzs/packages)
(defun zzs/packages-installed-p ()
  (loop for pkg in zzs/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))
(unless (zzs/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg zzs/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


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
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
;;config popwinq
(require 'popwin)
(popwin-mode t)
;;config of anaconda-mode/python
(add-hook 'python-mode-hook 'anaconda-mode)
;;config of expand-region


(provide 'init-packages)
