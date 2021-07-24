call plug#begin('~/.local/share/nvim/plugged')

" -- comment
" Plug 'tpope/vim-commentary'
Plug 'terrortylor/nvim-comment'

" -- snippets
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'

" -- icons
" Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" -- autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" autopairs
Plug 'cohama/lexima.vim'

" Show a diff using Vim its sign column
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" -- whitespaces
Plug 'ntpeters/vim-better-whitespace'

" -- auto align
Plug 'junegunn/vim-easy-align'

" -- table mode
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

" -- indentline
" Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

" -- terminal popup
Plug 'voldikss/vim-floaterm'

" HTML ( change opening tag and take the closing tag )
Plug 'AndrewRadev/tagalong.vim', { 'for': 'html' }

" -- fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" benchmark
Plug 'tweekmonster/startuptime.vim'

" file manager
Plug 'kyazdani42/nvim-tree.lua'

" statusline
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" buffer list
" Plug 'akinsho/nvim-bufferline.lua'
Plug 'romgrk/barbar.nvim'

" autosave
Plug 'Pocco81/AutoSave.nvim'

" surround
Plug 'machakann/vim-sandwich'

" color preview
Plug 'norcalli/nvim-colorizer.lua'

" -- colorscheme
Plug 'rktjmp/lush.nvim'
" Plug 'mnabila/gruvboy.nvim'
Plug '~/gruvbop.nvim'
Plug '~/codedarku.nvim'

" -- code formatter --
" javascript ( syntax & highlighting )
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" php indent
Plug 'nicklasos/vimphphtml'
" -- -- -- --

" -- lsp
" Plug 'neovim/nvim-lspconfig'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'hrsh7th/nvim-compe'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'

" -- translator
" Plug 'voldikss/vim-translator'

" -- smooth scroll
" Plug 'karb94/neoscroll.nvim'

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


" If you have nodejs and yarn
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }


call plug#end()
