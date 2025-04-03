return {
	"NeogitOrg/neogit",
	dependencies = {
		"sindrets/diffview.nvim", -- optional - Diff integration
	},
	cmd = { "Neogit" },
	config = function()
		-- init.lua
		local neogit = require("neogit")
		neogit.setup({})
	end,
}
