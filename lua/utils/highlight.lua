function highlight(args)
  for group,opt in pairs(args) do
    vim.api.nvim_command("highlight "..group.." guifg="..opt.guifg.." guibg="..opt.guibg)
  end
end

