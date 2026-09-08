(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))


;; (defun add-npm-bin-to-exec-path ()
;;   "Verify if npm is allow and add .bin to exec-path."
;;   (if (executable-find "npm")
;;       (let ((npm-root (shell-command-to-string "npm root")))
;;         (setq npm-root (string-trim npm-root))
;;         (if (and npm-root
;;                  (file-directory-p (concat npm-root "/.bin")))
;;             (progn
;;               (add-to-list 'exec-path (concat npm-root "/.bin"))
;;               (message "Added path to exec-path: %s" (concat npm-root "/.bin")))
;;           (message "node_modules/.bin not found: %s" npm-root)))
;;     (message "npm not installed")))

(defun add-npm-bin-to-exec-path ()
  "Busca de forma nativa la carpeta node_modules/.bin hacia arriba y la añade al exec-path."
  (let* ((current-dir (expand-file-name default-directory))
         ;; locate-dominating-file camina hacia arriba buscando la carpeta node_modules
         (node-root (locate-dominating-file current-dir "node_modules"))
         (bin-dir (when node-root (concat node-root "node_modules/.bin"))))
    
    (if (and bin-dir (file-directory-p bin-dir))
        (progn
          ;; Usamos add-to-list de forma local o global para no duplicar
          (add-to-list 'exec-path bin-dir)
          ;; También lo añadimos a la variable de entorno PATH para procesos externos
          (setenv "PATH" (concat bin-dir ":" (getenv "PATH")))
          (message "[LSP-JS] Añadido al exec-path: %s" bin-dir))
      (message "No se encontró node_modules/.bin en este directorio"))))



(add-hook 'js-mode-hook #'add-npm-bin-to-exec-path)
(add-hook 'typescript-ts-mode-hook #'add-npm-bin-to-exec-path)


(provide 'js_conf)
