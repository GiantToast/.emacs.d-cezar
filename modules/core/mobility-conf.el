;;; Mobility around emacs buffers

(use-package avy
  :straight t
  :bind (("C-c '" . avy-goto-char-2)
         ("C-;" . avy-goto-char)
         ("M-g g" . avy-goto-line)
         ("M-g M-g" . avy-goto-line)
         ("M-g w" . avy-goto-word-1)
         ("M-g e" . avy-goto-word-0)
         )
  :config
  (setq avy-all-windows nil
        avy-style 'pre
        ))

(use-package ace-window
  :straight t
  :bind (("C-c o" . ace-window)
         )
  )

(use-package pretty-hydra
  :straight t)

(use-package hydra
  :straight t)
