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
			require("lsp.server")
			require("lsp.diagnostic")
		end,
		dependencies = {
			"nvimdev/lspsaga.nvim",
			event = "LspAttach",
			config = function()
				require("lsp.saga")
			end,
		},
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plugins.null-ls")
		end,
	},

	-- {
	-- 	"stevearc/aerial.nvim",
	-- 	event = "BufReadPost",
	-- 	cmd = { "AerialToggle", "AerialInfo" },
	-- 	keys = "<leader>at",
	-- 	config = function()
	-- 		require("plugins.aerial")
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

	{ "mattn/emmet-vim", ft = { "html", "ejs" } },

	-- Completion --
	----------------
	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter", "CmdLineEnter" },
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp", lazy = true },
			{ "hrsh7th/cmp-buffer", lazy = true },
			{ "hrsh7th/cmp-path", lazy = true },
			{ "hrsh7th/cmp-cmdline", lazy = true },
			{ "saadparwaiz1/cmp_luasnip", lazy = true },
			-- { "hrsh7th/cmp-nvim-lsp-signature-help", lazy = true },
		},
		config = function()
			require("plugins.cmp")
		end,
	},

	{
		"kevinhwang91/nvim-ufo",
		dependencies = "kevinhwang91/promise-async",
		config = function()
			vim.o.foldcolumn = "0" -- '0' is not bad
			vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true

			-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
			vim.keymap.set("n", "zr", require("ufo").openAllFolds)
			vim.keymap.set("n", "zm", require("ufo").closeAllFolds)

			require("ufo").setup({
				provider_selector = function(bufnr, filetype, buftype)
					return { "treesitter", "indent" }
				end,
			})
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
		event = { "BufRead", "InsertEnter" },
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

	-- terminal
	{
		"akinsho/toggleterm.nvim",
		keys = "<c-t>",
		config = function()
			require("plugins.toggleterm")
		end,
	},

	-- Editor Tools --
	-------------------

	-- File Eexplorer
	-- {
	-- 	"kyazdani42/nvim-tree.lua",
	-- 	keys = "<c-n>",
	-- 	config = function()
	-- 		require("plugins.nvimtree")
	-- 	end,
	-- },

  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = "<c-n>",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("plugins.neo-tree")
    end
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
			require("ccc").setup({
				highlighter = {
					auto_enable = true,
				},
				win_opts = {
					border = "single",
				},
			})
		end,
	},

	{
		"voldikss/vim-translator",
		cmd = {"Translate", "TranslateR"},
		config = function()
			vim.g.translator_target_lang = "id"
			vim.g.translator_source_lang = "auto"
		end,
	},

	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = function()
			require("plugins.comment")
		end,
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

	{
		"windwp/nvim-ts-autotag",
		ft = { "html", "ejs" },
	},

	{
		"https://git.sr.ht/~nedia/auto-save.nvim",
		event = "BufRead",
		config = function()
			require("auto-save").setup({
				events = { "InsertLeave" },
			})
		end,
	},

	-- GIT --
	---------

	{
		"TimUntersberger/neogit",
		cmd = "Neogit",
		keys = "<leader>gn",
		config = function()
			require("neogit").setup({
				-- customize displayed signs
				signs = {
					-- { CLOSED, OPENED }
					section = { "", "" },
					item = { "", "" },
					hunk = { "", "" },
				},
			})
			vim.keymap.set("n", "<leader>gn", "<cmd>Neogit<cr>")
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPost",
		config = function()
			require("plugins.gitsigns")
		end,
	},

	{
		"tpope/vim-fugitive",
		cmd = "G",
		keys = { "<leader>ga", "<leader>gc" },
		config = function()
			vim.keymap.set("n", "<leader>ga", "<cmd>G add %<cr>")
			vim.keymap.set("n", "<leader>gc", "<cmd>G commit<cr>")
		end,
	},
}

require("lazy").setup(plugins)
