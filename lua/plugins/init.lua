-- Bootstrap --
---------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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
	-- Dependencies --
	------------------
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "nvim-lua/popup.nvim", lazy = true },
	{ "kyazdani42/nvim-web-devicons", lazy = true },
	{ "tweekmonster/startuptime.vim", cmd = "StartupTime" },


  -- LSP --
  ---------
	{
		"neovim/nvim-lspconfig",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plugins.lsp")
		end,
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		-- keys = {"<leader>f", mode = { "n", "v" }},
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plugins.null-ls")
		end,
	},

	{
		"stevearc/aerial.nvim",
		event = "BufReadPost",
		cmd = { "AerialToggle", "AerialInfo" },
		keys = "<leader>at",
		config = function()
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
		end,
	},

	-- {
	-- 	"simrat39/symbols-outline.nvim",
	-- 	cmd = "SymbolsOutline",
	-- 	config = function()
	-- 		require("symbols-outline").setup()
	-- 	end,
	-- },

	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufReadPre",
		cmd = { "TSInstall", "TSUpdate" },
		config = function()
			require("plugins.treesitter")
		end,
	},

	-- Snippets --
	--------------
	{
		"L3MON4D3/LuaSnip", -- snippet engine
		event = "InsertEnter",
		dependencies = "rafamadriz/friendly-snippets", -- snippet collection
		config = function()
			require("plugins.snippet")
		end,
	},

	{ "mattn/emmet-vim", ft = "html" },

	-- Completion --
	----------------
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp", lazy = true },
			{ "hrsh7th/cmp-buffer", lazy = true },
			{ "hrsh7th/cmp-path", lazy = true },
			{ "hrsh7th/cmp-cmdline", lazy = true },
			{ "saadparwaiz1/cmp_luasnip", lazy = true },
			{ "hrsh7th/cmp-nvim-lsp-signature-help", lazy = true },
		},
		config = function()
			require("plugins.cmp")
		end,
	},


	-- User Interface --
	--------------------

	-- Colorschema
	{
		"navarasu/onedark.nvim",
		config = function()
			require("plugins.onedark")
		end,
	},

	-- Statusline
	{
		"rebelot/heirline.nvim",
		event = "UiEnter",
		config = function()
			require("plugins.heirline")
		end,
	},

	-- Bufferline
	{
		"willothy/nvim-cokeline",
		event = "BufRead",
		config = function()
			require("plugins.cokeline")
		end,
	},

	-- Indentline
	{
		"lukas-reineke/indent-blankline.nvim",
		cmd = "IndentBlanklineEnable",
		config = function()
			require("plugins.indentline")
		end,
	},

	-- -- terminal
	-- {
	-- 	"akinsho/toggleterm.nvim",
	-- 	keys = "<c-t>",
	-- 	config = function()
	-- 		require("plugins.toggleterm")
	-- 	end,
	-- },

	{
		"rebelot/terminal.nvim",
		config = function()
			require("terminal").setup()
		end,
	},

	-- Editor Tools --
	-------------------

	-- File Eexplorer
	{
		"kyazdani42/nvim-tree.lua",
		keys = "<c-n>",
		config = function()
			require("plugins.nvimtree")
		end,
	},

	-- Finder File
	{
		"nvim-telescope/telescope.nvim",
		keys = { "<c-f>", "<c-p>" },
		config = function()
			require("plugins.telescope")
		end,
	},

	{
		"uga-rosa/ccc.nvim",
		event = "BufRead",
		config = function()
			require("plugins.others").ccc()
		end,
	},

	{
		"voldikss/vim-translator",
		cmd = "Translate",
		config = function()
			require("plugins.others").vim_translator()
		end,
	},

	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = require("plugins.comment"),
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("plugins.autopairs")
		end,
	},

	{
		"kylechui/nvim-surround",
		keys = {
			{ mode = "n", "ys" },
			{ mode = "n", "cs" },
			{ mode = "n", "ds" },
			{ mode = "x", "S" },
		},
		config = true,
	},

	{ "windwp/nvim-ts-autotag", ft = { "html", "ejs" } },

	{
		"pocco81/auto-save.nvim",
		event = "InsertLeave",
		config = function()
			require("plugins.autosave")
		end,
	},

	-- GIT --
	---------

	{
		"TimUntersberger/neogit",
		cmd = { "Neogit" },
		config = function()
			require("plugins.others").neogit()
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPost",
		config = function()
			require("plugins.gitsigns")
		end,
	},

	{ "tpope/vim-fugitive", cmd = "G" },

	-- -- filetype
	-- {
	-- 	"nathom/filetype.nvim",
	-- 	config = function()
	-- 		require("plugins.filetype")
	-- 	end,
	-- },
}

require("lazy").setup(plugins)
