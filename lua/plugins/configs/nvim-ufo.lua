vim.wo.foldcolumn = "0"
vim.wo.foldlevel = 10 -- Using ufo provider need a large value, feel free to decrease the value
vim.wo.foldenable = true
-- vim.wo.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

local ok, ufo = pcall(require, "ufo")

if not ok then
	return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

ufo.setup()
