;;; dot-emacs-dev-haskell.el -- For Haksell Development
;;; Commentary:
;;; Code:

(use-package lsp-haskell
  :ensure t)

(use-package helm-lsp
  :ensure t)

(use-package haskell-mode
  :ensure t
  :bind
  (:map interactive-haskell-mode-map
        ("M-/" . helm-lsp-code-actions)
        ("M-?" . xref-find-references)
        ("M-." . xref-find-definitions))
  :hook
  (haskell-mode . company-mode)
  (haskell-mode . display-line-numbers-mode)
  (haskell-mode . flycheck-mode)
  (haskell-mode . lsp-mode)
  (haskell-mode . lsp-completion-mode)
  (haskell-mode . show-paren-mode)
  (haskell-mode . whitespace-cleanup-mode))

(provide 'dot-emacs-dev-haskell)
;;; dot-emacs-dev-haskell.el ends here.
