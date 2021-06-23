call plug#begin('~/.local/share/nvim/plugged')

" commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" The NERDTree is a file system explorer for the Vim editor
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Adds Icons to Your Plugins: NERDTree, Lightline, vim-airline and more
Plug 'ryanoasis/vim-devicons'

" This vim plugin adds syntax highlight for nerdtree with vim-deviconsds
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Make your Vim/Neovim as smart as VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto close parentheses and repeat by dot dot dot...
Plug 'cohama/lexima.vim'
" Plug 'jiangmiao/auto-pairs'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" This plugin provides bufferline functionality for the lightline vim plugin
Plug 'mengelbrecht/lightline-bufferline'

" Show a diff using Vim its sign column
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" A command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Correct html indent in php files
Plug 'nicklasos/vimphphtml'

" A trailing whitespace component for the lightline vim plugin
Plug 'maximbaz/lightline-trailing-whitespace'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace'

" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" VIM Table Mode for instant table creation
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

" A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

Plug 'voldikss/vim-floaterm'

" Change an HTML(ish) opening tag and take the closing one along as well
Plug 'AndrewRadev/tagalong.vim', { 'for': 'html' }

" Breakdown Vim's --startuptime output
Plug 'tweekmonster/startuptime.vim'

" Plug 'honza/vim-snippets'

Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'morhetz/gruvbox'

" Plug 'sheerun/vim-polyglot'

call plug#end()

