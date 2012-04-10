;; mode line settings
(require 'linum-off)
(line-number-mode t)                     ; show line number
(column-number-mode t)                   ; show column number
(size-indication-mode t)                 ; show file size (Emacs 22+)
(global-linum-mode t)                    ; shwo line number into left
                                        ; side
(linum-mode t)


;; (delete-selection-mode t)                ; delete the selection with a keypress

;; (unless (= emacs-major-version 24)
;;   (setq x-select-enable-clipboard t       ; copy-paste should work ...
;;         interprogram-paste-function       ; ...with...
;;         'x-cut-buffer-or-selection-value)) ; ...other X clients

;; (setq search-highlight t                 ; highlight when searching...
;;       query-replace-highlight t)         ; ...and replacing
;; (fset 'yes-or-no-p 'y-or-n-p)            ; enable y/n answers to yes/no

;; (global-font-lock-mode t)                ; always do syntax highlighting
;; (setq require-final-newline t)           ; end files with a newline

;; ;; use shift + arrow keys to switch between visible buffers
;; (require 'windmove)
;; (windmove-default-keybindings 'super)


;; use Chromium Browser  as default browser
(setq  browse-url-browser-function 'browse-url-generic
       browse-url-generic-program "/usr/bin/chromium-browser")

(require 'color-theme-molokai)
(color-theme-molokai)
;; (require 'powerline)

;; highlight the current line; set a custom face, so we can
;; recognize from the normal marking (selection)
(global-hl-line-mode t) ; turn it on for all modes by default

;; full-ack.el
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

;; deft
;; http://jblevins.org/projects/deft/
(require 'deft)
(setq deft-extension "textile")
(setq deft-directory "~/Dropbox/notes")
(setq deft-text-mode 'textile-mode)

;; sr-speedbar
(require 'sr-speedbar)
(speedbar-add-supported-extension ".rb")
(speedbar-add-supported-extension ".ru")
(speedbar-add-supported-extension ".yaml")
(speedbar-add-supported-extension ".yml")
(speedbar-add-supported-extension ".css")
(speedbar-add-supported-extension ".sass")
(speedbar-add-supported-extension ".scss")
(speedbar-add-supported-extension ".haml")
(speedbar-add-supported-extension ".feature")
(speedbar-add-supported-extension ".config")
(speedbar-add-supported-extension "Gemfile")
(speedbar-add-supported-extension "Rakefile")
(speedbar-add-supported-extension ".erb")
(speedbar-add-supported-extension ".textile")
(speedbar-add-supported-extension ".markdown")
(speedbar-add-supported-extension ".less")
(speedbar-add-supported-extension ".slim")
(speedbar-add-supported-extension ".tt")
(speedbar-add-supported-extension ".coffee")

;; disable line numbers in the speedbar frame
(add-to-list 'linum-disabled-modes-list '(speedbar-mode))

;; (sr-speedbar-refresh-turn-off)
;; show all files
(setq speedbar-show-unknown-files t)

;; turn off the ugly icons
(setq speedbar-use-images nil)

;; left-side pane
(setq sr-speedbar-right-side nil)

;; don't refresh on buffer changes
(setq sr-speedbar-auto-refresh nil)

;; nicer fonts for speedbar when in GUI
(when (window-system)
  ;; keep monospace buttons, but smaller height
  (set-face-attribute 'speedbar-button-face nil :height 100)

  ;; change to system default UI font for entries
  (dolist (face (list 'speedbar-file-face 'speedbar-directory-face
                      'speedbar-tag-face 'speedbar-selected-face
                      'speedbar-highlight-face))
    (if (eq system-type 'darwin) ;; Lucida Grande on OS X
        (set-face-attribute face nil :family "Lucida Grande" :height 100)
      (set-face-attribute face nil :family "Droid Sans" :height 100))))

;; no left fringe and half-size right fringe. TODO: doesn't work
(add-to-list 'speedbar-frame-parameters '(left-fringe . 0))
(sr-speedbar-refresh-turn-off)
;; (sr-speedbar-auto-refresh)
;; (sr-speedbar-skip-other-window-p)
(global-set-key (kbd "<f2>") 'sr-speedbar-toggle)


(provide 'personal-ui)
