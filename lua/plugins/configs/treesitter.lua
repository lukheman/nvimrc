local ok, treesitter = pcall(require, "nvim-treesitter.configs")

if not ok then
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
	},
})
