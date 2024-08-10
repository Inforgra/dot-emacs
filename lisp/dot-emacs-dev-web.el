;;; dot-emacs-dev-web.el -- 웹 개발환경 (js, jsx, ts, tsx, html, json)
;;; Commentary:
;;; Code:

(require 'company)
(require 'display-line-numbers)
(require 'flycheck)
(require 'whitespace-cleanup-mode)
(require 'paren)

(use-package json-mode
  :ensure t
  :custom
  (js-indent-level 2)
  :hook
  (json-mode . display-line-numbers-mode)
  (json-mode . flycheck-mode)
  (json-mode . show-paren-mode)
  (json-mode . whitespace-cleanup-mode))

(use-package tide
  :ensure t
  :pin melpa
  :bind
  (:map tide-mode-map
        ("C-c d" . tide-documentation-at-point)
        ("C-c f" . tide-fix))
  :custom
  (tide-format-options '(:indentSize 2 :tabSize 2)))

(defun my-tide-setup ()
  "편집하는 파일의 확장자가 js, ts, tsx 인 경우 tide 모드를 설정한다."
  (when (member (file-name-extension buffer-file-name) '("jsx" "ts" "tsx"))
    (tide-setup)))

(use-package typescript-mode
  :ensure t
  :mode ("\\.js\\'" "\\.jsx\\'" "\\.ts\\'" "\\.tsx\\'")
  :hook
  (typescript-mode . company-mode)
  (typescript-mode . display-line-numbers-mode)
  (typescript-mode . flycheck-mode)
  (typescript-mode . show-paren-mode)
  (typescript-mode . whitespace-cleanup-mode)
  :custom
  (typescript-indent-level 2))

(use-package web-mode
  :ensure t
  :mode ("\\.jsx\\'" "\\.ts\\'" "\\.tsx\\'" "\\.html\\'")
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2)
  (web-mode-block-padding 2)
  (web-mode-comment-style 2)
  (web-mode-enable-css-colorization t)
  (web-mode-enable-auto-closing t)
  (web-mode-enable-current-element-highlight t)
  (web-mode-enable-auto-closing t)
  :hook
  (web-mode . company-mode)
  (web-mode . display-line-numbers-mode)
  (web-mode . whitespace-cleanup-mode)
  (web-mode . show-paren-mode)
  (web-mode . my-tide-setup))

(provide 'dot-emacs-dev-web)
;;; dot-emacs-dev-web.el ends here
