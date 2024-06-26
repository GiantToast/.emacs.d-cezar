;; Helm
(use-package helm
  :demand
  :straight t
  ;; :preface (require 'helm-config)
  :commands (helm-M-x helm-find-files helm-semantic-or-imenu)
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x b" . helm-mini)
         ("M-y" . helm-show-kill-ring)
         ("M-i" . helm-semantic-or-imenu))
  :init
  (setq helm-mode-fuzzy-match t
        helm-completion-in-region-fuzzy-match t
        helm-split-window-inside-p t
        helm-display-line-numbers-mode t
        helm-describe-function-function #'helpful-callable
        helm-describe-variable-function #'helpful-variable)
  :config (helm-mode 1))

(use-package helm-rg
  :straight t
  :requires helm
  :after helm
  :init (setq helm-rg-default-extra-args (list "--hidden")))

(use-package helm-ag
  :straight t
  :requires helm
  :after helm
  :config
  (custom-set-variables
   '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case --vimgrep")
   ;; '(helm-ag-command-option "--all-text")
   '(helm-ag-insert-at-point 'symbol)
   '(helm-ag-ignore-buffer-patterns '("\\.txt\\'" "\\.mkd\\'"))))

(use-package dash
  :demand
  :straight t)

(use-package helm-swoop
  :straight t
  :requires helm
  :after helm
  :bind ("C-c C-s" . helm-swoop)
  :init (setq helm-swoop-use-line-number-face t
              helm-swoop-move-to-line-cycle t
              helm-swoop-use-fuzzy-match t))
