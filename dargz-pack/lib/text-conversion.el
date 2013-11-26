;; (defun unix-epoch-to-iso ()
;;   (interactive)
;;   (re-search-forward "\\([0-9]+\\)")
;;   (goto-char (match-beginning 0))
;;   (replace-match (format-time-string "%Y-%m-%d" (seconds-to-time (/  (string-to-int (match-string 1)) 1000))))
;;   )


(defun unix-epoch-to-iso ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d" (seconds-to-time (/  1384911507344 1000))))
  )
