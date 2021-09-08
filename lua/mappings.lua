local map = require("utils").map

-- leader key
-- nnoremap <SPACE> <Nop>
vim.cmd('let mapleader      = " "')
vim.cmd('let maplocalleader = " "')

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

-- floaterm
map("n", "<leader>ft", "<cmd>FloatermNew<cr>")
map("n", "<leader>fn", "<cmd>FloatermNext<cr>")
map("n", "<leader>fp", "<cmd>FloatermPrev<cr>")
map("n", "fh", "<cmd>FloatermToggle<cr>")
map("n", "fk", "<cmd>FloatermKill<cr>")

-- fuzzy finder / telescope
map("n", "<c-f>", "<cmd>lua require('telescope.builtin').find_files()<cr>")
map("n", "<c-p>", "<cmd>lua require('telescope.builtin').buffers()<cr>")
map("n", "<c-g>", "<cmd>lua require('telescope.builtin').git_branches()<cr>")
map("n", "<c-h>", "<cmd>Telescope command_history<cr>")
map("n", "<leader>c", "<cmd>Telescope commands<cr>")

-- nvim_tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>r", "<cmd>NvimTreeRefresh<cr>")

-- gitsings
map("n", "b", "<cmd>Gitsigns blame_line<cr>")

-- tpope/vim-fugitive
map("n", "<leader>gs", "<cmd>Git status<cr>")
map("n", "<leader>ga", "<cmd>Git add %<cr>")
map("n", "<leader>gc", "<cmd>Git commit<cr>")
map("n", "<leader>gr", "<cmd>Git restore --staged %<cr>")
