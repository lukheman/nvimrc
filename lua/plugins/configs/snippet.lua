local prequire = require("utils").prequire
local luasnip = prequire("luasnip")
local cmp = prequire("cmp")

local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
	local col = vim.fn.col(".") - 1
	if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
		return true
	else
		return false
	end
end

_G.tab_complete = function()
	if luasnip and luasnip.expand_or_jumpable() then
		return t("<Plug>luasnip-expand-or-jump")
	elseif check_back_space() then
		return t("<C-j>")
	else
		cmp.complete()
	end
	return ""
end

vim.api.nvim_set_keymap("i", "<C-j>", "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap("s", "<C-j>", "v:lua.tab_complete()", { expr = true })

luasnip.filetype_extend("vue", { "html", "css" })
luasnip.filetype_extend("html", { "html", "css", "ejs" })
