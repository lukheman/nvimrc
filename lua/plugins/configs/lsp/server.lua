-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

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
		capabilities = capabilities,
	},
	cssls = {
		capabilities = capabilities,
    filetypes = { "html", "css", "vue" }
	},
	emmet_ls = {
		filetypes = { "html", "css" },
		settings = {
			root_dir = "~",
		},
	},
	tsserver = {
		root_dir = function(fname)
			return vim.loop.cwd()
		end,
	},
}

for server, options in pairs(servers) do
	options["on_attach"] = on_attach
	require("lspconfig")[server].setup(options)
end
