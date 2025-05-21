return {
	"Everblush/nvim",
	name = "everblush",
	config = function()
		vim.cmd("colorscheme everblush")

		require("everblush").setup({

			-- Default options
			override = {},
			transparent_background = false,
			nvim_tree = {
				contrast = false,
			},

			-- Configuration examples

			-- Override the default highlights using Everblush or other colors
			override = {
				-- Normal = { fg = "#ffffff", bg = "comment" },
			},

			-- Set transparent background
			transparent_background = true,

			-- Set contrast for nvim-tree highlights
			nvim_tree = {
				contrast = true,
			},
		})
	end,
}
