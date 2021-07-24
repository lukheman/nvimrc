local packer = require('packer')


return packer.startup(function()
  -- autopairs
  use "cohama/lexima.vim"

  -- autocomplete
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  -- snippets
  use 'mattn/emmet-vim'
  use 'honza/vim-snippets'

  -- auto align
  use 'junegunn/vim-easy-align'

  -- autosave
  use {
    'Pocco81/AutoSave.nvim',
    config = require("plugins.autosave").config()
  }

  -- surround
  use 'machakann/vim-sandwich'

  -- color preview
  use {
    'norcalli/nvim-colorizer.lua',
    config = require("plugins.colorizer").config()
  }

  -- terminal popup
  use {
    'voldikss/vim-floaterm',
    config = require("plugins.vim-floaterm").config()
  }

  -- benchmark
  use 'tweekmonster/startuptime.vim'

  -- table mode
  use 'dhruvasagar/vim-table-mode'

  -- HTML ( change opening tag and take the closing tag )
  use 'AndrewRadev/tagalong.vim'

  -- comment
  use {
    "terrortylor/nvim-comment",
    cmd = require('nvim_comment').setup()
  }

  -- whitespace
  use {
    'ntpeters/vim-better-whitespace',
    config = require("plugins.vim-better-whitespace").config()
  }

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'kyazdani42/nvim-web-devicons'}
    },
    config = require("plugins.telescope").config()
  }

  -- indentline
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = require("plugins.indentline").config()
  }

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      { 'kyazdani42/nvim-web-devicons' }
    },
    config = require("plugins.nvim-tree").config()
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = require("plugins.gitsigns").config()
  }

  -- statusline
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = require("plugins.galaxyline").config(),
  }

  -- buffer list
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = require("plugins.barbar").config()
  }

  -- code formatter --
  -- javascript ( syntax & highlighting )
  use 'pangloss/vim-javascript'

  -- php indent
  use 'nicklasos/vimphphtml'

end)

