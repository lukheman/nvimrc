require("lspsaga").setup({
	ui = {
		border = "rounded",
		title = false,
		kind = { "Class" },
	},
	finder = {
		layout = "float",
		keys = {
			quit = "<ESC>",
			toggle_or_open = { "o", "<cr>" },
		},
	},
	outline = {
		layout = "float",
		left_width = 0.4,
		keys = {
			quit = "<ESC>",
		},
	},
	symbol_in_winbar = {
    enable = false,
		hide_keyword = true,
		show_file = false,
		folder_level = 0,
	},
})

vim.keymap.set("n", "gr", "<cmd>Lspsaga finder<cr>")
vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<cr>")
vim.keymap.set("n", "dg", "<cmd>Lspsaga show_buf_diagnostics<cr>")
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>")
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>")
vim.keymap.set("n", "<leader>k", "<cmd>Lspsaga outline<cr>")
vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<cr>")

-- vim.api.nvim_set_hl(0, "SagaNormal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "SagaBorder", { bg = "none" })
