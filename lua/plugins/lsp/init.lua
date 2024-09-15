return {
	"neovim/nvim-lspconfig",
	event = { "BufRead", "BufNewFile" },
	config = function()
		require("plugins.lsp.server")
		vim.diagnostic.config({
			-- float = {
			-- 	source = "always",
			-- 	border = "rounded",
			-- 	title = "Diagnostics",
			-- 	title_pos = "left",
			-- 	header = "",
			-- },
			-- virtual_text = { prefix = "" },
			virtual_text = false,
			signs = true,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})

		-- vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
		-- vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
		-- vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
		-- vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
	end,
	dependencies = require("plugins.lsp.lspsaga"),
}
