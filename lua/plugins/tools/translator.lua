return {
	"voldikss/vim-translator",
	cmd = { "Translate", "TranslateR" },
	config = function()
		vim.g.translator_target_lang = "id"
		vim.g.translator_source_lang = "auto"
	end,
}
