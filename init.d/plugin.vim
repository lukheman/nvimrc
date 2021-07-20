call plug#begin('~/.local/share/nvim/plugged')

" comment
Plug 'tpope/vim-commentary'

" snippet
Plug 'mattn/emmet-vim'

" icon
" Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" autopairs
Plug 'cohama/lexima.vim'

" Show a diff using Vim its sign column
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" whitespace
Plug 'ntpeters/vim-better-whitespace'

" auto align
Plug 'junegunn/vim-easy-align'

" table mode
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

" indentline
Plug 'Yggdroot/indentLine'

" terminal popup
Plug 'voldikss/vim-floaterm'

" HTML ( change opening tag and take the closing tag )
Plug 'AndrewRadev/tagalong.vim', { 'for': 'html' }

" funzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" benchmark
Plug 'tweekmonster/startuptime.vim'

" file manager
Plug 'kyazdani42/nvim-tree.lua'

" statusline
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" buffer list
Plug 'akinsho/nvim-bufferline.lua'

" autosave
Plug 'Pocco81/AutoSave.nvim'

" -- code formatter --
" javascript ( syntax & highlighting )
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" php indent
Plug 'nicklasos/vimphphtml'
" -- -- -- --

Plug 'honza/vim-snippets'
" Plug 'neovim/nvim-lspconfig'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'hrsh7th/nvim-compe'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
" Plug 'nvim-lua/completion-nvim'
" Plug 'romgrk/barbar.nvim'
" Plug 'machakann/vim-sandwich'
"
" Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'terrortylor/nvim-comment'
" Plug 'voldikss/vim-translator'
" Plug 'karb94/neoscroll.nvim'
" Plug 'norcalli/nvim-colorizer.lua'
Plug 'mnabila/gruvboy.nvim'
Plug 'rktjmp/lush.nvim'
" Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()
