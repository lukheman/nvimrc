return {
	"NeogitOrg/neogit",
	dependencies = {
		"sindrets/diffview.nvim", -- optional - Diff integration
	},
	cmd = { "Neogit" },
	keys = { "<leader>g" },
	config = function()
		-- init.lua
		local neogit = require("neogit")
		neogit.setup({})

		vim.keymap.set("n", "<leader>gv", "<cmd>Neogit<cr>", { noremap = true, silent = true })
	end,
}
