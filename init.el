(package-initialize)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(setq resize-mini-windows t)
(load-file "~/.emacs.d/org-config.el")

(setq python-shell-interpreter "python2")
(setq python-check-command "pylint2")

(defun common-programming-hook ()
  (linum-mode))

(setq common-programming-hook
      (lambda ()
	(linum-mode)
	(column-number-mode)))

   
(put 'set-goal-column 'disabled nil)

(add-to-list 'default-frame-alist
	     '(font . "inconsolata-12"))

(defun lps ()
  (interactive "")
  (find-file "/ssh:lps:"))

(defun lxplus ()
  (interactive "")
  (find-file "/ssh:lxplus:"))

(load-file "~/.emacs.d/gnugo-big-xpms.el")

(setq comint-input-ignoredups t)

;; https://emacs.stackexchange.com/questions/2957/how-to-customize-syntax-highlight-for-just-a-given-mode/2968
(make-variable-buffer-local 'font-lock-comment-face)
(copy-face 'font-lock-comment-face 'python-comment-face)
(set-face-foreground 'python-comment-face "gray")

(make-variable-buffer-local 'font-lock-string-face)
(copy-face 'font-lock-string-face 'python-string-face)
(set-face-foreground 'python-string-face "dimgray")

(make-variable-buffer-local 'font-lock-keyword-face)
(copy-face 'font-lock-keyword-face 'python-keyword-face)
(set-face-foreground 'python-keyword-face "black")
(set-face-bold 'python-keyword-face t)

(make-variable-buffer-local 'font-lock-builtin-face)
(copy-face 'font-lock-builtin-face 'python-builtin-face)
(set-face-foreground 'python-builtin-face "black")

(make-variable-buffer-local 'font-lock-function-name-face)
(copy-face 'font-lock-function-name-face 'python-function-name-face)
(set-face-foreground 'python-function-name-face "black")
(set-face-underline 'python-function-name-face t)

(make-variable-buffer-local 'font-lock-variable-name-face)
(copy-face 'font-lock-variable-name-face 'python-variable-name-face)
(set-face-foreground 'python-variable-name-face "black")

(make-variable-buffer-local 'font-lock-type-face)
(copy-face 'font-lock-type-face 'python-type-face)
(set-face-foreground 'python-type-face "black")

(make-variable-buffer-local 'font-lock-constant-face)
(copy-face 'font-lock-constant-face 'python-constant-face)
(set-face-foreground 'python-constant-face "black")

(add-hook 'python-mode-hook common-programming-hook)
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq font-lock-comment-face 'python-comment-face)
	    (setq font-lock-string-face 'python-string-face)
	    (setq font-lock-doc-face 'python-string-face)
	    (setq font-lock-keyword-face 'python-keyword-face)
	    (setq font-lock-builtin-face 'python-builtin-face)
	    (setq font-lock-function-name-face 'python-function-name-face)
	    (setq font-lock-constant-face 'python-constant-face)
	    (setq font-lock-type-face 'python-type-face)
	    (setq font-lock-variable-name-face 'python-variable-name-face)))


;; swap C-\ and C-M-\
(global-set-key (kbd "C-\\") 'indent-region)
(global-set-key (kbd "C-M-\\") 'toggle-input-method)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (gnugo))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

