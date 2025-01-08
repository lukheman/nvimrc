local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

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

autocmd({ "BufRead" }, {
	pattern = "*.java",
	callback = function()
		map("", "<C-c>", [[<cmd>TermExec cmd="javac % -d bin && cd bin && java com.tutorial.Main"<cr>]])
	end,
})

autocmd("InsertLeave", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

autocmd("VimEnter", {
	callback = function()
		-- Periksa apakah Neovim dibuka tanpa file
		if vim.fn.argc() == 0 then
			-- Atur buffer menjadi kosong dan set filetype ke 'intro'
			vim.bo.filetype = "intro" -- Set filetype menjadi intro
			return true
		end
	end,
})

autocmd("BufReadPost", {
	callback = function()
		if vim.bo.filetype ~= "intro" then
			vim.opt.statusline = "%f %m %= %y Ln:%l Cl:%c "
			return true
		end
	end,
})
