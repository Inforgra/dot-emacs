;;; dot-emacs-dev-powershell.el --- powershell   -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package powershell
  :ensure t)

(defun ps-write-iamge-from-clipboard (filename)
  "FILENAME."
  (interactive "sWrite file from clipboard: ")
  (let ((path (file-truename filename)))
    (shell-command (format "powershell -c \"(Get-Clipboard -format image).save(\\\"%s\\\")\"" path))))

(provide 'dot-emacs-dev-powershell)

;;; dot-emacs-dev-powershell.el Ends here
