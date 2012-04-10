;; undefine some prelude keys
(define-key prelude-mode-map "\C-cr" nil)
(define-key prelude-mode-map "\C-co" nil)

;; give me some navigation sugar
(global-set-key [(meta up)] 'beginning-of-buffer)
(global-set-key [(meta down)] 'end-of-buffer)
(global-set-key [(control shift left)] 'previous-buffer)
(global-set-key [(control shift right)] 'next-buffer)

;; use regex searches by default.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "\C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; window switching via windmove
(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1)))
(global-set-key (kbd "C-x C-o") (lambda ()
                                  (interactive)
                                  (other-window 2)))

;; Start a regular shell if you prefer that.
(global-set-key (kbd "C-x M-m") 'shell)

;; Fetch the contents at a URL, display it raw.
(global-set-key (kbd "C-x C-h") 'view-url)

;; MOVE WINDOWS
;; with ALT + ARROW KEY
;; http://emacsblog.org/2008/05/01/quick-tip-easier-window-switching-in-emacs/
(windmove-default-keybindings 'meta)

;; auto-complete-mode
(global-set-key (kbd "M-q") 'auto-complete-mode)

;; sr-speedbar
(global-set-key (kbd "<f2>") 'sr-speedbar-toggle)

;; dired
(global-set-key (kbd "<f3>") 'dired)

;; comment line
(global-set-key (kbd "M-7") 'comment-or-uncomment-current-line-or-region)
(define-key ruby-mode-map (kbd "#") 'ruby-interpolate)

;; OCCUR
(global-set-key (kbd "C-c C-o") 'occur)
;; redo+
(global-set-key (kbd "C-?") 'redo)

;; deft
(global-set-key [f8] 'deft)

(provide 'personal-bindings)
