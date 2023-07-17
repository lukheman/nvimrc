local neotree = require("neo-tree")

neotree.setup({
	window = {
		mappings = {
			["e"] = function()
				vim.api.nvim_exec("Neotree focus filesystem left", true)
			end,
			["b"] = function()
				vim.api.nvim_exec("Neotree focus buffers left", true)
			end,
			["g"] = function()
				vim.api.nvim_exec("Neotree focus git_status left", true)
			end,
		},
	},
	popup_border_style = "rounded",
	filesystem = {
		filtered_items = {
			hide_by_name = {
				"node_modules",
			},
		},
	},
})

vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<cr>")
