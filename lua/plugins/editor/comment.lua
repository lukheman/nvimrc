return {
	"numToStr/Comment.nvim",
	-- event = { "BufReadPre", "BufRead", "BufNewFile" },
	keys = { "gl", "gc" },
	config = function()
		local comment = require("Comment")

		comment.setup({
			toggler = {
				line = "gl",
				block = "gc",
			},
			mappings = {
				basic = true,
				extra = false,
				extended = false,
			},
		})
	end,
}
