require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▍'},
    change       = {hl = 'GitSignsChange', text = '▍'},
    changedelete = {hl = 'GitSignsChange', text = '▍'},
    delete       = {hl = 'GitSignsDelete', text = '▍'},
    topdelete    = {hl = 'GitSignsDelete', text = '▍'},
  },
  update_debounce = 500,
}

-- Colors
vim.cmd("highlight GitSignsAdd    guifg=#569CD6 guibg=NONE gui=bold")
vim.cmd("highlight GitSignsChange guifg=#CCB17A guibg=NONE gui=bold")
vim.cmd("highlight GitSignsDelete guifg=#D16969 guibg=NONE gui=bold")
