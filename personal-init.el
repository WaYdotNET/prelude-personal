(defvar prelude-personal-modules-dir (concat prelude-personal-dir "modules/")
  "This directory houses all of the personal stuff.")

(add-to-list 'load-path prelude-personal-modules-dir)

(require 'personal-packages)
(require 'personal-ui)
(require 'personal-core)
(require 'personal-editor)
(require 'personal-bindings)

(require 'personal-cc)
(require 'personal-css)
(require 'personal-erc)
(require 'personal-org)
(require 'personal-ruby)

;; start edit server only when in daemon mode and the edit-server lib
;; is found.
(if (and (daemonp) (locate-library "edit-server"))
    (progn
      (require 'edit-server)
      (edit-server-start)))

;; activate desktop save mode and load a saved desktop if it exists
(if (not (daemonp)) (desktop-save-mode 1))
