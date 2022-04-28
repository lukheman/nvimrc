local map = require "utils".map

-- keymaps
map("n", "<leader>t", "<cmd>Translate<cr>")
map("v", "<leader>t", "<cmd>Translate<cr>")

-- configuration
vim.g.translator_target_lang = "id"
vim.g.translator_source_lang = "auto"
