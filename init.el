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

(add-hook 'python-mode-hook common-programming-hook)
   
(put 'set-goal-column 'disabled nil)

(add-to-list 'default-frame-alist
	     '(font . "inconsolata-12"))

(defun lps ()
  (interactive "")
  (find-file "/ssh:lps:"))

(defun lxplus ()
  (interactive "")
  (find-file "/ssh:lxplus:"))
