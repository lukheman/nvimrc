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

		vim.keymap.set("n", "gr", "<cmd>Lspsaga finder<cr>")
		vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<cr>")
		vim.keymap.set("n", "dg", "<cmd>Lspsaga show_buf_diagnostics<cr>")
		vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>")
		vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>")
		vim.keymap.set("n", "<leader>k", "<cmd>Lspsaga outline<cr>")
		vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<cr>")
	end,
}
