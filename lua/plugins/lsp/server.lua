local lspconfig = require("lspconfig")
local navic = require("nvim-navic")

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
	if client.server_capabilities.documentSymbolProvider then
		navic.attach(client, bufnr)
	end
end

local servers = {
	pyright = {
		settings = {
			python = {
				analysis = {
					autoImportCompletions = true,
				},
			},
		},
		root_dir = lspconfig.util.root_pattern("*.py"),
		capabilities = capabilities,
	},
	html = {
		filetypes = { "html", "ejs", "handlebars" },
		capabilities = capabilities,
	},
	cssls = {
		filetypes = { "css" },
		capabilities = capabilities,
	},
	jsonls = {},
	ts_ls = {},
	rust_analyzer = {
		settings = {
			["rust-analyzer"] = {
				diagnostics = {
					enable = false,
				},
			},
		},
		-- single_file_support = false,
	},
	emmet_language_server = {
		filetypes = { "html", "php" },
	},
	phpactor = {},
}

for name, config in pairs(servers) do
	config["on_attach"] = on_attach
	lspconfig[name].setup(config)
end
