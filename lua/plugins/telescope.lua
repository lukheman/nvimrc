local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local themes = require("telescope.themes")
local extensions = require("telescope").extensions

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close,
			},
		},
		prompt_prefix = "❱❱ ",
		selection_caret = "❱ ",
		-- layout_strategy = "center",
		layout_config = {
			-- 	height = 0.8,
			width = 0.8,
		},
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
    lsp_references = {
			theme = "dropdown",
    },
		lsp_document_symbols = {
			theme = "dropdown",
		},
	},
	extensions = {},
})
vim.keymap.set("n", "<c-f>", builtin.find_files)
vim.keymap.set("n", "<c-p>", builtin.buffers)
