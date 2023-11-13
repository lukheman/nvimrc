local autopairs = require("nvim-autopairs")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

autopairs.setup({
	pairs_map = {
		["'"] = "'",
		['"'] = '"',
		["("] = ")",
		["["] = "]",
		["{"] = "}",
		["`"] = "`",
	},
	disable_filetype = { "TelescopePrompt" },
	disable_in_macro = false,
	ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]], "%s+", " "),
	enable_moveright = true,
	enable_afterquote = true,
	enable_check_bracket_line = true,
	check_ts = true,
	map_bs = true,
	map_c_w = false,
	fast_wrap = {
		map = "<C-s>",
		chars = { "{", "[", "(", '"', "'" },
		pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
		offset = 0, -- Offset from pattern match
		end_key = "$",
		keys = "qwertyuiop",
		check_comma = true,
		highlight = "Search",
		highlight_grey = "Comment",
	},
})

-- insert `(` after select function or method item
require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
