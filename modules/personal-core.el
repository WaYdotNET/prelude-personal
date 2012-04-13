;; restore-arrow-key
(prelude-restore-arrow-keys)

;; use fuzzy style matching for commands aswell
(require 'smex)
(smex-initialize)

;; Auto-complete
(require 'auto-complete-config)
(ac-config-default)
;;fix flyspell shortcut
(global-set-key (kbd "<C-tab>") 'flyspell-auto-correct-word)
;;fix auto-complete
(ac-flyspell-workaround)


;; define keybindings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(setq coffee-command "/usr/local/bin/coffee")

;; delete trailing whitespace
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

(provide 'personal-core)
