local autocmd = vim.api.nvim_create_autocmd

-- remove whitespace on save
autocmd("BufWritePre", {
	pattern = "",
	command = ":%s/\\s\\+$//e",
})

-- don't auto commenting new line
autocmd("BufEnter", {
	pattern = "",
	command = "set fo-=c fo-=r fo-=o",
})

-- last cursor location
autocmd("BufReadPost", {
	command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]],
})

autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.ejs",
	command = "set filetype=html",
})

-- custom statusline
autocmd("BufReadPost", {
	callback = function()
		if vim.bo.filetype ~= "intro" then
			vim.opt.statusline = "%f %m %= %y %l:%c "
			return true
		end
	end,
})
