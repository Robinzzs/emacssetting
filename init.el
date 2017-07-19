;; .emacs.d/init.el
(package-initialize)
;;cask and pallet
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(add-to-list 'load-path "~/.emacs.d/lisp/")
;;emacs hacking function
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

;;;;sconstruct  python-mode
(put 'upcase-region 'disabled nil)     ;;???
;;enable python-mode on SConstruct files
(setq auto-mode-alist
      (cons '("SConstruct" . python-mode) auto-mode-alist))
;;put scons as the default compile command.
(set-default 'compile-command "scons")
;;make sure that the identation in C files follows the previously adopted convention
(add-hook 'c-mode-common-hook
	  '(lambda () (c-set-style "linux")
	     (c-set-offset 'case-label 4)
	     (setq c-basic-offset 4)))
