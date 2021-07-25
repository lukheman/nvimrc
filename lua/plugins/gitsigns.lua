local M = {}

function M.config()
    -- require("gitsigns").setup({
    --     signs = {
    --         add = { hl = "GitSignAdd", text = "▍" },
    --         change = { hl = "GitSignChange", text = "▍" },
    --         delete = { hl = "GitSignDelete", text = "▍" },
    --         topdelete = { hl = "GitSignDelete", text = "▍" },
    --         changedelete = { hl = "GitSignChange", text = "▍" },
    --     },
    -- })


  require('gitsigns').setup {
    signs = {
      add          = {hl = 'GitSignsAdd'   , text = '▍'},
      change       = {hl = 'GitSignsChange', text = '▍'},
      changedelete = {hl = 'GitSignsChange', text = '▍'},
      delete       = {hl = 'GitSignsDelete', text = '▍'},
      topdelete    = {hl = 'GitSignsDelete', text = '▍'},
    },
  }

end

-- Colors
vim.cmd("highlight GitSignsAdd    guifg=#569CD6 guibg=NONE gui=bold")
vim.cmd("highlight GitSignsChange guifg=#CCB17A guibg=NONE gui=bold")
vim.cmd("highlight GitSignsDelete guifg=#D16969 guibg=NONE gui=bold")

return M
