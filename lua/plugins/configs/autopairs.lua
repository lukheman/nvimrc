local present1, autopairs = pcall(require, "nvim-autopairs")
local present2, cmp = pcall(require, "cmp")

if not (present1 and present2) then
	return
end

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
local cmp_autopairs = require "nvim-autopairs.completion.cmp"
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
