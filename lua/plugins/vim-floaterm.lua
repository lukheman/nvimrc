local M = {}

function M.config()
  -- vim.g.floaterm_shell = ''
  -- interface
  vim.g.floaterm_title = '──  ❮ $1|$2 ❯ '
  vim.g.floaterm_width = 62
  vim.g.floaterm_height = 8
  vim.g.floaterm_position = 'bottom'

  -- navigation
  vim.g.floaterm_keymap_new    = '<leader>ft'
  vim.g.floaterm_keymap_prev   = '<leader>fp'
  vim.g.floaterm_keymap_next   = '<leader>fn'
  vim.g.floaterm_keymap_toggle = 'fh'
  vim.g.floaterm_keymap_kill   = 'fk'
end
-- Set floaterm window's background to black
-- hi Floaterm guibg=black
vim.cmd("hi FloatermBorder guifg=papayawhip guibg=None")

return M
