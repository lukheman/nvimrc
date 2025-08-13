-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({

	{ "nvim-tree/nvim-web-devicons", lazy = true },

	{ "wakatime/vim-wakatime", lazy = false },

	{ "kevinhwang91/promise-async", lazy = false },

	{ "MunifTanjim/nui.nvim", lazy = false },

	{ "github/copilot.vim" },

	require("plugins.onedark"),

	-- require("plugins.kanagawa-paper"),

	require("plugins.spectre"),

	-- require("plugins.everblush"),

	require("plugins.telescope"),

	require("plugins.sfm"),

	require("plugins.mini-pairs"),

	-- require("plugins.mini-comment"),

	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
	},

	require("plugins.blink-cmp"),

	-- require("plugins.cmp"),

	require("plugins.autosave"),

	require("plugins.treesitter"),

	require("plugins.code_runner"),

	require("plugins.flash"),

	require("plugins.gitsigns"),

	require("plugins.lspsaga"),

	-- require("plugins.mini-tabline"),

	require("plugins.codecompanion"),

	require("plugins.neogit"),

	require("plugins.which-key"),

	require("plugins.nvim-surround"),

	-- require("plugins.auto-session"),

	require("plugins.conform"),

	require("plugins.screenkey"),

	require("plugins.yazi"),

	require("plugins.copilot"),

	require("plugins.nvim-ufo"),

	require("plugins.smear-cursor"),

	require("plugins.flutter"),

	require("plugins.laravel"),

	require("plugins.hlchunk"),

	require("plugins.lualine"),

	require("plugins.colorizer"),

	-- {
	-- 	"m4xshen/hardtime.nvim",
	-- 	lazy = false,
	-- 	opts = {},
	-- },
})
