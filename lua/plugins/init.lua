local packer = require("packer")

packer.init({
	-- disable_commands = true,
	display = {
		open_fn = function()
			local result, win, buf = require("packer.util").float({
				border = {
					{ "┌", "FloatBorder" },
					{ "─", "FloatBorder" },
					{ "┐", "FloatBorder" },
					{ "│", "FloatBorder" },
					{ "┘", "FloatBorder" },
					{ "─", "FloatBorder" },
					{ "└", "FloatBorder" },
					{ "│", "FloatBorder" },
				},
			})
			vim.api.nvim_win_set_option(win, "winhighlight", "NormalFloat:Normal")
			return result, win, buf
		end,
	},
})

return packer.startup(function()
	-- Is using a standard Neovim install, i.e. built from source or using a
	-- provided appimage.
	use({
		"lewis6991/impatient.nvim",
		-- config = require("plugins.configs.others").impatient(),
	})

	-- plugins manager
	use("wbthomason/packer.nvim")

	-- utils
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- benchmark
	use("tweekmonster/startuptime.vim")

	-- LSP
	use({
		"neovim/nvim-lspconfig",
		config = require("plugins.configs.lsp"),
		requires = {
			"ray-x/lsp_signature.nvim",
			config = require("plugins.configs.lsp.lsp_signature"),
		},
	})

	-- navigator
	use({
		"simrat39/symbols-outline.nvim",
		config = require("plugins.configs.others").symbolsoutline(),
	})

	-- use({
	-- 	"folke/trouble.nvim",
	-- 	config = require("plugins.configs.others").trouble(),
	-- })

	-- Editors
	-- autocomplete
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lua",
			{
				"L3MON4D3/LuaSnip", -- snippet engine,
				"saadparwaiz1/cmp_luasnip",
				"rafamadriz/friendly-snippets",
				"hrsh7th/vim-vsnip",
				config = require("plugins.configs.snippet"),
			},
		},
		config = require("plugins.configs.cmp"),
	})

	-- autopairs
	use({
		"windwp/nvim-autopairs",
		config = require("plugins.configs.autopairs"),
	})

	-- emmet
	use("mattn/emmet-vim")

	-- autosave
	use({
		"pocco81/auto-save.nvim",
		config = require("plugins.configs.autosave"),
	})

	-- surround
	use("machakann/vim-sandwich")

	-- color preview
	use({
		"norcalli/nvim-colorizer.lua",
		config = require("plugins.configs.colorizer"),
	})

	-- comment
	use({
		"numToStr/Comment.nvim",
		config = require("plugins.configs.comment"),
	})

	-- whitespace
	-- use({
	-- 	"johnfrankmorgan/whitespace.nvim",
	-- 	config = require("plugins.configs.whitespace"),
	-- })

	-- auto folding
	use({
		"kevinhwang91/nvim-ufo",
		requires = "kevinhwang91/promise-async",
		config = require("plugins.configs.nvim-ufo"),
	})

	-- formatter
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = require("plugins.configs.null-ls"),
	})

	-- use({
	-- 	"mhartington/formatter.nvim",
	-- 	config = require("plugins.configs.formatter"),
	-- })

	-- UI
	-- colorschema
	-- use 'mofiqul/vscode.nvim'
	-- use 'folke/tokyonight.nvim'
	use({
		"navarasu/onedark.nvim",
		config = require("plugins.configs.onedark"),
	})

	-- indentline
	use({
		"lukas-reineke/indent-blankline.nvim",
		config = require("plugins.configs.indentline"),
	})

	-- fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		config = require("plugins.configs.telescope"),
	})

	-- file explorer
	use({
		"kyazdani42/nvim-tree.lua",
		config = require("plugins.configs.nvimtree"),
	})

	-- statusline
	use({
		"feline-nvim/feline.nvim",
		config = require("plugins.configs.feline.tilt"),
	})

	-- buffer list
	use({
		"noib3/nvim-cokeline",
		config = require("plugins.configs.cokeline"),
	})

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		config = require("plugins.configs.treesitter"),
	})

	-- auto close and auto rename html tag
	use("windwp/nvim-ts-autotag")

	-- git
	use({
		"lewis6991/gitsigns.nvim",
		config = require("plugins.configs.gitsigns"),
	})

	use({
		"TimUntersberger/neogit",
		config = require("plugins.configs.others").neogit(),
	})

	-- terminal
	use({
		"akinsho/toggleterm.nvim",
		config = require("plugins.configs.toggleterm"),
	})

	-- translator
	use({
		"voldikss/vim-translator",
		config = require("plugins.configs.others").vim_translator(),
	})
end)
