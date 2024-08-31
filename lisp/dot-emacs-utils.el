;;; dot-emacs-utils.el --- Utility
;;; Commentary:
;;; Code:

(defun save-image-from-clipboard ()
  "Windows 클립보드에 복사한 이미지를 파일로 저장한다."
  (interactive)
  (let ((filename (file-truename (read-file-name "Write image file from clipboard: "))))
    (shell-command (concat "powershell -c \"(Get-Clipboard -format image).save('" filename "')\""))))

(defun create-new-post ()
  "POST 템플릿을 생성한다."
  (interactive)
  (let* ((today (format-time-string "%Y-%m-%d"))
         (file-name (read-string "Create post: " (concat today "-")))
         (directory-name (expand-file-name file-name "~/Dropbox/Writings"))
         (post-file-name (expand-file-name (concat file-name ".org") directory-name)))
    (make-directory directory-name)
    (make-empty-file post-file-name)
    (find-file post-file-name)
    (message "Created %s" post-file-name)))

(provide 'dot-emacs-utils)
;;; dot-emacs-utils.el Ends here
