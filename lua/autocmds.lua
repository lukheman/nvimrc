local filetypes = require("utils").filetypes

-- filetypes({
filetypes("cpp",        { shiftwidth=4, tabstop=4, conceallevel=0 })
filetypes("html",       { shiftwidth=2, tabstop=2 })
filetypes("css",        { shiftwidth=2, tabstop=2 })
filetypes("htmldjango", { shiftwidth=2, tabstop=2 })
filetypes("javascript", { shiftwidth=2, tabstop=2 })
filetypes("json",       { shiftwidth=2, tabstop=2, conceallevel=0 })
filetypes("vim",        { shiftwidth=2, tabstop=2, conceallevel=0 })
filetypes("python",     { shiftwidth=4, tabstop=4})
filetypes("lua",        { shiftwidth=2, tabstop=2, softtabstop=2 })
filetypes("php",        { shiftwidth=2, tabstop=2, softtabstop=2 })
filetypes("text",       { nonumber=true, norelativenumber=true })
filetypes("help",       { nonumber=true, norelativenumber=true })

-- ingat posisi terakhir cursor
vim.cmd [[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif ]]

-- run python script
vim.cmd("autocmd FileType python map <buffer> rr :w<cr>:exec '!python3' shellescape(@%, 1)<cr>")

-- run lua script
vim.cmd("autocmd FileType lua map <buffer> rr :w<cr>:exec '!lua' shellescape(@%, 1)<cr>")

-- compile c++ file
vim.cmd("autocmd FileType cpp map <buffer> rr :w<cr>:exec '!g++' shellescape(@%, 1)<cr>:exec '!./a.out'<cr>")
