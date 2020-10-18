;; Python LSP Server

;; Make sure you add this in your python virtual environment
;; https://github.com/palantir/python-language-server
;; pip install python-language-server[all]
;; pip install pyls-mypy

(defun install-pyls ()
  "This will install the palantir python language server into the virtual environment"
  (compile "pip install python-language-server[all] pyls-mypy pyls-isort pyls-black"))

;; (use-package lsp-mode
;;   :ensure t
;;   :pin melpa
;;   :config

;;   ;; Make sure we have lsp-imenu everywhere we have LSP
;;   (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)

;;   ;; get lsp-python-enable defined
;;   ;; NB: use either projectile-project-root or ffip-get-project-root-directory
;;   ;;     or any other function that can be used to find the root directory of a project
;;   (lsp-register-client
;;    (make-lsp-client :new-connection (lsp-stdio-connection "pyls")
;;                     :major-modes '(python-mode)
;;                     :server-id 'pyls))

;;   ;; lsp extras
;;   (use-package lsp-ui
;;     :ensure t
;;     :config
;;     (setq lsp-ui-sideline-ignore-duplicate t)
;;     (add-hook 'lsp-mode-hook 'lsp-ui-mode))

;;   (use-package company-lsp
;;     :config
;;     (push 'company-lsp company-backends)))
