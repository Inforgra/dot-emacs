;;; dot-emacs-base.el -- Emacs 기본환경설정
;;; Commentary:
;;; Code:

(setq inhibit-startup-message nil)
(setq delete-by-moving-to-trash t)
(setq custom-file (concat (file-name-as-directory user-emacs-directory) "custom.el"))
(defalias 'yes-or-no-p 'y-or-n-p)

;;; 편집 버퍼 환경을 설정한다.

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)
(setq visible-bell t)

(global-auto-revert-mode t)
(global-font-lock-mode t)
(global-hl-line-mode t)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 2)
(setq-default fill-column 80)


;;; 한국어 환경을 설정한다. 인코딩은 ko_KR.utf-8 로 지정한다.

(set-language-environment "Korean")
(set-locale-environment "ko_KR.utf-8")
(prefer-coding-system 'utf-8)


;;; 윈도우 환경에서 사용하는 경우 메뉴바, 툴바, 스크롤바는 제거한다.

(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

;;; 패키지 저장소를 지정하고, 초기화한다.

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;; use-package 를 설치한다.

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(provide 'dot-emacs-base)
;;; dot-emacs-base.el ends here
