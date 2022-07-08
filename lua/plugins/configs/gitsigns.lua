local ok, gitsigns = pcall(require, "gitsigns")

if not ok then
	return
end

gitsigns.setup({
	signs = {
		add = { hl = "GitSignsAdd", text = "▍" },
		change = { hl = "GitSignsChange", text = "▍" },
		changedelete = { hl = "GitSignsChange", text = "▍" },
		delete = { hl = "GitSignsDelete", text = "▍" },
		topdelete = { hl = "GitSignsDelete", text = "▍" },
	},
	update_debounce = 100,
})
