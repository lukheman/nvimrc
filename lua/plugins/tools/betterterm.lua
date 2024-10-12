return {
	"CRAG666/betterTerm.nvim",
	config = function()
		local betterTerm = require("betterTerm")

		-- this is a config example
		betterTerm.setup({
			prefix = "CRAG_",
			startInserted = false,
			position = "bot",
			size = 15,
		})

		-- toggle firts term
		vim.keymap.set({ "n" }, "<leader>t", betterTerm.open, { desc = "Open terminal" })
		-- Select term focus
		vim.keymap.set({ "n" }, "<leader>tt", betterTerm.select, { desc = "Select terminal" })
		-- Create new term
		local current = 2
		vim.keymap.set({ "n" }, "<leader>tn", function()
			betterTerm.open(current)
			current = current + 1
		end, { desc = "New terminal" })
	end,
}
