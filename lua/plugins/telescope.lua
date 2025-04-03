return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	cmd = { "Telescope" },
	keys = {
		"<leader>f",
		"<leader>b",
		"<leader>s",
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
			},
		})

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>f", builtin.find_files)
		vim.keymap.set("n", "<leader>b", builtin.buffers)
		vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols)
	end,
}
