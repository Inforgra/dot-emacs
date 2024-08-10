;;; dot-emacs-dev-ahk.el -- Ahk                -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'company)
(require 'display-line-numbers)
(require 'flycheck)
(require 'whitespace-cleanup-mode)
(require 'paren)

(use-package ahk-mode
  :ensure t
  :if (eq system-type 'windows-nt)
  :hook
  (ahk-mode . company-mode)
  (ahk-mode . display-line-numbers-mode)
  (ahk-mode . whitespace-cleanup-mode))

(provide 'dot-emacs-dev-ahk)
;;; dot-emacs-dev-ahk.el ends here
