return {
	"lewis6991/gitsigns.nvim",
	event = "BufReadPost",
	config = function()
		local gitsigns = require("gitsigns")

		gitsigns.setup({
			-- signs = {
			-- 	add = { text = "│" },
			-- 	change = { text = "│" },
			-- 	delete = { text = "│" },
			-- 	topdelete = { text = "│" },
			-- 	changedelete = { text = "│" },
			-- 	untracked = { text = "│" },
			-- },
			signcolumn = true,
			numhl = false,
		})
	end,
}
