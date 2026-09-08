# Custom Power Emacs Config

[Read this in English / Leer en Inglés](./README.md)

Una configuración de **Emacs modular**, minimalista y optimizada para el desarrollo de software moderno, centrada en la eficiencia mediante el uso intensivo del teclado.

![Editor Preview](images/sc1.png)

## Características Principales

- **Arquitectura Modular:** Configuración segmentada en archivos independientes dentro de la carpeta `own/` para un mantenimiento sencillo.
- **Gestión de Paquetes con `straight.el`:** Instalaciones reproducibles y deterministas.
- **IDE Ready:** Soporte completo de **LSP** y **Tree-sitter** para un análisis de código inteligente y resaltado de sintaxis superior.
- **Flujo de Trabajo Keyboard-Driven:** Uso de teclas líder (`M-m`, `M-n`, `M-b`) para evitar combinaciones complejas.
- **Estética Minimalista:** Basada en el tema `Atom One Dark`, fuente `Iosevka` y sin barras de herramientas ruidosas.

## Showcase

![Workflow Preview](images/sc2.png)
*Navegación con Treemacs, dashboard personalizado y línea de modo minimalista.*

## Lenguajes Soportados


| Lenguaje | Herramientas Integradas |
| :--- | :--- |
| **Python** | Pyright (LSP), Pytest, Ruff (Formatting), Pyvenv |
| **JS/TS/TSX** | Typescript-ts-mode, Prettier, resolución automática de `node_modules/.bin` |
| **Go** | go-mode, LSP (gopls), golangci-lint vía Flycheck, format/organize-imports al guardar |
| **Lua** | Lua-mode (ideal para configs de AwesomeWM) |
| **Config** | YAML-mode, Magit (Git client) |

> **Nota:** El soporte de Go requiere tener `golangci-lint` instalado por separado en el sistema (por ejemplo `yay -S golangci-lint-bin` en distros basadas en Arch).

## Herramientas Extra

- **Terminal Integrada (`vterm`):** Terminal nativa y rápida por proyecto, lanzada desde la raíz del proyecto actual vía Projectile.
- **Cliente REST (`verb`):** Escribe y ejecuta peticiones HTTP directamente desde archivos Org-mode, con resultados renderizados en línea.

## Atajos de Teclado (Keybindings)

Esta configuración utiliza prefijos para agrupar funcionalidades:

- `M-m` (Prefijo Principal): Búsqueda de archivos, buffers y comandos globales.
- `M-n` (Lenguajes): Acciones específicas de programación y testing (Pytest).
- `M-b` (Comunes): Control de bloques de código (folding) y edición.
- `M-0` hasta `M-9`: Navegación rápida entre ventanas y el explorador de archivos.

### Terminal y Cliente REST

- `M-m t`: Abre una terminal `vterm` en la raíz del proyecto actual.
- `M-m y`: Abre una nueva terminal `vterm` en la raíz del proyecto (fuerza una instancia nueva).
- `M-m v d`: Abre el menú de comandos de Verb para la petición bajo el cursor.
- `M-m v e`: Ejecuta la petición HTTP bajo el cursor.
