;; based on http://blog.jr0cket.co.uk/2013/08/defining-custom-workflow-with-Emacs-org-mode.html

(setq org-todo-keywords '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED")))

(setq
 org-agenda-files
 (mapcar (lambda (x) (expand-file-name x "~/google_drives/Google Drive/core/"))
           '("journal.org" "wotif.org" "project_z.org")))
