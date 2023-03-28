local present, lspconfig = pcall(require, "lspconfig")
if not present then
	return
end

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	silent = true,
	max_height = "10",
	border = "single",
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "single",
})

-- On Attach --
---------------

local on_attach = function(client, bufnr)
	local map = function(mode, key, expr, opts)
		opts = vim.tbl_extend("keep", { noremap = true, silent = true, buffer = bufnr }, opts)
		vim.keymap.set(mode, key, expr, opts)
	end
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	map("n", "gd", require("telescope.builtin").lsp_definitions, { desc = "Go to LSP definition" })
	map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to LSP definition" })
	map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
	map({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, { desc = "Show LSP Signature Help" })
	map("n", "<space>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
  map("n", "gr", require("telescope.builtin").lsp_references, { desc = "Go to LSP references" })

end

-- Capabilities --
------------------

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local M = {}
M.on_attach = on_attach
M.capabilities = capabilities
return M
