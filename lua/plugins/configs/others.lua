-- minimal configuration plugins

local M = {}

M.vim_translator = function()
	vim.g.translator_target_lang = "id"
	vim.g.translator_source_lang = "auto"

	vim.keymap.set("v", "<leader>t", "<cmd>Translate<cr>", { desc = "Translate" })
end

M.neogit = function()
	local ok, neogit = pcall(require, "neogit")
	if not ok then
		return
	end

	neogit.setup({
		-- customize displayed signs
		signs = {
			-- { CLOSED, OPENED }
			section = { "", "" },
			item = { "", "" },
			hunk = { "", "" },
		},
	})
end

return M
