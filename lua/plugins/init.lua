local packer = require('packer')

return packer.startup(function()
  -- utils
  use 'nvim-lua/plenary.nvim'

  -- autopairs
  use 'cohama/lexima.vim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- autocomplete
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  -- snippets
  use {
    'mattn/emmet-vim',
    ft = { 'html' }
  }

  use 'honza/vim-snippets'

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

  -- colorscheme
  -- use "rktjmp/lush.nvim"

  use '~/projek/codedark.nvim'
  use '~/projek/gruvbox.nvim'
  use '~/projek/onedarker.nvim'
  use '~/nvim-plugins/dracula'

  -- use 'arcticicestudio/nord-vim'
  -- use 'drewtempelmeyer/palenight.vim'
  -- use {
  --   'ellisonleao/gruvbox.nvim',
  --   requires = 'rktjmp/lush.nvim'
  -- }

  -- terminal popup
  -- use {
  --   'voldikss/vim-floaterm',
  --   config = require "plugins.configs.vim-floaterm"
  -- }

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
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-telescope/telescope-fzy-native.nvim'
    },
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
  -- use {
  --   'glepnir/galaxyline.nvim',
  --   branch = 'main',
  --   config = require "plugins.configs.galaxyline",
  -- }

  use {
    'hoob3rt/lualine.nvim',
    config = require "plugins.configs.lualine"
  }

  -- buffer list
  use {
    'romgrk/barbar.nvim',
    config = require "plugins.configs.barbar"
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = require "plugins.configs.treesitter"
  }

end)
