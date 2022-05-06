
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq initial-buffer-choice "~/org/projects.org")

(defun my-init-hook ()
  (split-window-right)
  (windmove-right)
  (org-toggle-sticky-agenda)
  (let ((org-agenda-window-setup 'current-window))
    (org-agenda nil "a"))
  (split-window-below)
  (windmove-down)
  (let ((org-agenda-window-setup 'current-window))
     (org-agenda nil "t"))
  (windmove-left))

(add-hook 'window-setup-hook #'my-init-hook)

;; (org-agenda-list)
;; (lambda () (when (get-buffer "*scratch*") (kill-buffer "*scratch*"))))
