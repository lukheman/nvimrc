local map = require("utils").map

-- leader key
-- nnoremap <SPACE> <Nop>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Reload config
map("n", "<leader>so", "<cmd>luafile %<cr>")

-- save changes
map("n", "ss", "<cmd>w!<cr>")

-- buffer navigation
map("n", "<leader>n", "<cmd>BufferNext<cr>")
map("n", "<leader>p", "<cmd>BufferPrevious<cr>")
map("n", "<leader>q", "<cmd>BufferClose<cr>")

-- easy align
map("v", "ga", "<Plug>(EasyAlign)", {} )
map("n", "ga", "<Plug>(EasyAlign)", {} )

-- clear whitespace
map("n", "<leader>w", "<cmd>StripWhitespace<cr>")

-- explorer
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>r", "<cmd>NvimTreeRefresh<cr>")

-- glow
map("n", "gl", ":Glow<cr>")
