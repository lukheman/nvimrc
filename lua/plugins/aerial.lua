require("aerial").setup({
	backends = {
		["_"] = { "lsp", "treesitter", "markdown", "man" },
		markdown = { "treesitter" },
	},
	filter_kind = {
		["_"] = {
			"Class",
			"Constructor",
			"Enum",
			"EnumMember",
			"Event",
			"Field",
			"Function",
			"Interface",
			"Key",
			"Method",
			"Module",
			"Namespace",
			"Operator",
			-- "Package", -- this catches for/if ??
			"Property",
			"Struct",
		},
		-- markdown = { "String" },
	},
})

vim.keymap.set("n", "<leader>at", ":AerialToggle<CR>")
