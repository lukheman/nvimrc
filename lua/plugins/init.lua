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
	-- { "kyazdani42/nvim-web-devicons", lazy = true },
	-- { "tweekmonster/startuptime.vim", cmd = "StartupTime" },

	{ "wakatime/vim-wakatime", lazy = false },

	require("plugins.colorscheme.onedark"),

	-- require("plugins.colorscheme.solarized-osaka"),

	-- require("plugins.colorscheme.everblush"),

	require("plugins.lsp"),

	require("plugins.editor.conform"),

	require("plugins.editor.treesitter"),

	require("plugins.editor.cmp"),

	-- require("plugins.editor.blink-cmp"),

	require("plugins.editor.comment"),

	require("plugins.editor.autopairs"),

	require("plugins.editor.surround"),

	require("plugins.editor.autosave"),

	require("plugins.editor.align"),

	-- require("plugins.ui.indentmini"),

	-- require("plugins.ui.indent-blankline"),

	require("plugins.ui.hlchunk"),

	-- require("plugins.ui.ccc"),

	-- require("plugins.ui.sentiment"),

	require("plugins.ui.gitsigns"),

	-- require("plugins.ui.lualine"),

	require("plugins.ui.cokeline"),

	require("plugins.ui.colorizer"),

	require("plugins.ui.incline"),

	require("plugins.tools.toggleterm"),

	require("plugins.tools.translator"),

	-- require("plugins.tools.runner"),

	require("plugins.tools.code_runner"),

	-- require("plugins.tools.overseer"),

	-- require("plugins.tools.dadbod"),

	require("plugins.tools.oil"),

	-- require("plugins.tools.dbee"),

	require("plugins.tools.nvim-ufo"),

	require("plugins.tools.spectre"),

	-- require("plugins.tools.neogit"),

	require("plugins.tools.which-key"),

	require("plugins.tools.auto-session"),

	require("plugins.tools.todo-comments"),

	-- require("plugins.navigation.flybuf"),

	require("plugins.navigation.sfm"),

	-- require("plugins.navigation.neovim-project"),

	require("plugins.navigation.telescope"),

	require("plugins.navigation.flash"),

	-- require("plugins.navigation.harpoon"),

	-- require("plugins.navigation.marks"),
}

require("lazy").setup(plugins)
