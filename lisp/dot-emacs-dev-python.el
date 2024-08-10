;;; dot-emacs-dev-python.el -- Python 개발환경
;;; Commentary:
;;; Code:

(require 'company)
(require 'display-line-numbers)
(require 'flycheck)
(require 'whitespace-cleanup-mode)
(require 'paren)

(use-package python-mode
  :ensure t
  :hook
  (python-mode . company-mode)
  (python-mode . display-line-numbers-mode)
  (python-mode . flycheck-mode)
  (python-mode . show-paren-mode)
  (python-mode . whitespace-cleanup-mode))

(use-package elpy
  :ensure t)

(provide 'dot-emacs-dev-python)
;;; dot-emacs-dev-python.el ends here
