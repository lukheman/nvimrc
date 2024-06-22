local indent_blankline = require("indent-blankline")

vim.cmd("highlight IndentBlanklineContextChar guifg=#848b98 gui=nocombine")

indent_blankline.setup({
	show_end_of_line = false,
	space_char_blankline = " ",
	show_first_indent_level = false,
	show_current_context = true,
	show_current_context_start = true,
	char = "│", -- │▏
	filetype_exclude = {
		"NvimTree",
		"Preview",
		"__doc__",
		"dashboard",
		"dashpreview",
		"fzf",
		"help",
		"log",
		"man",
		"markdown",
		"nerdtree",
		"peekaboo",
		"sagahover",
		"startify",
		"terminal",
		"translator",
		"vista",
		"packer",
		"aerial",
		"lspinfo",
		"lspsagafinder",
		"Trouble",
		"alpha",
		"Outline",
		"mason",
	},
	buftype_exclude = { "terminal", "man", "trouble" },
})

-- indentline
-- {
-- 	"lukas-reineke/indent-blankline.nvim",
-- 	cmd = "IndentBlanklineEnable",
-- 	config = function()
-- 		require("plugins.indentline")
-- 	end,
-- }
