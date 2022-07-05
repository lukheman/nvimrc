local packer = require('packer')

packer.init({
  display = {
    prompt_border = 'rounded'
  }
})

return packer.startup(function()
  -- Is using a standard Neovim install, i.e. built from source or using a
  -- provided appimage.
  use {
    'lewis6991/impatient.nvim',
    config = require 'plugins.configs.others'.impatient()
  }

  -- plugins manager
  use 'wbthomason/packer.nvim'

  -- utils
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- autopairs
  use {
    'windwp/nvim-autopairs',
    config = require 'plugins.configs.completion.autopairs'
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = require "plugins.configs.completion.lsp.lspconfig",
    requires = {
      {
        "ray-x/lsp_signature.nvim",
        config = require "plugins.configs.completion.lsp.lsp_signature"
      }
    }
  }
  use {
    "folke/trouble.nvim",
    config = require 'plugins.configs.others'.trouble()
  }

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lua',
      {
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',
        'hrsh7th/vim-vsnip',
        config = require 'plugins.configs.completion.snippet'
      }
    },
    config = require "plugins.configs.completion.cmp"
  }

  -- emmet
  use 'mattn/emmet-vim'

  -- auto align
  use 'junegunn/vim-easy-align'

  -- autosave
  use {
    'Pocco81/AutoSave.nvim',
    config = require "plugins.configs.autosave"
  }

  -- surround
  use 'machakann/vim-sandwich'

  -- color preview
  use {
    'norcalli/nvim-colorizer.lua',
    config = require "plugins.configs.colorizer"
  }

  -- colorschema
  -- use 'mofiqul/vscode.nvim'
  use {
    'navarasu/onedark.nvim',
    config = require 'plugins.configs.onedark'
  }

  -- benchmark
  use 'tweekmonster/startuptime.vim'

  -- table mode
  use 'dhruvasagar/vim-table-mode'

  -- markdown
  -- use {
  --   "ellisonleao/glow.nvim",
  --   config = require "plugins.configs.glow"
  -- }

  -- comment
  use {
    'numToStr/Comment.nvim',
    config = require 'plugins.configs.Comment'
  }

  -- whitespace
  use 'ntpeters/vim-better-whitespace'


  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    config = require 'plugins.configs.telescope'
  }

  -- indentline
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = require "plugins.configs.indentline"
  }

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    config = require "plugins.configs.nvimtree"
  }
  -- use {
  -- "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v2.x",
  --   requires = { "MunifTanjim/nui.nvim" },
  --   config = require "plugins.configs.neo-tree"
  -- }

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    config = require "plugins.configs.gitsigns"
  }

  use {
    'TimUntersberger/neogit',
    config = require "plugins.configs.neogit"
  }

  -- statusline

  use {
    'feline-nvim/feline.nvim',
    config = require "plugins.configs.feline.bubble"
  }

  -- buffer list
  -- use {
  --   'romgrk/barbar.nvim',
  --   config = require 'plugins.configs.barbar'
  -- }

  use {
    'noib3/nvim-cokeline',
    config = require 'plugins.configs.cokeline'
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require "plugins.configs.treesitter"
  }

  -- auto close and auto rename html tag
  use 'windwp/nvim-ts-autotag'

  -- terminal
  use {
    "akinsho/toggleterm.nvim",
    config = require "plugins.configs.toggleterm"
  }

  -- translator
  use {
    "voldikss/vim-translator",
    config = require "plugins.configs.vim-translator"
  }

  -- use {
  --   'goolord/alpha-nvim',
  --   config = require 'plugins.configs.alpha'
  -- }

  use {
    "mhartington/formatter.nvim",
    config = require "plugins.configs.formatter"
  }

  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async',
    config = require "plugins.configs.nvim-ufo"
  }

  use {
    'booperlv/nvim-gomove',
    config = require "plugins.configs.nvim-gomove"
  }

end)
