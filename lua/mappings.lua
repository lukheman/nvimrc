local keymap = vim.api.nvim_set_keymap

-- leader key
-- nnoremap <SPACE> <Nop>
vim.cmd('let mapleader      = " "')
vim.cmd('let maplocalleader = " "')

local mappings = {
  -- reload nvimrc
  { "n", "<leader>so", ":source $MYVIMRC<cr>", {} },

  -- save changes
  { "n", "ss", ":w!<cr>", {} },

  -- buffer navigation
  { "n", "<leader>n", ":bn<cr>", {} },
  { "n", "<leader>p", ":bp<cr>", {} },
  { "n", "<leader>bd", ":bp<cr>:bd! #<cr>", {} },
  { "n", "<leader>bw", "<c-w><c-o>:bw<cr>", {} },

  -- easy align
  { "v", "ga", "<Plug>(EasyAlign)", {} },
  { "n", "ga", "<Plug>(EasyAlign)", {} },

  -- clear whitespace
  { "n", "<leader>w", ":StripWhitespace<cr>", { silent = true } },

  -- floaterm
  { "n", "<leader>ft", ":FloatermNew<cr>", { silent = true, noremap = true }  },
  { "n", "<leader>fn", ":FloatermNext<cr>", { silent = true, noremap = true }  },
  { "n", "<leader>fp", ":FloatermPrev<cr>", { silent = true, noremap = true }  },
  { "n", "fh", ":FloatermToggle<cr>", { silent = true, noremap = true }  },
  { "n", "fk", ":FloatermKill<cr>", { silent = true, noremap = true }  },

  -- fuzzy finder / telescope
  { "n", "<c-f>", "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true } },
  { "n", "<c-p>", "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true } },
  { "n", "<c-g>", "<cmd>lua require('telescope.builtin').git_branches()<cr>", { noremap = true } },
  -- { "n", ":cs", "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>", { noremap = true } },

  -- nvim_tree
  { "n", "<C-n>", ":NvimTreeToggle<cr>", { noremap = true } },
  { "n", "<leader>r", ":NvimTreeRefresh<cr>", { noremap = true } },


}

-- run python script
vim.cmd("autocmd FileType python map <buffer> rr :w<cr>:exec '!python3' shellescape(@%, 1)<cr>")
-- vim.cmd("autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>")

-- run lua script
vim.cmd("autocmd FileType lua map <buffer> rr :w<cr>:exec '!lua' shellescape(@%, 1)<cr>")

for _, key in ipairs(mappings) do
  keymap(key[1], key[2], key[3], key[4])
end
