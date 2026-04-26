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
**JS/TS/TSX** | TypeScript ts-mode, Prettier, npm-bin integration |
**Lua** | Lua-mode (ideal for AwesomeWM configurations) |
**Config** | YAML-mode, Magit (Git client) |

## Keybindings

This configuration uses prefixes to group functionalities:

- `M-m` (Main Prefix): Searching for files, buffers, and global commands.
- `M-n` (Languages): Specific programming and testing actions (Pytest).
- `M-b` (Common): Code block control (folding) and editing.
- `M-0` through `M-9`: Quick navigation between windows and the file explorer.
