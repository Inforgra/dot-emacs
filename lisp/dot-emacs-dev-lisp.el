;;; dot-emacs-lisp.el -- Emacs Lisp 개발환경
;;; Commentary:
;;; Code:

(require 'company)
(require 'display-line-numbers)
(require 'flycheck)
(require 'whitespace-cleanup-mode)
(require 'paren)

(use-package elisp-mode
  :ensure nil
  :bind
  (:map emacs-lisp-mode-map
        ("C-c C-b" . eval-buffer))
  :hook
  (emacs-lisp-mode . company-mode)
  (emacs-lisp-mode . display-line-numbers-mode)
  (emacs-lisp-mode . flycheck-mode)
  (emacs-lisp-mode . whitespace-cleanup-mode)
  (emacs-lisp-mode . show-paren-mode))

(provide 'dot-emacs-dev-lisp)
;;; dot-emacs-dev-lisp.el ends here
