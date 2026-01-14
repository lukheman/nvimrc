local map = vim.keymap.set

-- disable keys
map("n", "<left>", "<nop>", { desc = "Disabled" })
map("n", "<right>", "<nop>", { desc = "Disabled" })
map("n", "<up>", "<nop>", { desc = "Disabled" })
map("n", "<down>", "<nop>", { desc = "Disabled" })
map("n", "<c-z>", "<nop>", { desc = "Disabled" })

-- buffer
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })
map("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bp<cr>", { desc = "Previous buffer" })

-- window
map("n", "<c-h>", "<c-w>h", { desc = "Move to left window" })
map("n", "<c-j>", "<c-w>j", { desc = "Move to bottom window" })
map("n", "<c-k>", "<c-w>k", { desc = "Move to top window" })
map("n", "<c-l>", "<c-w>l", { desc = "Move to right window" })

-- git
map("n", "<leader>ac", "<cmd>!acommit<cr>", { desc = "Auto commit" })

-- indentation
map("n", ">", ">>", { desc = "Indent line" })
map("n", "<", "<<", { desc = "Outdent line" })
map("v", ">", ">gv", { desc = "Indent selection" })
map("v", "<", "<gv", { desc = "Outdent selection" })

-- better escape
map("i", "jk", "<esc>", { desc = "Escape insert mode" })
map("i", "kj", "<esc>", { desc = "Escape insert mode" })

-- save
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })

-- clear search highlight
map("n", "<esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
