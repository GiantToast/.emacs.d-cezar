;;; infra-init -- Provides settings for infrastructure related settings
;;; Commentary:

;;; Code:
;; Load Prodigy File
(load "prodigy-conf.el")
;; Load Ansible Things
(load "ansible-conf.el")
;; Load Kubernetes Things
(load "k8s-conf.el")

;; Load Dockerfile Mode
(use-package dockerfile-mode
  :straight t)
;; Load Groovy Mode
(use-package groovy-mode
  :straight t
  :init
  (setq groovy-indent-offset 2))

;; Load Terraform Mode
(use-package terraform-mode
  :straight t
  :pin melpa
  :mode "\\.\\(tf\\|tfvars\\)"
  :hook
  (terraform-mode . yas-minor-mode)
  )

(use-package company-terraform
  :straight t)

(provide 'infra-init)
;;; infra-init ends here
