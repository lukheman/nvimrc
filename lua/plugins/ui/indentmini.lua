return {
	"nvimdev/indentmini.nvim",
	event = "BufEnter */*",
	config = function()
		require("indentmini").setup({
			exclude = { "sql" },
		})
	end,
}
