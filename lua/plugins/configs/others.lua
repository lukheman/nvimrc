local M = {}

M.impatient = function()
  require('impatient')
end

M.trouble = function()
  require('trouble').setup {
    height = 8
  }
end

return M
