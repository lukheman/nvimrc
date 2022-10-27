local present, indent_blankline = pcall(require, "indent_blankline")
if not present then
	return
end

vim.cmd("highlight IndentBlanklineContextChar guifg=#848b98 gui=nocombine")

indent_blankline.setup({
	show_end_of_line = false,
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = false,
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
    "mason"
	},
	buftype_exclude = { "terminal", "man", "trouble" },
})
