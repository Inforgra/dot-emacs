;;; dot-emacs-powershell.el -- PowerShell
;;; Commentary:
;;; Code:


;;; https://emacs-lsp.github.io/lsp-mode/page/lsp-pwsh/
;;; lsp-mode 를 사용하기 위해서는 다음 명령을 사용하여 언어서버를 설치한다.
;;; M-x lsp-install-server RET pwsh-ls

(use-package powershell
  :ensure t
  :hook
  (powershell-mode . display-line-numbers-mode)
  (powershell-mode . whitespace-cleanup-mode)
  (powershell-mode . lsp-mode))

(provide 'dot-emacs-powershell)
;;; dot-emacs-powershell.el ends here.
