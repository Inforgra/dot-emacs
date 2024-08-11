;;; dot-emacs-dev.el -- 공통 개발환경 설정
;;; Commentary:
;;; Code:

;;; 자동완성

(use-package company
  :ensure t
  :bind
  (:map company-active-map
  ("C-n" . company-select-next)
  ("C-p" . company-sleect-previous))
  :custom
  (company-idle-delay 0))

;;; 문법오류 검증

(use-package flycheck
  :ensure t)

;;; git 설정

(use-package magit
  :ensure t)

(use-package magit-gitflow
  :ensure t)

;;; 편집환경에서 필요없는 공백을 자동으로 제거
(use-package whitespace-cleanup-mode
  :ensure t)


;;; 편집 버퍼의 폭을 고정

(use-package visual-fill-column
  :ensure t)

;;; 라인을 위, 아래로 이동

(use-package move-text
  :ensure t
  :bind
  ("M-<up>" . move-text-up)
  ("M-<down>" . move-text-down))


;;; 자주사용하는 관용구 등록

(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode t))

(provide 'dot-emacs-dev)
;;; dot-emacs-dev.el ends here
