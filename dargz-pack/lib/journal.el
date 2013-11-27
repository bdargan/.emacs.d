(setq journal-file "~/google_drives/Google Drive/core/journal.org")

(defun unix-epoch-to-iso ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d" (seconds-to-time (/  1384911507344 1000))))
  )

(defun start-journal-entry ()
  "Start a new journal entry."
  (interactive)
  (find-file journal-file)
  (goto-char (point-min))
  (org-insert-heading)
  (org-insert-time-stamp (current-time) t)
  (open-line 2)
  (insert " "))

;;; insert a week  (insert (concat "**" (format-time-string "%Y-W%W" (current-time) t)) )

(defun add-journal-entry ()
  "add a new journal entry."
  (interactive)
  (org-insert-heading)
  (org-insert-time-stamp (current-time) t)
  (open-line 2)
  (insert " "))
