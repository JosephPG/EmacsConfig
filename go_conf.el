;; instala yay -S golangci-lint-bin por separado para configurar el lintern

(use-package go-mode
  :straight t
  ;; Traduce: (add-hook 'go-mode-hook #'lsp-deferred)
  :hook (go-mode . lsp-deferred)
  :config
  ;; Traduce la función personalizada oficial para los hooks antes de guardar
  (defun lsp-go-install-save-hooks ()
    (add-hook 'before-save-hook #'lsp-format-buffer nil t)
    (add-hook 'before-save-hook #'lsp-organize-imports nil t))
  
  ;; Traduce: (add-hook 'go-mode-hook #'lsp-go-install-save-hooks)
  ;; Además, aprovechamos este hook para asegurar que Flycheck use el checker de LSP
  (add-hook 'go-mode-hook
            (lambda ()
              (lsp-go-install-save-hooks)
              (setq flycheck-checker 'lsp)))

  ;; CONFIGURACIÓN LOCAL SEGURA:
  ;; Sobreescribimos el ":none" global SÓLO cuando se configure un buffer de Go
  (add-hook 'lsp-configure-hook
            (lambda ()
              (when (derived-mode-p 'go-mode)
                (setq-local lsp-diagnostics-provider :flycheck)
                (setq-local lsp-go-diagnostic-backend "golangci-lint")))))

(provide 'go_conf)
