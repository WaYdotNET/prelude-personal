(defvar prelude-personal-packages
  '(csv-mode less-css-mode smex windmove textile-mode find-file-in-project full-ack )
  "A list of packages to ensure are installed at launch.")

(defun personal-packages-installed-p ()
  (loop for p in prelude-personal-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (personal-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its personal package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-personal-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'personal-packages)
