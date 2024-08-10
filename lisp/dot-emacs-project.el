;;; dot-emacs-project.el -- 프로젝트 관리환경 설정
;;; Commentary:
;;; Code:

(require 'use-package)

(use-package projectile
  :ensure t
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (projectile-mode))

(use-package helm
  :ensure t
  :bind
  ("C-x C-f" . helm-find-files)
  ("C-x b"   . helm-mini)
  ("M-x"     . helm-M-x)
  :custom
  (helm-split-window-inside-p t)
  (helm-move-to-line-cycle-in-source t)
  (helm-scroll-amount 10))

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

(provide 'dot-emacs-project)
;;; dot-emacs-project.el ends here
