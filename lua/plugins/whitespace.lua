local ok, whitespace = pcall(require, "whitespace-nvim")
if not ok then
	return
end

whitespace.setup({
	-- configuration options and their defaults
	-- `highlight` configures which highlight is used to display
	-- trailing whitespace
	highlight = "DiffDelete",

	-- `ignored_filetypes` configures which filetypes to ignore when
	-- displaying trailing whitespace
	ignored_filetypes = { "TelescopePrompt", "toggleterm" },
})

-- remove trailing whitespace with a keybinding
vim.api.nvim_set_keymap("n", "<leader>w", [[<cmd>lua require('whitespace-nvim').trim()<CR>]], { noremap = true })
