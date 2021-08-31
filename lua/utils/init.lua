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
  -- default value
  local fg  = "NONE"
  local bg  = "NONE"
  local gui = "NONE"

  if opts.fg ~= nil then
    fg = opts.fg
  end

  if opts.bg ~= nil then
    bg = opts.bg
  end

  if opts.gui ~= nil then
    gui = opts.gui
  end

  command("hi "..group.." guifg="..fg.." guibg="..bg.." gui="..gui)
end

return M
