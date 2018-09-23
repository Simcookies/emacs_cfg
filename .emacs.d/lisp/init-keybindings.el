;; Key setting
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "C-h") nil)
(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-x ?") 'help-command)
(global-set-key (kbd "C-c t") 'multi-term)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c C-w") 'kill-whole-word)
(global-set-key (kbd "C-q") 'mark-next-like-this)

(keyboard-translate ?¥ ?\\)
(keyboard-translate ?\C-h ?\C-?)

(provide 'init-keybindings)
