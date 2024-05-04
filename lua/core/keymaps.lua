local map = vim.keymap.set

-- disable keys
map("n", "<Left>", "<Nop>")
map("n", "<Right>", "<Nop>")
map("n", "<Up>", "<Nop>")
map("n", "<Down>", "<Nop>")
map("n", "<C-z>", "<Nop>")

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save changes
map("n", "<leader>w", "<cmd>w!<cr>")
map("n", "<leader>wq", "<cmd>wq<cr>")

-- quit
-- map("n", "<C-q>", "<cmd>q!<cr>")

-- buffer
map("n", "<leader>p", "<cmd>bp<cr>")
map("n", "<leader>n", "<cmd>bn<cr>")
map("n", "<leader>q", "<cmd>bdelete<cr>")

map("i", "jj", "<esc>")
map("n", "Q", "<cmd>q!<cr>")
