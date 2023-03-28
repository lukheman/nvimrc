local nulls = require("null-ls")
local map = vim.keymap.set

nulls.setup({
	sources = {
		-- formatting
		-- lua
		nulls.builtins.formatting.stylua,
		-- js, html, css, vue and others
		nulls.builtins.formatting.prettier,
	},
})

map("n", "<leader>f", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "LSP Format" })
map("x", "<leader>f", vim.lsp.buf.format, { desc = "LSP Range Format" })
