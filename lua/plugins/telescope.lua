local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		-- ❱❱  ❯
		results_title = false,
		prompt_title = false,
		prompt_prefix = "❱❱ ",
		selection_caret = "❱ ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "descending",
		layout_strategy = "horizontal",
		layout_config = {
			height = 12,
			width = 0.8,
			prompt_position = "top",
		},
		file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = { "node_modules" },
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		winblend = 0,
		border = true,
		borderchars = {
			prompt = { "─", "│", "─", "│", "╭", "╮", "┤", "├" },
			results = { " ", "│", "─", "│", "│", "│", "╯", "╰" },
			preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		},
		path_display = { "truncate" },
		previewer = false,
		color_devicons = true,
		use_less = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,

		-- Developer configurations: Not meant for general override
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
	},
})

vim.keymap.set("n", "<c-f>", builtin.find_files)
vim.keymap.set("n", "<c-p>", builtin.buffers)
