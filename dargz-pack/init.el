;; Note: i haven't taken a lot of efforts to make this a real live-pack

;;(setq custom-pack-load-path )
(dolist
    (path (directory-files custom-pack-dir t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'load-path path)))

(setq custom-pack-lib-dir (concat custom-pack-dir "lib"))
(setq custom-pack-config-dir (concat custom-pack-dir "config"))

;; Functions (load all files in custom-pack-dir)
;; major work in progress, feel so dirty not doing this in a list
;; unsure as to what ordered deps might arise.
(dolist (file (directory-files  custom-pack-lib-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

(dolist (file (directory-files  custom-pack-config-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))


