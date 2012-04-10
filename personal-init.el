;; add the first level subfolders of personal automatically
(prelude-add-subfolders-to-load-path prelude-personal-dir)

;; load modules
(defvar prelude-personal-modules-dir (concat prelude-personal-dir "modules/"))
(prelude-add-subfolders-to-load-path prelude-personal-modules-dir)

;; load vendor
(defvar prelude-personal-vendor-dir (concat prelude-personal-dir "vendor/"))
(prelude-add-subfolders-to-load-path prelude-personal-vendor-dir)

;; load themes
(defvar prelude-personal-themes-dir (concat prelude-personal-dir "themes/"))
(prelude-add-subfolders-to-load-path prelude-personal-themes-dir)


(require 'personal-packages)
(require 'personal-ui)
(require 'personal-core)
(require 'personal-editor)
(require 'personal-bindings)
(require 'personal-ruby)

;; start edit server only when in daemon mode and the edit-server lib
;; is found.
(if (and (daemonp) (locate-library "edit-server"))
    (progn
      (require 'edit-server)
      (edit-server-start)))

;; activate desktop save mode and load a saved desktop if it exists
(if (not (daemonp)) (desktop-save-mode 1))
