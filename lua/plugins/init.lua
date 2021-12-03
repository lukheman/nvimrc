local packer = require('packer')

return packer.startup(function()
  -- utils
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'


  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- autopairs
  -- use 'cohama/lexima.vim'
  use {
    'windwp/nvim-autopairs',
    config = require "plugins.configs.completion.autopairs"
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = require "plugins.configs.completion.lsp.lspconfig",
    requires = {
      {
        "ray-x/lsp_signature.nvim",
        config = require "lsp_signature".setup()
      }
    }
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

  -- snippets
  use 'mattn/emmet-vim'
  use { 'honza/vim-snippets', opt = true }

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

  -- use '~/projek/codedark.nvim'
  -- use '~/projek/gruvbox.nvim'
  use 'Mofiqul/vscode.nvim'

  -- benchmark
  use 'tweekmonster/startuptime.vim'

  -- table mode
  use {
    'dhruvasagar/vim-table-mode',
    config = require "plugins.configs.vim-table-mode"
  }

  -- HTML ( change opening tag and take the closing tag )
  use 'AndrewRadev/tagalong.vim'

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
    config = require "plugins.configs.telescope"
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

  use 'tpope/vim-fugitive'

  -- statusline
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    config = require "plugins.configs.galaxyline",
  }

  -- use {
  --   'hoob3rt/lualine.nvim',
  --   config = require "plugins.configs.lualine"
  -- }

  -- buffer list
  use {
    'romgrk/barbar.nvim',
    config = require "plugins.configs.barbar"
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
