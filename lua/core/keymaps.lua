local map = vim.keymap.set

-- leader key
-- nnoremap <SPACE> <Nop>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save changes
map("n", "<leader-w>", "<cmd>w!<cr>")
map("n", "<leader>wq", "<cmd>wq<cr>")

-- exit
map("n", "q", "<cmd>q!<cr>")
