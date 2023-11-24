local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		file_ignore_patterns = { "^node_modules/" },
		entry_prefix = "  ",
		initial_mode = "insert",
		prompt_prefix = " ",
		selection_caret = " ",
		path_display = { "smart" },
		scroll_strategy = "limit",
		selection_strategy = "reset",
		sorting_strategy = "descending",
		layout_strategy = "vertical",
		layout_config = {
			width = 0.9,
			preview_cutoff = 0,
			vertical = {
				prompt_position = "bottom",
				mirror = false,
			},
		},
		mappings = {
			i = {
				["<esc>"] = actions.close,
				["<C-c>"] = actions.close,

				["<CR>"] = actions.select_default,
				["<C-h>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,

				["<C-n>"] = actions.cycle_history_next,
				["<C-p>"] = actions.cycle_history_prev,

				["<C-j>"] = actions.move_selection_next,
				["<Down>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<Up>"] = actions.move_selection_previous,

				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,

				["<C-?>"] = actions.which_key,
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
			find_command = { "fd", "--type", "f", "--follow" },
		},
	},
	extensions = {},
})

vim.keymap.set("n", "<c-f>", builtin.find_files)
vim.keymap.set("n", "<c-p>", builtin.buffers)
