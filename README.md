
---

## 🚀 Features

- **Modern Lua configuration** for speed and flexibility
- **Plugin management** (e.g., lazy.nvim)
- **LSP, autocompletion, and snippets** for a powerful coding experience
- **File explorer, fuzzy finder, and buffer management**
- **Statusline, themes, and UI enhancements**
- **Git integration and terminal toggling**
- **Productivity tools** like Wakatime, comment toggling, and more

---

## 🛠️ Installation

### 1. Prerequisites

- [Neovim](https://neovim.io/) **v0.8.0+** (latest recommended)
- [git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (for some LSPs and plugins)
- [ripgrep](https://github.com/BurntSushi/ripgrep) and [fd](https://github.com/sharkdp/fd) (for Telescope)
- [Python 3](https://www.python.org/) (for some plugins)

### 2. Backup Existing Config

```sh
mv ~/.config/nvim ~/.config/nvim.backup
```

### 3. Clone This Config

```sh
git clone https://github.com/drunkleen/neovim-config.git ~/.config/nvim
```

### 4. Start Neovim

Open Neovim and plugins will be installed automatically.

```sh
nvim
```

---

## ⌨️ Keymaps

### General

| Keybinding         | Mode    | Action                                 |
|--------------------|---------|----------------------------------------|
| `<C-z>`            | Normal  | Quit Neovim                            |
| `<C-s>`            | Normal  | Save file                              |
| `<leader>sn`       | Normal  | Save file without formatting           |
| `<C-q>`            | Normal  | Quit file                              |
| `<C-d>` / `<C-u>`  | Normal  | Scroll down/up and center cursor       |
| `n` / `N`          | Normal  | Find next/previous and center          |
| `<C-h/j/k/l>`      | Normal  | Move between windows                   |
| `<C-h/j/k/l>`      | Terminal| Move between windows                   |
| `<leader>x`        | Normal  | Close current buffer                   |
| `<C-Up/Down/Left/Right>` | Normal | Resize splits                    |
| `<leader>v`        | Normal  | Split window vertically                |
| `<leader>h`        | Normal  | Split window horizontally              |
| `<leader>se`       | Normal  | Make windows equal width               |
| `p`                | Visual  | Paste from last yanked text            |

### Plugin-Specific

| Keybinding         | Mode    | Plugin         | Action                                 |
|--------------------|---------|---------------|----------------------------------------|
| `<leader>ff`       | Normal  | Telescope     | Find files                             |
| `<leader>fg`       | Normal  | Telescope     | Live grep                              |
| `<leader>fb`       | Normal  | Telescope     | List buffers                           |
| `<leader>fh`       | Normal  | Telescope     | Help tags                              |
| `<C-n>`            | Normal  | Neo-tree      | Toggle file explorer                   |
| `<Tab>` / `<S-Tab>`| Normal  | Bufferline    | Next/previous buffer                   |
| `<leader>bd`       | Normal  | Bufferline    | Delete buffer                          |
| `<leader>b`        | Normal  | Bufferline    | New buffer                             |
| `<leader>/`        | Normal  | Comment.nvim  | Toggle comment for current line        |
| `<leader>gg`       | Normal  | Lazygit       | Toggle Lazygit                         |
| `<leader>tt`       | Normal  | Themery       | Open theme selector                    |
| `<leader>?`        | Normal  | WhichKey      | Show buffer local keymaps              |

#### LSP (Language Server Protocol)

| Keybinding         | Mode    | Action                                 |
|--------------------|---------|----------------------------------------|
| `grn`              | Normal  | Rename symbol                          |
| `gra`              | Normal/Visual | Code action                      |
| `grr`              | Normal  | Find references                        |
| `gri`              | Normal  | Go to implementation                   |
| `grd`              | Normal  | Go to definition                       |
| `grD`              | Normal  | Go to declaration                      |
| `gO`               | Normal  | Document symbols                       |
| `gW`               | Normal  | Workspace symbols                      |
| `grt`              | Normal  | Go to type definition                  |
| `<leader>th`       | Normal  | Toggle inlay hints (if supported)      |

---

## ⚙️ Notable Options

- **Line numbers:** Absolute (`number`)
- **Clipboard:** System-wide (`unnamedplus`)
- **Indentation:** 4 spaces, expand tabs
- **Search:** Smart case, highlight, incremental
- **Mouse:** Enabled
- **Statusline:** Always visible, unified
- **Tabline:** Always visible
- **Alpha dashboard:** Shown on startup if no file is opened

---

## 🧩 Plugins Overview

- **UI & Navigation:** Alpha, Bufferline, Lualine, Neo-tree, Themery, Themes
- **Coding:** LSP, Autocompletion, Treesitter, Signature, None-ls
- **Productivity:** Telescope, Toggleterm, Comment.nvim, WhichKey, Wakatime, Lazygit

---

## 🖼️ Screenshots

<img src="https://raw.githubusercontent.com/drunkleen/neovim-config/main/.github/ss1.png" width="49%"><img src="https://raw.githubusercontent.com/drunkleen/neovim-config/main/.github/ss2.png" width="49%">

---

## 🙏 Credits

- Inspired by the Neovim community and many open-source configs.
- See individual plugin repos for more details.

---

## 📄 License

Personal use. Feel free to fork and adapt!

---

**Star or fork this config at [github.com/drunkleen/neovim-config](https://github.com/drunkleen/neovim-config)**

---

_This README was generated with the help of AI and references to [drunkleen/neovim-config](https://github.com/drunkleen/neovim-config)_