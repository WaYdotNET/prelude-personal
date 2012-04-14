;; Rsense
(setq rsense-home "~/dotfiles/rsense-last")
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)

;; Rsense + Autocomplete
(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))

;; http://blog.tuxicity.se/elisp/emacs/ruby/2010/11/10/ruby-interpolation.html
(defun ruby-interpolate ()
  "In a double quoted string, interpolate."
  (interactive)
  (insert "#")
  (let ((properties (text-properties-at (point))))
    (when (and
           (memq 'font-lock-string-face properties)
           (save-excursion
             (ruby-forward-string "\"" (line-end-position) t)))
      (insert "{}")
      (backward-char 1))))

;; (ruby-block-mode t)
;; (setq ruby-block-highlight-toggle 'overlay)

;; slim-mode settings
(require 'slim-mode)
(require 'less-css-mode)

(provide 'personal-ruby)
