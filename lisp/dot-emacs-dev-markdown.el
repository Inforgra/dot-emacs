;;; dot-emacs-dev-markdown.el -- Markdown 편집환경
;;; Commentary:
;;; Code:

(require 'company)
(require 'display-line-numbers)
(require 'flycheck)
(require 'paren)
(require 'simple)
(require 'visual-fill-column)
(require 'whitespace-cleanup-mode)

(use-package markdown-mode
  :ensure t
  :hook
  (markdown-mode . auto-save-mode)
  (markdown-mode . display-line-numbers-mode)
  (markdown-mode . visual-fill-column-mode))

(provide 'dot-emacs-dev-markdown)
;;; dot-emacs-dev-markdown.el ends here
