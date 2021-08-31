local keymap = vim.api.nvim_set_keymap

-- leader key
-- nnoremap <SPACE> <Nop>
vim.cmd('let mapleader      = " "')
vim.cmd('let maplocalleader = " "')

local mappings = {
  -- save changes
  { "n", "ss", "<cmd>w!<cr>", {} },

  -- buffer navigation
  { "n", "<leader>n", "<cmd>BufferNext<cr>", {} },
  { "n", "<leader>p", "<cmd>BufferPrevious<cr>", {} },
  { "n", "<leader>q", "<cmd>BufferDelete<cr>", {} },

  -- easy align
  { "v", "ga", "<Plug>(EasyAlign)", {} },
  { "n", "ga", "<Plug>(EasyAlign)", {} },

  -- clear whitespace
  { "n", "<leader>w", "<cmd>StripWhitespace<cr>", { silent = true } },

  -- floaterm
  { "n", "<leader>ft", "<cmd>FloatermNew<cr>", { silent = true, noremap = true }  },
  { "n", "<leader>fn", "<cmd>FloatermNext<cr>", { silent = true, noremap = true }  },
  { "n", "<leader>fp", "<cmd>FloatermPrev<cr>", { silent = true, noremap = true }  },
  { "n", "fh", "<cmd>FloatermToggle<cr>", { silent = true, noremap = true }  },
  { "n", "fk", "<cmd>FloatermKill<cr>", { silent = true, noremap = true }  },

  -- fuzzy finder / telescope
  { "n", "<c-f>", "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true } },
  { "n", "<c-p>", "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true } },
  { "n", "<c-g>", "<cmd>lua require('telescope.builtin').git_branches()<cr>", { noremap = true } },
  -- { "n", ":cs", "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>", { noremap = true } },

  -- nvim_tree
  { "n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { noremap = true } },
  { "n", "<leader>r", "<cmd>NvimTreeRefresh<cr>", { noremap = true } },


}


for _, key in ipairs(mappings) do
  keymap(key[1], key[2], key[3], key[4])
end
