local nulls = require("null-ls")

nulls.setup({
	sources = {
		-- formatting
		-- lua
		nulls.builtins.formatting.stylua,
		-- js, html, css, vue and others
		nulls.builtins.formatting.prettier,
	},
})

vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "LSP Format" })
vim.keymap.set("x", "<leader>f", vim.lsp.buf.format, { desc = "LSP Range Format" })
