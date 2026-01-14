return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	config = function()
		require("lspsaga").setup({
			ui = {
				border = "single",
				title = true,
				-- kind = { "Class" },
			},
			finder = {
				layout = "normal",
				keys = {
					quit = "<ESC>",
					toggle_or_open = { "o", "<cr>" },
				},
			},
			outline = {
				layout = "normal",
				close_after_jump = true,
				keys = {
					quit = "<ESC>",
					jump = "<RETURN>",
				},
			},
			symbol_in_winbar = {
				enable = false,
				hide_keyword = true,
				show_file = false,
				folder_level = 0,
			},
			lightbulb = { enable = false },
		})

		vim.keymap.set("n", "gr", "<cmd>Lspsaga finder<cr>", { desc = "LSP Finder" })
		vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<cr>", { desc = "Line diagnostics" })
		vim.keymap.set("n", "<leader>D", "<cmd>Lspsaga show_buf_diagnostics<cr>", { desc = "Buffer diagnostics" })
		vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", { desc = "Hover documentation" })
		vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>", { desc = "Rename symbol" })
		vim.keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<cr>", { desc = "Code outline" })
		vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<cr>", { desc = "Go to definition" })
		vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", { desc = "Code action" })
	end,
}
