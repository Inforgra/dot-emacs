;;; dot-emacs-org.el -- For web developments            -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'ox-markdown)
  (package-vc-install "https://github.com/Inforgra/ox-markdown.git"))

(when (string= "10b-server" (system-name))
  (setq ox-markdown-posts-path "~/Projects/inforgra-posts/"))
(when (string= "10B-NOTE" (system-name))
  (setq ox-markdown-posts-path "~/dev/Projects/inforgra-posts/"))
(when (string= "10B" (system-name))
  (setq ox-markdown-posts-path "~/dev/Projects/inforgra-posts/"))

(use-package real-auto-save
  :ensure t)

(use-package org
  :ensure t
  :bind
  ("C-c a" . org-agenda)
  ("C-c c" . org-capture)
  ("C-c l" . org-store-links)
  :init
  ;; export 할 때 markdown 모드를 추가한다.
  (require 'ox-markdown nil t)
  :hook
  (org-mode . real-auto-save-mode)
  (org-mode . visual-line-mode)
  :custom
  (org-export-allow-bind-keywords t)
  (org-agenda-files '("~/.org/inbox.org" "~/.org/gtd.org"))
  (org-todo-keywords `((sequence "TODO(t)" "|" "DONE(d)" "CANCEL(c)")))
  (org-capture-templates '(("i" "Inbox" entry (file "~/.org/inbox.org") "* TODO %?\n/Added:/ %U\n"  :empty-lines 1 :prepend 1)))
  (org-refile-targets (quote (("~/.org/gtd.org" :maxlevel . 1)))))


(provide 'dot-emacs-org)
;;; dot-emacs-org.el ends here
