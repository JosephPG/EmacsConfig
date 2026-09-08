(use-package verb
  :straight t
  :ensure t
  :after (org)
  :config
  ;; Define tus atajos cómodos al estilo de tu config
  ;; Abre el menú de acciones de Verb cuando estés sobre una petición
  (global-set-key (kbd "M-m v d") 'verb-command-map)
  ;; Atajo súper rápido para ejecutar la petición bajo el cursor
  (global-set-key (kbd "M-m v e") 'verb-send-request-on-point))


(provide 'utils_conf)
