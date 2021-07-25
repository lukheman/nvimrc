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
    config = require("plugins.autosave").config()
  }

  -- surround
  use {
    'machakann/vim-sandwich',
    event = 'BufEnter'
  }

  -- color preview
  use {
    'norcalli/nvim-colorizer.lua',
    config = require("plugins.colorizer").config()
  }

  -- terminal popup
  use {
    'voldikss/vim-floaterm',
    event = 'BufEnter',
    config = require("plugins.vim-floaterm").config()
  }

  -- benchmark
  use {
    'tweekmonster/startuptime.vim',
    cmd = 'StartupTime'
  }

  -- table mode
  use {
    'dhruvasagar/vim-table-mode',
    cmd = { 'TableModeToggle' },
    config = require("plugins.vim-table-mode").config()
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
    event = 'BufEnter',
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
    event = 'BufEnter',
    config = require("plugins.indentline").config()
  }

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    --cmd = 'NvimTreeToggle',
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

