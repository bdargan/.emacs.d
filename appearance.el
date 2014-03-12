(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)


;; Highlight current line
(global-hl-line-mode 1)

;; Set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))


(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))

;; Default theme
(defun use-presentation-theme ()
  (interactive)
  (disable-theme 'default-black)
  (load-theme 'prez)
  (when (boundp 'magnars/presentation-font)
    (set-face-attribute 'default nil :font magnars/presentation-font)))

;; Fonts are set in mac.el, maybe a bug
(defun use-default-theme ()
  (interactive)
  (disable-theme 'prez)
  (load-theme 'default-black)
  (when (boundp 'magnars/default-font)
    (set-face-attribute 'default nil :font magnars/default-font)))

(defun use-theme-solarized ()
  (interactive)
  ;;  (disable-theme ')
  (load-theme 'solarized)
  (when (boundp 'magnars/default-font)
    (set-face-attribute 'default nil :font magnars/default-font)))


(global-set-key (kbd "C-<f9>") 'toggle-presentation-mode)

(require 'color-theme)
;;(load-theme 'solarized)
;; (color-theme-initialize)

;;(use-default-theme)
(color-theme-solarized-dark)

(provide 'appearance)
