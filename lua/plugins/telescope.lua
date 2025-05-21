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
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"^node_modules/",
					"^env/",
					"__pycache__",
					"env",
					"node_modules",
					"session",
					"vendor",
				},
				entry_prefix = " ",
				initial_mode = "insert",
				prompt_prefix = " ",
				selection_caret = " ",
				path_display = { "filename_first" },
				scroll_strategy = "limit",
				selection_strategy = "reset",
				sorting_strategy = "descending",
				layout_strategy = "bottom_pane",

				-- kotak di tengah
				-- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				-- layout_config = {
				-- 	preview_cutoff = 200,
				-- 	height = 0.6,
				-- 	prompt_position = "bottom",
				-- 	width = 0.7,
				-- },

				layout_config = {
					width = 0.8,
					height = 0.4,
					preview_cutoff = 300,
					prompt_position = "bottom",
				},
				preview = {
					title = true,
				},
				borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
				preview_title = true,
				results_title = false,
				prompt_title = false,

				mappings = {
					i = {
						["<tab>"] = {
							actions.move_selection_previous,
							type = "action",
							opts = { nowait = true, silent = true },
						},
						["<c-tab>"] = {
							actions.move_selection_next,
							type = "action",
							opts = { nowait = true, silent = true },
						},
					},
				},
			},
			pickers = {
				find_files = {
					hidden = false,
					disable_devicons = true,
					find_command = { "fd", "--type", "f", "--follow" },
					prompt_title = false,
				},
				buffers = {
					disable_devicons = true,
				},
			},
		})

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>f", builtin.find_files)
		vim.keymap.set("n", "<leader>b", builtin.buffers)
		vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols)
	end,
}
