local autocmd = vim.api.nvim_create_autocmd

-- Remove whitespace on save
-- autocmd("BufWritePre", {
--   pattern = "",
--   command = ":%s/\\s\\+$//e"
-- })

-- Don't auto commenting new line
autocmd("BufEnter", {
  pattern = "",
  command = "set fo-=c fo-=r fo-=o"
})

-- Set indentation to 2 spaces
-- autocmd("FileType", {
--   pattern = { "javascript" },
--   command = "setlocal tabstop=2 shiftwidth=2"
-- })

-- last cursor location
autocmd("BufReadPost", {
  command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]]
})
