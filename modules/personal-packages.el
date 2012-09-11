(defvar prelude-personal-packages
  '(csv-mode less-css-mode smex textile-mode find-file-in-project full-ack popup auto-complete deft
             prelude-css prelude-lisp prelude-programming prelude-ruby prelude-scheme prelude-scss prelude-xml sass-mode scss-mode rvm auto-complete powerline molokai-theme pomodoro htmlize
             )
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
