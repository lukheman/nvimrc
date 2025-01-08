return {
	"nvim-telescope/telescope.nvim",
	keys = { "<leader>f", "<c-p>", "<leader>s", "<leader>b" },
	cmd = { "Telescope" },
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "^node_modules/", "^env/", "__pycache__", "env", "node_modules", "session" },
				entry_prefix = " ",
				initial_mode = "insert",
				prompt_prefix = " ",
				selection_caret = " ", -- 
				path_display = { "filename_first" },
				scroll_strategy = "limit",
				selection_strategy = "reset",
				sorting_strategy = "descending",
				layout_strategy = "bottom_pane",
				layout_config = {
					width = 0.8,
					height = 15,
					preview_cutoff = 200,
					prompt_position = "bottom",
				},
				preview = {
					title = true,
				},
				-- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
				-- borderchars = {
				-- 	prompt = { "─", "│", "─", "│", "│", " ┐", "─", "└" },
				-- 	results = { "─", "│", " ", "│", "┌", "─", " ", "│" },
				-- 	preview = { "─", "│", "─", "│", "┬", "┐", "┘", "┴" },
				-- },
				-- dynamic_preview_title = true,
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
				live_grep = {
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"--hidden",
						"--glob=!.git/",
					},
					only_sort_text = true,
				},
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
			extensions = {},
		})

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>f", builtin.find_files)
		vim.keymap.set("n", "<leader>b", builtin.buffers)
		vim.keymap.set("n", "<leader>d", builtin.diagnostics)
		vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols)
		vim.keymap.set("n", "<leader>m", "<cmd>Telescope marks mark_type=local<cr>")
	end,
}
