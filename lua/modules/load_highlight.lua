function highlight(args)
  for group,opt in pairs(args) do
    vim.api.nvim_command("highlight "..group.." guifg="..opt.guifg.." guibg="..opt.guibg)
  end
end

highlight({
  TelescopePromptBorder = { guifg='#98971a', guibg='#d79922' },
  TelescopeResultsBorder = { guifg='#98971a', guibg='#d79922' },
})
