local M = {}

function M.config()
  -- vim.g.floaterm_shell = ''
  -- interface
  vim.g.floaterm_title = '──  ❮ $1|$2 ❯ '
  vim.g.floaterm_width = 62
  vim.g.floaterm_height = 8
  vim.g.floaterm_position = 'bottom'
end
-- Set floaterm window's background to black
-- hi Floaterm guibg=black
vim.cmd("hi FloatermBorder guifg=papayawhip guibg=None")

return M
