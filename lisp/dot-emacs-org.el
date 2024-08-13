;;; dot-emacs-org.el -- For web developments            -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'simple) ;; auto-save-mode

(use-package org
  :ensure t
  :bind
  ("C-c a" . org-agenda)
  ("C-c c" . org-capture)
  ("C-c l" . org-store-links)
  :hook
  (org-mode-hook . auto-save-mode)
  :custom
  (org-agenda-files '("~/.org/inbox.org" "~/.org/gtd.org"))
  (org-todo-keywords `((sequence "TODO(t)" "|" "DONE(d)" "CANCEL(c)")))
  (org-capture-templates '(("i" "Inbox" entry (file "~/.org/inbox.org") "* TODO %?\n/Added:/ %U\n"  :empty-lines 1 :prepend 1)))
  (org-refile-targets (quote (("~/.org/gtd.org" :maxlevel . 1)))))

(provide 'dot-emacs-org)
;;; dot-emacs-org.el ends here
