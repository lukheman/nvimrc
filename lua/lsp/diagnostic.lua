local fn = vim.fn
local diagnostic = vim.diagnostic

diagnostic.config({
	-- float = {
	-- 	source = "always",
	-- 	border = "rounded",
	-- 	title = "Diagnostics",
	-- 	title_pos = "left",
	-- 	header = "",
	-- },
	virtual_text = { prefix = ""},
	signs = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

vim.keymap.set("n", "<leader>ld", function()
	diagnostic.open_float({ scope = "line" })
end, { desc = "Show line diagnostic" })
