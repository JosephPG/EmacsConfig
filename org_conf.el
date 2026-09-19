;; -*- lexical-binding: t; -*-

(defun mi/abrir-archivo-org ()
  "Busca e invoca rápidamente cualquier archivo en la carpeta ~/Proyectos/org/."
  (interactive)
  (let ((default-directory "~/Proyectos/org"))
    (call-interactively 'find-file)))

(global-set-key (kbd "C-c o") 'mi/abrir-archivo-org)

(provide 'org_conf)
