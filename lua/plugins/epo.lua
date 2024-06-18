require("epo").setup()

vim.keymap.set("i", "<TAB>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-n>"
  elseif vim.snippet.jumpable(1) then
    return "<cmd>lua vim.snippet.jump(1)<cr>"
  else
    return "<TAB>"
  end
end, { expr = true })

vim.keymap.set("i", "<S-TAB>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-p>"
  elseif vim.snippet.jumpable(-1) then
    return "<cmd>lua vim.snippet.jump(-1)<CR>"
  else
    return "<S-TAB>"
  end
end, { expr = true })

vim.keymap.set("i", "<C-e>", function()
  if vim.fn.pumvisible() == 1 then
    require("epo").disable_trigger()
  end
  return "<C-e>"
end, { expr = true })
