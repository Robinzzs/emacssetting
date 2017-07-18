;; .emacs.d/init.el

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")


;;emacs hacking
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

;;;sconstruct  python-mode
(put 'upcase-region 'disabled nil)
(setq auto-mode-alist
      (cons '("SConstruct" . python-mode) auto-mode-alist))
(set-default 'compile-command "scons")
;;c mode for madagascar
(add-hook 'c-mode-common-hook
   '(lambda () (c-set-style "linux")
        (c-set-offset 'case-label 4)
        (setq c-basic-offset 4)))


