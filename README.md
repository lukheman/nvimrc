# 🚀 Neovim Configuration

Personal Neovim configuration dengan fokus pada produktivitas development web (PHP/Laravel, JavaScript, Python).

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)

---

## 📁 Struktur

```
nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── options.lua          # Vim options
│   ├── mappings.lua         # Global keybindings
│   ├── autocommands.lua     # Autocommands
│   ├── lsp/
│   │   ├── server.lua       # LSP server configurations
│   │   └── diagnostic.lua   # Diagnostic settings
│   └── plugins/             # Plugin configurations (41 plugins)
├── ftplugin/                # Filetype-specific settings
├── queries/                 # Treesitter queries
├── KEYBINDINGS.md           # Keybindings cheatsheet
└── lazy-lock.json           # Plugin lockfile
```

---

## ⚡ Features

- 🎨 **Modern UI** - Noice.nvim untuk cmdline & notifications
- 🧠 **LSP Support** - PHP, Python, Lua, HTML, CSS, TailwindCSS, Emmet
- ✨ **Autocompletion** - blink.cmp dengan LuaSnip snippets
- 🔍 **Fuzzy Finding** - Telescope dengan fd & ripgrep
- 🌳 **Treesitter** - Syntax highlighting & code analysis
- 🤖 **AI Assistance** - CodeCompanion dengan Copilot
- 📦 **Package Manager** - lazy.nvim dengan lazy loading
- 💾 **Persistent Undo** - Undo history tersimpan

---

## 🔌 Plugin Penting

### Core

| Plugin | Deskripsi |
|--------|-----------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager dengan lazy loading |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & parsing |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |

### LSP & Completion

| Plugin | Deskripsi |
|--------|-----------|
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion engine |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) | LSP UI enhancement |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatting |

### UI & Navigation

| Plugin | Deskripsi |
|--------|-----------|
| [noice.nvim](https://github.com/folke/noice.nvim) | Modern UI untuk cmdline & messages |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File explorer |
| [flash.nvim](https://github.com/folke/flash.nvim) | Motion plugin |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding popup |

### Git

| Plugin | Deskripsi |
|--------|-----------|
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git signs & hunk operations |
| [neogit](https://github.com/NeogitOrg/neogit) | Git interface |

### AI & Productivity

| Plugin | Deskripsi |
|--------|-----------|
| [codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim) | AI coding assistant |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | GitHub Copilot |
| [auto-save.nvim](https://github.com/okuuva/auto-save.nvim) | Auto save |

### Framework Specific

| Plugin | Deskripsi |
|--------|-----------|
| [laravel.nvim](https://github.com/adalessa/laravel.nvim) | Laravel development |
| [flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim) | Flutter development |

### Editing

| Plugin | Deskripsi |
|--------|-----------|
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Surround operations |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Smart commenting |
| [mini.pairs](https://github.com/echasnovski/mini.pairs) | Auto pairs |
| [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) | Modern folding |

### Visual

| Plugin | Deskripsi |
|--------|-----------|
| [kanagawa-paper.nvim](https://github.com/sho-87/kanagawa-paper.nvim) | Colorscheme |
| [everblush.nvim](https://github.com/Everblush/nvim) | Colorscheme |
| [hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim) | Indent guides |
| [nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua) | Color preview |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODOs |

---

## 🖥️ LSP Servers

LSP servers yang dikonfigurasi:

| Server | Bahasa |
|--------|--------|
| `lua-language-server` | Lua |
| `phpactor` | PHP, Blade |
| `pyright` | Python |
| `emmet_language_server` | HTML, PHP, Blade, Vue |
| `html` | HTML, EJS, Blade, Vue |
| `cssls` | CSS |
| `tailwindcss` | TailwindCSS |
| `laravel-ls` | Laravel |

---

## 📦 Requirements

- **Neovim** >= 0.10.0
- **Git**
- **Node.js** >= 18.x (untuk Copilot)
- **fd** (untuk Telescope)
- **ripgrep** (untuk live grep)
- **Nerd Font** (untuk icons)

### LSP Servers (install manual atau via Mason):

```bash
# Lua
brew install lua-language-server

# PHP
composer global require phpactor/phpactor

# Python
pip install pyright

# Web
npm install -g emmet-language-server vscode-langservers-extracted @tailwindcss/language-server
```

---

## 🚀 Installation

```bash
# Backup config lama (jika ada)
mv ~/.config/nvim ~/.config/nvim.bak

# Clone repository
git clone https://github.com/username/nvim ~/.config/nvim

# Buka Neovim (plugins akan terinstall otomatis)
nvim
```

---

## ⌨️ Keybindings

Lihat [KEYBINDINGS.md](./KEYBINDINGS.md) untuk daftar lengkap keybindings.

### Quick Reference

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `gd` | Go to definition |
| `K` | Hover docs |
| `<leader>ca` | Code action |
| `gs` | Stage git hunk |
| `-` | Open file explorer |

---

## 🎨 Themes

Colorscheme yang tersedia:
- **kanagawa-paper** (aktif)
- **everblush**
- **onedark** (disabled)

Untuk mengganti theme, edit `lua/plugins/lazy.lua`.

---

## 📝 Customization

### Menambah Plugin Baru

Buat file di `lua/plugins/nama-plugin.lua`:

```lua
return {
  "author/plugin-name",
  event = "VeryLazy",  -- lazy loading
  config = function()
    require("plugin-name").setup({
      -- options
    })
  end,
}
```

Lalu tambahkan di `lua/plugins/lazy.lua`:

```lua
require("plugins.nama-plugin"),
```

### Menambah LSP Server

Edit `lua/lsp/server.lua`:

```lua
vim.lsp.config["server-name"] = {
  cmd = { "command" },
  filetypes = { "filetype" },
}

vim.lsp.enable({
  -- ...existing servers
  "server-name",
})
```

---

## 📄 License

MIT License

---

*Made with ❤️ and Neovim*
