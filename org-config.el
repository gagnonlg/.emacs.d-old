(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-agenda-files '("~/org/todo.org"))
(setq org-default-notes-file "~/org/notes.org")
(setq org-todo-keywords '((sequence "TODO(t)"
				    "STARTED(s)"
				    "WAITING(b@)"
				    "|"
				    "DONE(d!)"
				    "SOMEDAY(o)"
				    "CANCELLED(c)")))
(setq org-todo-keyword-faces
      '(("STARTED" . (:foreground "blue" :weight bold))))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/todo.org" "Tasks")
             "* TODO %?\n%U\n%i")
        ("n" "Note" entry (file+datetree "~/org/notes.org")
	 "* %?\n%i")
	("a" "Article" entry (file+headline "~/org/lectures.org" "À lire")
	 "* %?\n%U%i"
	)))

(setq org-agenda-skip-scheduled-if-done t)

(add-hook 'org-agenda-mode-hook
	  (lambda () (hl-line-mode)))

(defun kanban-agenda (key category)
  `(,(concat "k" key) ,category
    ((todo "SOMEDAY")
     (todo "TODO")
     (todo "STARTED|WAITING")
     (todo "DONE"))
    ((org-agenda-category-filter-preset '(,(concat "+" category))))))

(setq org-agenda-custom-commands
      `(("k" . "kanban")
	,(kanban-agenda "d" "Deep SUSY")
	,(kanban-agenda "i" "IFT6266")
	,(kanban-agenda "c" "CTIDE PUB Note")))
