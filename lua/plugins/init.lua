local packer = require('packer')

packer.init({
  display = {
    prompt_border = 'rounded'
  }
})

return packer.startup(function()
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
    config = function()
      require("trouble").setup {}
    end
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
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip'
    },
    config = require "plugins.configs.completion.cmp"
  }

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
  use 'mofiqul/vscode.nvim'

  -- benchmark
  use 'tweekmonster/startuptime.vim'

  -- table mode
  use 'dhruvasagar/vim-table-mode'

  -- HTML ( change opening tag and take the closing tag )
  use 'AndrewRadev/tagalong.vim'

  -- markdown
  use {
    "ellisonleao/glow.nvim",
    config = require "plugins.configs.glow"
  }

  -- comment
  use {
    "terrortylor/nvim-comment",
    config = require('plugins.configs.comment')
  }

  -- whitespace
  use 'ntpeters/vim-better-whitespace'


  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
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
  -- use {
  --   'glepnir/galaxyline.nvim',
  --   branch = 'main',
  --   config = require "plugins.configs.galaxyline",
  -- }

  use {
    'feline-nvim/feline.nvim',
    config = require "plugins.configs.feline"
  }

  -- buffer list
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = require 'plugins.configs.barbar'
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require "plugins.configs.treesitter"
  }

  -- terminal
  use {
    "akinsho/toggleterm.nvim",
    config = require "plugins.configs.toggleterm"
  }


end)
