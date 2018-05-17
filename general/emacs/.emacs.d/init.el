;;; gtags

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives
	     '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'gtags)
;;; color theme
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-subtle-hacker)

;;; erc
(require 'erc)

;;; backup
;;;(defconst emacs-tmp-dir (format "%s/%s%s" temporary-file-directory "emacs" (user-uid)))
;;;(setq backup-directory-alist
;;;      `((".*" . ,emacs-tmp-dir)))
;;;(setq auto-save-file-name-transforms
;;;      `((".*" ,emacs-tmp-dir t)))
;;;(setq auto-save-list-file-prefix
;;;      emacs-tmp-dir)
(setq auto-save-default nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(make-backup-files nil)
 '(package-selected-packages
   (quote
    (exec-path-from-shell flycheck js2-mode json-mode web-mode)))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-debug-info t)
 '(smtpmail-debug-verb t)
 '(smtpmail-smtp-server "smtp.zoho.com")
 '(smtpmail-smtp-service 465)
 '(smtpmail-stream-type (quote ssl)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;
(add-to-list 'auto-mode-alist '(".*\\Makefile.*\\'" . makefile-mode))
(setq c-default-style
      '((c-mode . "linux") (other . "gnu")))

;;;
(setq column-number-mode t)
(require 'column-marker)
(add-hook 'c-mode-hook (lambda () (interactive) (column-marker-1 80)))

;;; markdown mode
(autoload 'markdown-mode "markdown-mode"
	  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
	  "Major mode for editing Github Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;;; load other configurations
(add-to-list 'load-path "~/.emacs.d/react")
(require 'react)

;;; email
(setq smtpmail-default-smtp-server "smtp.zoho.com") 
(require 'smtpmail)
(setq send-mail-function 'smtpmail-send-it
      smtpmail-stream-type 'ssl
      smtpmail-smtp-service 465)
(setq user-full-name "Jian Zhang")
(setq user-mail-address "kernel@ubicomp.com.au")
