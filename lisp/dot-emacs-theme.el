;;; dot-emacs-theme.el -- Emacs 테마 설정
;;; Commentary:
;;; Code:

;;; fixed-font
;;; https://github.com/Inforgra/fixed-font
;;
;; 고정폭 한글 글꼴과 영문 글꼴을 같이 사용할 수 있도록 한다.
;;
;; | 한글 | 테스트 |
;; | ABCD | TEST   |
;;

(unless (package-installed-p 'fixed-font)
  (package-vc-install "https://github.com/Inforgra/fixed-font.git"))

(use-package fixed-font
  :ensure t
  :if window-system
  :bind
  ("C-0" . fixed-font-default)
  ("C-+" . fixed-font-increase)
  ("C--" . fixed-font-decrease)
  :config
  (when (string= "10b-server" (system-name))
    (setq fixed-font-hangul-font "NanumGothicCoding")
    (setq fixed-font-ascii-font  "Fira Mono")
    (setq fixed-font-default-height 160))
  (when (string= "10B-NOTE" (system-name))
    (setq fixed-font-hangul-font "NanumGothicCoding")
    (setq fixed-font-ascii-font  "Source Code Pro")
    (setq fixed-font-default-height 100))
  (when (string= "10B" (system-name))
    (setq fixed-font-hangul-font "NanumGothicCoding")
    (setq fixed-font-ascii-font  "Source Code Pro")
    (setq fixed-font-default-height 100))
  :init
  (fixed-font-default))


;;;
;;; desktop
;;;

(use-package desktop
  :ensure nil
  :config
  (add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
  (add-to-list 'desktop-modes-not-to-save 'dirs-mode)
  (add-to-list 'desktop-modes-not-to-save 'dired-mode)
  (desktop-save-mode t))

;;;
;;; doom-theme
;;;

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t)
  (setq doom-themes-enable-italic t)
  (doom-themes-visual-bell-config)
  (load-theme 'doom-one t))

;;;
;;; spaceline
;;;

(use-package spaceline
  :ensure t
  :config
  (spaceline-spacemacs-theme)
  (spaceline-helm-mode))

(provide 'dot-emacs-theme)
;;; dot-emacs-theme.el ends here
