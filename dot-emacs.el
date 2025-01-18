;;; dot-emacs.el -- My Emacs Configuration
;;; Commentary:
;;; Code:

;;; 사용자 lisp 경로를 추가한다.
(add-to-list
 'load-path
 (concat (file-name-as-directory (expand-file-name user-emacs-directory)) "lisp"))

;;; TODO require 에러 메세지 제거
(require 'dot-emacs-base)
(require 'dot-emacs-utils)
(require 'dot-emacs-theme)
(require 'dot-emacs-project)
(require 'dot-emacs-org)
(require 'dot-emacs-utils)
(require 'dot-emacs-dev)
(require 'dot-emacs-dev-ahk)
(require 'dot-emacs-dev-lisp)
(require 'dot-emacs-dev-dart-flutter)
(require 'dot-emacs-dev-markdown)
(require 'dot-emacs-dev-python)
(require 'dot-emacs-dev-web)

(use-package yaml-mode
  :ensure t
  :hook
  (yaml-mode . display-line-numbers-mode))

;;; dot-emacs.el ends here
