;; -*- lexical-binding: t -*-

;; Setup completion style which is responsible for candidate filtering
(setq completion-styles '(orderless))

;; Enable Embark-Completions and Marginalia
(define-key minibuffer-local-completion-map (kbd "TAB")
  #'embark-collect-completions)
(add-hook 'minibuffer-setup-hook #'embark-collect-completions-after-input)
(marginalia-mode)

;; Use completing-read prompter and set binding for Embark context menu
(setq embark-prompter #'embark-completing-read-prompter
      prefix-help-command #'embark-prefix-help-command)
(global-set-key (kbd "M-o") #'embark-act)

;; Keybindings for Consult
(global-set-key (kbd "C-x b") #'consult-buffer)
