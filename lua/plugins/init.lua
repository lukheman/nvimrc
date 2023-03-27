require("lazy").setup({
  -- dependencies
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "nvim-lua/popup.nvim", lazy = true },
	{ "kyazdani42/nvim-web-devicons", lazy = true }, 

  -- UI --
  -- colorschema
	{
    "navarasu/onedark.nvim",
    config = function()
      require "plugins.configs.onedark"
    end
  },

  -- statusline
  {
    "rebelot/heirline.nvim",
    event = "UiEnter",
    config = function()
      require "plugins.configs.heirline"
    end
  },

  -- bufferline
  {
    "willothy/nvim-cokeline",
    event = "BufRead",
		config = function()
      require "plugins.configs.cokeline"
    end
  },

  -- indentline
  {
    "lukas-reineke/indent-blankline.nvim",
    cmd = {
      "IndentBlanklineEnable"
    },
		config = function()
      require "plugins.configs.indentline"
    end
  },

  -- file explorer
	{
    "kyazdani42/nvim-tree.lua",
    keys = "<c-n>",
		config = function()
      require "plugins.configs.nvimtree"
    end
  },

  -- finder file
  {
    "nvim-telescope/telescope.nvim",
    keys = { "<c-f>", "<c-p>" },
    config = function()
      require "plugins.configs.telescope"
    end
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    config = function()
      require "plugins.configs.treesitter"
    end
  },

  -- terminal
	{
		"akinsho/toggleterm.nvim",
    keys = "<c-t>",
		config = function()
      require "plugins.configs.toggleterm"
    end 
	},

  -- Color Picker
  {
    "uga-rosa/ccc.nvim",
    event = "BufRead",
    config = function()
      require "plugins.configs.others".ccc()
    end
  },


  -- EDITOR --
	-- translator
	{
		"voldikss/vim-translator",
    cmd = "Translate",
		config = function()
      require "plugins.configs.others".vim_translator()
    end
	},

  -- auto close and auto rename html tag
  { "windwp/nvim-ts-autotag", ft = { "html", "ejs" }},

  -- comment
	{
    "numToStr/Comment.nvim",
    event = "BufRead",
		config = require "plugins.configs.comment",
  },

  -- navigator
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function()
      require("symbols-outline").setup()
    end
  },

	-- snippet
	{
		"L3MON4D3/LuaSnip", -- snippet engine
    event = "InsertEnter",
		dependencies = "rafamadriz/friendly-snippets", -- snippet collection
		config = function()
      require "plugins.configs.snippet"
    end,
	},

	-- completion
	{
		"hrsh7th/nvim-cmp",
    event = "InsertEnter",
		dependencies = {
			"cmp-nvim-lsp",
			"cmp-buffer",
			"cmp-path",
			"cmp-cmdline",
			"cmp_luasnip",
		},
		config = function()
      require "plugins.configs.cmp"
    end
	},

  { "hrsh7th/cmp-nvim-lsp", lazy = true },
  { "hrsh7th/cmp-buffer", lazy = true },
  { "hrsh7th/cmp-path", lazy = true },
  { "hrsh7th/cmp-cmdline", lazy = true },
  { "saadparwaiz1/cmp_luasnip", lazy = true },

  -- html code completion
  { "mattn/emmet-vim", ft = "html" },

	-- autopairs
	{
    "windwp/nvim-autopairs",
    event = "InsertEnter",
		config = function()
      require "plugins.configs.autopairs"
    end
	},

  -- surround
  { "machakann/vim-sandwich", event = "InsertEnter"},

	-- autosave
	{
		"pocco81/auto-save.nvim",
    event = "InsertLeave",
		config = function()
      require "plugins.configs.autosave"
    end,
	},

  -- filetype
	{
		"nathom/filetype.nvim",
		config = function()
      require "plugins.configs.filetype"
    end
	},

  {
    "jose-elias-alvarez/null-ls.nvim",
    keys = {"<leader>f", mode = { "n", "v" }},
    config = function()
      require "plugins.configs.null-ls"
    end
  },

  -- LSP --
	{
    "neovim/nvim-lspconfig",
		config = function()
      require "plugins.configs.lsp"
    end,
	},

  -- GIT --
  -- magit for neovim
  {
    "TimUntersberger/neogit",
    cmd = { "Neogit" },
    config = function()
      require "plugins.configs.others".neogit()
    end
  },

  -- git integration
	{
		"lewis6991/gitsigns.nvim",
    -- cmd = "Gitsigns",
		config = function()
      require "plugins.configs.gitsigns"
    end
	},

  -- bencmark
  { "tweekmonster/startuptime.vim", cmd = "StartupTime" },

})
