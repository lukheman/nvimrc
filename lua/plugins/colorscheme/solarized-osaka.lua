return {
	"craftzdog/solarized-osaka.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("solarized-osaka").setup({
			transparent = true,
			styles = {
				comments = { italic = true },
				floats = "normal",
			},
		})

		vim.cmd([[colorscheme solarized-osaka]])
	end,
}
