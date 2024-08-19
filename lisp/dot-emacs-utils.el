;;; dot-emacs-utils.el --- Utility
;;; Commentary:
;;; Code:

(defun save-image-from-clipboard ()
  "Windows 클립보드에 복사한 이미지를 파일로 저장한다."
  (interactive)
  (let ((filename (file-truename (read-file-name "Write image file from clipboard: "))))
    (shell-command (concat "powershell -c \"(Get-Clipboard -format image).save('" filename "')\""))))

(provide 'dot-emacs-utils)
;;; dot-emacs-utils.el Ends here
