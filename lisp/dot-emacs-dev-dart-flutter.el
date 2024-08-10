;;; dot-emacs-dev-dart-flutter.el -- Dart, Flutter 개발환경
;;; Commentary:
;;; Code:

(require 'use-package)
(require 'company)
(require 'display-line-numbers)
(require 'whitespace-cleanup-mode)
(require 'paren)

;;; lsp-mode

(use-package lsp-mode
  :ensure t)

(use-package lsp-treemacs
  :ensure t)

(use-package lsp-ui
  :ensure t)

;;; dart, flutter

(use-package lsp-dart
  :ensure t)

(use-package dart-mode
  :ensure t
  :hook
  (dart-mode . company)
  (dart-mode . display-line-numbers-mode)
  (dart-mode . flycheck-mode)
  (dart-mode . lsp-mode)
  (dart-mode . whitespace-cleanup-mode)
  (dart-mode . show-paren-mode))

(provide 'dot-emacs-dev-dart-flutter)
;;; dot-emacs-dev-dart-flutter.el ends here
