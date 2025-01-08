local stl = "%#StatusLine#%="
local items = { "help", "edit", "find files", "quit" }

for i, v in ipairs(items) do
	-- stl = stl .. "%#StatusLine#" .. v:sub(1, 1) .. "%*"
	-- stl = stl .. "%#StatusLineNC#" .. v:sub(2)

	stl = stl .. "[" .. v:sub(1, 1) .. "]"
	stl = stl .. v:sub(2)
	stl = stl .. (i < #items and "  " or "%=")
end

vim.api.nvim_set_var("intro_stl", stl)
vim.api.nvim_set_option_value("statusline", stl, {
	scope = "local",
	win = 0,
})

vim.api.nvim_buf_set_keymap(0, "n", "f", "<cmd>Telescope find_files<cr>", { nowait = true })
