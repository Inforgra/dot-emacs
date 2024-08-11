;;; dot-emacs-org.el -- For web developments            -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package org
  :ensure t
  :bind
  ("C-c a" . org-agenda)
  ("C-c c" . org-capture)
  ("C-c l" . org-store-links)
  :custom
  (org-agenda-files
   '("~/.org/todo.org"))
  :config
  (require 'ox-md))

(provide 'dot-emacs-org)
;;; dot-emacs-org.el ends here
