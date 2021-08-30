function filetypes(args)
  for filetype,opts in pairs(args) do
    local cmd = "autocmd FileType "..filetype.." setlocal"
    for opt,value in pairs(opts) do
      if value == true then
        cmd = cmd.." "..opt
      else
        cmd = cmd.." "..opt.."="..value
      end
    end
    vim.api.nvim_command(cmd)
  end
end

function highlight(args)
  for group,opt in pairs(args) do
    vim.api.nvim_command("hi "..group.." guifg="..opt.guifg.." guibg="..opt.guibg)
  end
end
