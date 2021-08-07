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
    config = require("conf.autosave")
  }

  -- surround
  use {
    'machakann/vim-sandwich',
    -- event = 'BufEnter'
  }

  -- color preview
  use {
    'norcalli/nvim-colorizer.lua',
    cmd = { 'ColorizerToggle' },
    config = require("conf.colorizer")
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
    config = require("conf.vim-floaterm")
  }

  -- benchmark
  use {
    'tweekmonster/startuptime.vim',
  }

  -- table mode
  use {
    'dhruvasagar/vim-table-mode',
    cmd = { 'TableModeToggle' },
    config = require("conf.vim-table-mode").config()
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
    -- event = 'BufEnter',
    config = require("conf.vim-better-whitespace").config()
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
    config = require("conf.telescope")
  }

  -- indentline
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = require("conf.indentline")
  }

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    event = 'VimEnter',
    requires = {
      { 'kyazdani42/nvim-web-devicons' }
    },
    config = require("conf.nvim-tree")
  }

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = require("conf.gitsigns")
  }

  -- statusline
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = require("conf.statusline2"),
  }

  -- buffer list
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = require("conf.barbar")
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

