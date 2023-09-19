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
	lspconfig[name].setup(config)
end
