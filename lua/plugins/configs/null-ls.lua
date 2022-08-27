local ok, nulls = pcall(require, "null-ls")

if not ok then
	return
end

nulls.setup({
	sources = {
		-- formatting
		-- lua
		nulls.builtins.formatting.stylua,
    -- js, html, css, vue and others
    nulls.builtins.formatting.prettier
	},
})

local function format()
	vim.lsp.buf.formatting({ async = true })
end

-- keymap
vim.keymap.set("n", "<leader>f", format, { desc = "LSP: Formats the current buffer" })
vim.keymap.set("v", "<leader>f", vim.lsp.buf.range_formatting, { desc = "LSP: Formats a given range" })
