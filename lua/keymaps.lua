local map = require("utils").map

-- leader key
-- nnoremap <SPACE> <Nop>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save changes
map("n", "ss", "<cmd>w!<cr>")

-- easy align
map("v", "ga", "<Plug>(EasyAlign)", {} )
map("n", "ga", "<Plug>(EasyAlign)", {} )

-- clear whitespace
map("n", "<leader>w", "<cmd>StripWhitespace<cr>")

-- glow
-- map("n", "gl", ":Glow<cr>")
