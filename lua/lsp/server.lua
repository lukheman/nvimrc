local on_attach = require("lsp").on_attach
local capabilities = require("lsp").capabilities
local lspconfig = require("lspconfig")

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
	html = {
		filetypes = { "html", "ejs" },
	},
	cssls = {
		filetypes = { "html", "css" },
	},
  jsonls = {},
	-- tsserver = {},
}

for name, config in pairs(servers) do
	config.on_attach = on_attach
	config.capabilities = capabilities
	lspconfig[name].setup(config)
end
