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
