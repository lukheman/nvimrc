# ⌨️ Neovim Keybindings Cheatsheet

> Leader key: `<Space>`

---

## 📁 File & Buffer

| Keybinding | Action | Source |
|------------|--------|--------|
| `<leader>w` | Save file | mappings |
| `<leader>bd` | Delete buffer | mappings |
| `<leader>bn` | Next buffer | mappings |
| `<leader>bp` | Previous buffer | mappings |
| `-` | Open parent directory (Oil) | oil.nvim |

---

## 🔍 Telescope (Find)

| Keybinding | Action |
|------------|--------|
| `<leader>ff` | Find files |
| `<leader>fb` | Find buffers |
| `<leader>fs` | Find LSP symbols |
| `<leader>fg` | Live grep (search in files) |
| `<leader>fr` | Recent files |
| `<leader>fh` | Help tags |

---

## 🧠 LSP & Code

| Keybinding | Action | Source |
|------------|--------|--------|
| `gd` | Go to definition | lspsaga |
| `gr` | LSP finder (references) | lspsaga |
| `K` | Hover documentation | lspsaga |
| `<leader>ca` | Code action | lspsaga |
| `<leader>rn` | Rename symbol | lspsaga |
| `<leader>o` | Code outline | lspsaga |
| `<leader>e` | Line diagnostics | lspsaga |
| `<leader>D` | Buffer diagnostics | lspsaga |



## 🩺 Diagnostics

| Keybinding | Action | Source |
|------------|--------|--------|
| `[d` | Previous diagnostic | diagnostic |
| `]d` | Next diagnostic | diagnostic |
| `<leader>q` | Open diagnostic list | diagnostic |

---

## 🔀 Git (Gitsigns)

| Keybinding | Action |
|------------|--------|
| `gs` | Stage hunk |
| `gu` | Undo stage hunk |
| `gh` | Preview hunk |
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<leader>gb` | Toggle line blame |

---

## 🪟 Window Navigation

| Keybinding | Action |
|------------|--------|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to bottom window |
| `<C-k>` | Move to top window |
| `<C-l>` | Move to right window |

---

## ✏️ Editing

| Keybinding | Action | Mode |
|------------|--------|------|
| `>` | Indent line | Normal |
| `<` | Outdent line | Normal |
| `>` | Indent selection (keeps selection) | Visual |
| `<` | Outdent selection (keeps selection) | Visual |
| `jk` / `kj` | Escape insert mode | Insert |
| `<Esc>` | Clear search highlight | Normal |

---

## 🚀 Flash (Motion)

| Keybinding | Action | Mode |
|------------|--------|------|
| `s` | Flash jump | n, x, o |
| `S` | Flash treesitter | n, x, o |

---

## 💬 Noice (Notifications)

| Keybinding | Action |
|------------|--------|
| `<leader>nl` | Last message |
| `<leader>nh` | Message history |
| `<leader>na` | All messages |
| `<leader>nd` | Dismiss all notifications |
| `<C-f>` | Scroll forward (in docs) |
| `<C-b>` | Scroll backward (in docs) |

---

## 🤖 AI (CodeCompanion)

| Keybinding | Action | Mode |
|------------|--------|------|
| `<leader>cm` | Generate commit (Indonesian) | n, v |

---

## 📊 Which-Key

| Keybinding | Action |
|------------|--------|
| `<leader>?` | Show buffer local keymaps |

---

## 🔧 Misc

| Keybinding | Action | Source |
|------------|--------|--------|
| `<leader>ac` | Auto commit | mappings |
| `<leader>tp` | Triforce profile | triforce |

---

## 🚫 Disabled Keys

| Key | Reason |
|-----|--------|
| Arrow keys | Use `hjkl` instead |
| `<C-z>` | Prevent accidental suspend |

---

## 📝 Notes

- Use `:Telescope keymaps` to search all keybindings
- Use `<leader>?` to see which-key popup
- All keybindings have descriptions visible in which-key

---

*Last updated: January 2026*
