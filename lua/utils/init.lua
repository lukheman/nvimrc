local command = vim.api.nvim_command

local M = {}

M.filetypes = function(filetype, opts)
  local cmd = { "autocmd FileType "..filetype.." setlocal" }
  for opt,value in pairs(opts) do
    if value == true then
      table.insert(cmd, opt)
    else
      table.insert(cmd, opt.."="..value)
    end
  end
  command(table.concat(cmd, " "))
end

M.highlight = function(group, opts)
  local cmd = { group }
  if opts.fg then table.insert(cmd, "guifg="..opts.fg) end
  if opts.bg then table.insert(cmd, "guibg="..opts.bg) end
  if opts.gui then table.insert(cmd, "gui="..opts.gui) end

  command("hi "..table.concat(cmd, " "))
end

return M
