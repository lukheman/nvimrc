local present1, luasnip = pcall(require, "luasnip")
local present2, cmp = pcall(require, "cmp")


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
	if luasnip then
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


luasnip = {
  filetype_extend = {
    vue = { "html", "css" },
    html = { "html", "css" }
  }
}
