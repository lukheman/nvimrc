return {
	"NeogitOrg/neogit",
	dependencies = {
		-- "sindrets/diffview.nvim", -- optional - Diff integration
	},
	config = function()
		-- init.lua
		local neogit = require("neogit")
		neogit.setup({})
	end,
}
