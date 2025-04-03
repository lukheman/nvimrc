vim.lsp.config["lua-language-server"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
}

vim.lsp.config["phpactor"] = {
	cmd = { "phpactor", "language-server" },
	filetypes = { "php" },

	root_markers = {
		"composer.json",
		".git",
	},
}

vim.lsp.config["pyright"] = {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
}

vim.lsp.config["emmet_language_server"] = {
	cmd = { "emmet-language-server", "--stdio" },
	filetypes = { "html", "php", "blade" },
}

vim.lsp.config["html"] = {
	cmd = { "vscode-html-language-server", "--stdio" },
	filetypes = { "html", "ejs", "blade" },
}

vim.lsp.config["cssls"] = {
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = { "css" },
}

vim.lsp.enable({
	"lua-language-server",
	"phpactor",
	"pyright",
	"emmet_language_server",
	"html",
	"cssls",
})
