return {
	"Kicamon/markdown-table-mode.nvim",
	ft = { "md", "markdown" },
	config = function()
		require("markdown-table-mode").setup()
	end,
}
