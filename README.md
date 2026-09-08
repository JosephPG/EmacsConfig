# Custom Power Emacs Config

[Read this in Spanish / Leer en Español](./README.es.md)

A modular, minimalist **Emacs** configuration optimized for modern software development, focused on efficiency through intensive keyboard use.

![Editor Preview](images/sc1.png)

## Main Features

- **Modular Architecture:** Segmented configuration in separate files within the `own/` folder for easy maintenance.
- **Package Management with `straight.el`:** Reproducible and deterministic installations.
- **IDE Ready:** Full support for **LSP** and **Tree-sitter** for intelligent code analysis and superior syntax highlighting.
- **Keyboard-Based Workflow:** Use of leading keys (`M-m`, `M-n`, `M-b`) to avoid complex key combinations.
- **Minimalist Aesthetics:** Based on the `Atom One Dark` theme, `Iosevka` font, and no toolbar noise.

## Showcase

![Workflow Preview](images/sc2.png)
*Navigation with Treemacs, custom dashboard, and minimalist line mode.*

## Supported Languages

| Language | Integrated Tools |
| :--- | :--- |
**Python** | Pyright (LSP), Pytest, Ruff (Formatting), Pyvenv |
**JS/TS/TSX** | TypeScript ts-mode, Prettier, automatic `node_modules/.bin` resolution |
**Go** | go-mode, LSP (gopls), golangci-lint via Flycheck, format/organize-imports on save |
**Lua** | Lua-mode (ideal for AwesomeWM configurations) |
**Config** | YAML-mode, Magit (Git client) |

> **Note:** Go support requires `golangci-lint` installed separately on the system (e.g. `yay -S golangci-lint-bin` on Arch-based distros).

## Extra Tools

- **Integrated Terminal (`vterm`):** Fast native terminal per project, launched from the current project root via Projectile.
- **REST Client (`verb`):** Write and run HTTP requests directly from Org-mode files, with results rendered inline.

## Keybindings

This configuration uses prefixes to group functionalities:

- `M-m` (Main Prefix): Searching for files, buffers, and global commands.
- `M-n` (Languages): Specific programming and testing actions (Pytest).
- `M-b` (Common): Code block control (folding) and editing.
- `M-0` through `M-9`: Quick navigation between windows and the file explorer.

### Terminal & REST Client

- `M-m t`: Open a `vterm` terminal at the current project's root.
- `M-m y`: Open a new `vterm` terminal at the project's root (forces a fresh instance).
- `M-m v d`: Open the Verb command menu for the HTTP request under the cursor.
- `M-m v e`: Run the HTTP request under the cursor.
