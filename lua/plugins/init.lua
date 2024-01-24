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
	-- dependencies
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "nvim-lua/popup.nvim", lazy = true },
	{ "kyazdani42/nvim-web-devicons", lazy = true },
	{ "tweekmonster/startuptime.vim", cmd = "StartupTime" },

	-- lsp server
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

	-- formating
	-- {
	-- 	"nvimtools/none-ls.nvim",
	-- 	event = { "BufRead", "BufNewFile" },
	-- 	config = function()
	-- 		require("plugins.null-ls")
	-- 	end,
	-- },

	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					-- python = { "isort", "black" },
					-- Use a sub-list to run only the first available formatter
					javascript = { { "prettierd", "prettier" } },
				},
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},

	-- highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufReadPre",
		cmd = { "TSInstall", "TSUpdate" },
		-- dependencies = {
		-- 	"windwp/nvim-ts-autotag",
		-- },
		config = function()
			require("plugins.treesitter")
		end,
	},

	-- snippets
	-- {
	-- 	"L3MON4D3/LuaSnip", -- engine
	-- 	event = "InsertEnter",
	-- 	dependencies = "rafamadriz/friendly-snippets", -- snippet collection
	-- 	config = function()
	-- 		require("plugins.snippet")
	-- 	end,
	-- },

	-- emmet
	{ "mattn/emmet-vim", ft = { "html", "ejs", "markdown" } },

	-- completion --
	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter", "CmdLineEnter" },
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp", lazy = true },
			{ "hrsh7th/cmp-buffer", lazy = true },
			{ "hrsh7th/cmp-path", lazy = true },
			{ "hrsh7th/cmp-cmdline", lazy = true },
			-- { "saadparwaiz1/cmp_luasnip", lazy = true },
			{
				"hrsh7th/cmp-vsnip",
				dependencies = {
					"hrsh7th/vim-vsnip",
					"rafamadriz/friendly-snippets",
				},
				init = function()
					vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
					vim.g.vsnip_filetypes = {
						handlebars = {
							"html",
						},
					}
					-- let g:vsnip_filetypes.javascriptreact = ['javascript']
				end,
			},
		},
		config = function()
			require("plugins.cmp")
		end,
	},

	-- folding
	-- {
	-- 	"kevinhwang91/nvim-ufo",
	-- 	dependencies = "kevinhwang91/promise-async",
	-- 	config = function()
	-- 		require("plugins.nvim-ufo")
	-- 	end,
	-- },

	-- colorschema
	{
		"navarasu/onedark.nvim",
		config = function()
			require("plugins.onedark")
		end,
	},

	-- statusline
	{
		"rebelot/heirline.nvim",
		event = "UiEnter",
		config = function()
			require("plugins.heirline")
		end,
	},

	-- bufferline
	{
		"willothy/nvim-cokeline",
		event = { "BufRead", "InsertEnter" },
		dependencies = "stevearc/resession.nvim",
		config = function()
			require("plugins.cokeline")
		end,
	},

	-- indentline
	-- {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	cmd = "IndentBlanklineEnable",
	-- 	config = function()
	-- 		require("plugins.indentline")
	-- 	end,
	-- },

	-- terminal
	{
		"akinsho/toggleterm.nvim",
		keys = "<c-t>",
		config = function()
			require("plugins.toggleterm")
		end,
	},

	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	keys = "<c-n>",
	-- 	dependencies = "MunifTanjim/nui.nvim",
	-- 	config = function()
	-- 		require("plugins.neo-tree")
	-- 	end,
	-- },

	-- file explorer
	{
		"dinhhuy258/sfm.nvim",
		config = function()
			require("plugins.sfm")
		end,
	},

	-- {
	-- 	"theblob42/drex.nvim",
	--    config = function()
	--      require("plugins.drex")
	--    end
	-- },

	-- finder file
	{
		"nvim-telescope/telescope.nvim",
		keys = { "<c-f>", "<c-p>" },
		config = function()
			require("plugins.telescope")
		end,
	},

	-- color picker
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

	-- translator
	{
		"voldikss/vim-translator",
		cmd = { "Translate", "TranslateR" },
		config = function()
			vim.g.translator_target_lang = "id"
			vim.g.translator_source_lang = "auto"
		end,
	},

	-- comment
	{
		"numToStr/Comment.nvim",
		event = "BufReadPre",
		config = function()
			require("plugins.comment")
		end,
	},

	-- autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("plugins.autopairs")
		end,
	},

	{
		"utilyre/sentiment.nvim",
		version = "*",
		event = "VeryLazy", -- keep for lazy loading
		opts = {
			-- config
		},
		init = function()
			-- `matchparen.vim` needs to be disabled manually in case of lazy loading
			vim.g.loaded_matchparen = 1
		end,
	},

	-- surround
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
		"okuuva/auto-save.nvim",
		cmd = "ASToggle", -- optional for lazy loading on command
		event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
		config = function()
			require("plugins.autosave")
		end,
	},

	-- git
	{
		"NeogitOrg/neogit",
		cmd = "Neogit",
		config = true,
	},

	-- show git diff
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPost",
		config = function()
			require("plugins.gitsigns")
		end,
	},

	-- git from neovim
	{
		"tpope/vim-fugitive",
		cmd = "G",
		keys = { "<leader>ga", "<leader>gc" },
		config = function()
			vim.keymap.set("n", "<leader>ga", "<cmd>G add %<cr>")
			vim.keymap.set("n", "<leader>gc", "<cmd>G commit<cr>")
		end,
	},

	{
		"dhruvasagar/vim-table-mode",
		ft = { "markdown " },
	},

	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		--   "BufReadPre path/to/my-vault/**.md",
		--   "BufNewFile path/to/my-vault/**.md",
		-- },
		dependencies = {
			-- see below for full list of optional dependencies 👇
		},
		config = function()
			require("plugins.obsidian")
		end,
	},

	-- {
	-- 	"phaazon/hop.nvim",
	-- 	config = function()
	-- 		require("hop").setup()
	-- 	end,
	-- },

}

opts = {
	ui = {
		size = { width = 1.0, height = 1.0 },
	},
}

require("lazy").setup(plugins, opts)
