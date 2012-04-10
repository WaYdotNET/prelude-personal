;; mode line settings
(require 'linum-off)
(line-number-mode t)                     ; show line number
(column-number-mode t)                   ; show column number
(size-indication-mode t)                 ; show file size (Emacs 22+)
(global-linum-mode t)                    ; shwo line number into left
                                        ; side
(linum-mode t)

;; general settings
(setq-default indent-tabs-mode nil)      ; I hate tabs!

(delete-selection-mode t)                ; delete the selection with a keypress

(unless (= emacs-major-version 24)
  (setq x-select-enable-clipboard t       ; copy-paste should work ...
        interprogram-paste-function       ; ...with...
        'x-cut-buffer-or-selection-value)) ; ...other X clients

(setq search-highlight t                 ; highlight when searching...
      query-replace-highlight t)         ; ...and replacing
(fset 'yes-or-no-p 'y-or-n-p)            ; enable y/n answers to yes/no

(global-font-lock-mode t)                ; always do syntax highlighting
(setq require-final-newline t)           ; end files with a newline

;; use shift + arrow keys to switch between visible buffers
(require 'windmove)
(windmove-default-keybindings 'super)

;; automatic buffer clean-up
(require 'midnight)
;; don't kill my precious manuals while I'm still reading them
(add-to-list 'clean-buffer-list-kill-never-buffer-names "*info*")

;; use Chromium Browser  as default browser
(setq  browse-url-browser-function 'browse-url-generic
       browse-url-generic-program "/usr/bin/chromium-browser")

;; https://github.com/zkim/emacs-dirtree
(require 'dirtree)

(require 'color-theme-molokai)
(color-theme-molokai)

;; highlight the current line; set a custom face, so we can
;; recognize from the normal marking (selection)
(global-hl-line-mode t) ; turn it on for all modes by default

;; emacs nav - a simple file browser for Emacs
(require 'nav)
(setq nav-follow t)

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

;; redmine
;; https://github.com/fukamachi/redmine-el
(require 'redmine)
