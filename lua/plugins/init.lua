local packer = require('packer')


return packer.startup(function()
  -- package manager
  use({ "wbthomason/packer.nvim" })

  -- autopairs
  use "cohama/lexima.vim"

  -- autocomplete
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  use {
    "NvChad/nvim-base16.lua"
  }

  -- snippets
  use {
    'mattn/emmet-vim',
    ft = { "html" }
  }
  use 'honza/vim-snippets'

  -- auto align
  use {
    'junegunn/vim-easy-align',
    event = 'BufEnter'
  }

  -- autosave
  use {
    'Pocco81/AutoSave.nvim',
    config = require "plugins.configs.autosave"
  }

  -- surround
  use {
    'machakann/vim-sandwich',
  }

  -- color preview
  use {
    'norcalli/nvim-colorizer.lua',
    -- event = "BufRead",
    config = require "plugins.configs.colorizer"
  }

  -- colorscheme
  -- use {
  --   'rktjmp/lush.nvim',
  --   cmd = 'Lushify'
  -- }
  -- use 'arcticicestudio/nord-vim'
  -- use 'drewtempelmeyer/palenight.vim'

  -- terminal popup
  use {
    'voldikss/vim-floaterm',
    config = require "plugins.configs.vim-floaterm"
  }

  -- benchmark
  use {
    'tweekmonster/startuptime.vim',
  }

  -- table mode
  use {
    'dhruvasagar/vim-table-mode',
    cmd = { 'TableModeToggle' },
    config = require "plugins.configs.vim-table-mode"
  }

  -- HTML ( change opening tag and take the closing tag )
  use {
    'AndrewRadev/tagalong.vim',
    ft = { "html" }
  }

  -- comment
  use {
    "terrortylor/nvim-comment",
    cmd = require('nvim_comment').setup()
  }

  -- whitespace
  use {
    'ntpeters/vim-better-whitespace',
    -- config = require "plugins.configs.vim-better-whitespace"
  }

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'kyazdani42/nvim-web-devicons'},
      {'nvim-telescope/telescope-fzy-native.nvim'}
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
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = require "plugins.configs.nvimtree"
  }

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = require "plugins.configs.gitsigns"
  }

  -- statusline
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = require "plugins.configs.statusline2",
  }

  -- buffer list
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = require "plugins.configs.barbar"
  }

  -- translator
  -- use {
  --   'voldikss/vim-translator',
  --   event = 'BufEnter',
  --   config = require("conf.translator").config()
  -- }

  -- code formatter --
  -- javascript ( syntax & highlighting )
  use {
    'pangloss/vim-javascript',
    ft = { 'javascript' }
  }

  -- php indent
  use {
    'nicklasos/vimphphtml',
    ft = { 'php' }
  }

end)

