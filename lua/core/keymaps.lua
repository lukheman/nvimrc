local map = vim.keymap.set

-- leader key
-- nnoremap <SPACE> <Nop>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save changes
map("n", "<C-w>", "<cmd>w!<cr>")
map("n", "<leader>wq", "<cmd>wq<cr>")

-- exit
map("n", "Q", "<cmd>qa<cr>")
