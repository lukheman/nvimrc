local toggleterm = require("toggleterm")

toggleterm.setup({
	size = function(term)
		if term.direction == "horizontal" then
			return 8
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	open_mapping = [[<c-t>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 3,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "horizontal",
	close_on_exit = true,
	shell = vim.o.shell, -- change the default shell
	float_opts = {
		-- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
		border = "single",
		width = 60,
		height = 10,
		winblend = 3,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})
