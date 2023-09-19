local map = vim.keymap.set

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save changes
map("n", "<leader>w", "<cmd>w!<cr>")
map("n", "<leader>wq", "<cmd>wq<cr>")

-- exit
map("n", "<C-q>", "<cmd>q!<cr>")

map("n", "<leader>p", "<cmd>bp<cr>")
map("n", "<leader>n", "<cmd>bn<cr>")
map("n", "<leader>q", "<cmd>bdelete<cr>")
