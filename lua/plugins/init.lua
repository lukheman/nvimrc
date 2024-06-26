-- Bootstrap --
---------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- dependencies
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "nvim-lua/popup.nvim", lazy = true },
	{ "kyazdani42/nvim-web-devicons", lazy = true },
	{ "tweekmonster/startuptime.vim", cmd = "StartupTime" },

	---

	{
		"dhruvasagar/vim-table-mode",
		ft = { "markdown " },
	},

	{ "wakatime/vim-wakatime", lazy = false },

	{
		"Fymyte/rasi.vim",
		ft = "rasi",
	},

	{ "mattn/emmet-vim", ft = { "html", "ejs", "markdown" } },

	---
	-- require("plugins.colorscheme.onedark"),

	-- require("plugins.colorscheme.nightsky"),
	require("plugins.colorscheme.solarized-osaka"),

	require("plugins.lsp"),

	require("plugins.editor.conform"),

	require("plugins.editor.treesitter"),

	require("plugins.editor.cmp"),

	require("plugins.editor.comment"),

	require("plugins.editor.autopairs"),

	require("plugins.editor.surround"),

	require("plugins.editor.autosave"),

	require("plugins.editor.align"),

	require("plugins.ui.indentmini"),

	require("plugins.ui.ccc"),

	require("plugins.ui.sentiment"),

	require("plugins.ui.gitsigns"),

	require("plugins.ui.cokeline"),

	require("plugins.tools.toggleterm"),

	require("plugins.tools.translator"),

	-- require("plugins.tools.neogit"),

	require("plugins.tools.runner"),

	require("plugins.navigation.flybuf"),

	require("plugins.navigation.sfm"),

	require("plugins.navigation.telescope"),
}

require("lazy").setup(plugins)
