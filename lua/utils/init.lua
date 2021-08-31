local command = vim.api.nvim_command

local M = {}

M.filetypes = function(filetype, opts)
  local cmd = "autocmd FileType "..filetype.." setlocal"
  for opt,value in pairs(opts) do
    if value == true then
      cmd = cmd.." "..opt
    else
      cmd = cmd.." "..opt.."="..value
    end
  end
  command(cmd)
end

M.highlight = function(group, opts)
  local parts = { group }
  if opts.fg then table.insert(parts, "guifg="..opts.fg) end
  if opts.bg then table.insert(parts, "guibg="..opts.bg) end
  if opts.gui then table.insert(parts, "gui="..opts.gui) end

  command("hi "..table.concat(parts, " "))
end

return M
