local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
	return
end

treesitter.setup({
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"lua",
		"python",
    "javascript"
	},
	highlight = {
		enable = true,
		use_languagetree = true,
    additional_vim_regex_highlighting = true
	},
})
