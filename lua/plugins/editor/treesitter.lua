return {
	"nvim-treesitter/nvim-treesitter",
	event = "BufReadPre",
	cmd = { "TSInstall", "TSUpdate" },
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"lua",
				"python",
				"javascript",
			},
			highlight = {
				enable = true,
				use_languagetree = true,
				additional_vim_regex_highlighting = true,
			},
		})
	end,
}
