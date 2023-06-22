local nulls = require("null-ls")

local eslint_bin = "node_modules/.bin"
nulls.setup({
	sources = {
		-- lua
		nulls.builtins.formatting.stylua,
		-- js
    nulls.builtins.diagnostics.eslint.with({
      prefer_local = eslint_bin
    }),
    nulls.builtins.formatting.eslint.with({
      prefer_local = eslint_bin
    })
	},
})

vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "LSP Format" })
vim.keymap.set("x", "<leader>f", vim.lsp.buf.format, { desc = "LSP Range Format" })
