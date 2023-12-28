local lspconfig = require("lspconfig")

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
	pyright = {
		settings = {
			python = {
				analysis = {
					autoImportCompletions = false,
				},
			},
		},
	},
	-- html = {
	-- 	filetypes = { "html", "ejs" },
	-- },
	cssls = {
		filetypes = { "css" },
    capabilities = capabilities
	},
	jsonls = {},
	-- tsserver = {},
}

for name, config in pairs(servers) do
	lspconfig[name].setup(config)
end
