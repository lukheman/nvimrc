local options = {}

options.config = function()
	local comment = require("Comment")

	comment.setup({
		toggler = {
			line = "m",
			block = "gc",
		},
		mappings = {
			basic = true,
			extra = false,
			extended = false,
		},
	})
end

return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufRead", "BufNewFile" },
	config = options.config,
}
