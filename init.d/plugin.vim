call plug#begin('~/.local/share/nvim/plugged')

" A commentary.vim: comment stuff out
Plug 'preservim/nerdcommenter'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" The NERDTree is a file system explorer for the Vim editor
Plug 'preservim/nerdtree'

" Adds Icons to Your Plugins: NERDTree, Lightline, vim-airline and more
Plug 'ryanoasis/vim-devicons'

" This vim plugin adds syntax highlight for nerdtree with vim-deviconsds
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Make your Vim/Neovim as smart as VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto Pairs
" Plug 'jiangmiao/auto-pairs'

" Auto close parentheses and repeat by dot dot dot...
Plug 'cohama/lexima.vim'

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

" A surround.vim: quoting/parenthesizing made simple
"Plug 'tpope/vim-surround'

" A trailing whitespace component for the lightline vim plugin
Plug 'maximbaz/lightline-trailing-whitespace'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace'

" A Switch between single-line and multiline forms of code
" Plug 'AndrewRadev/splitjoin.vim'

" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" VIM Table Mode for instant table creation
Plug 'https://github.com/dhruvasagar/vim-table-mode'

" A Vim plugin for visually displaying indent levels in code
Plug 'https://github.com/nathanaelkane/vim-indent-guides'

Plug 'pangloss/vim-javascript'

Plug 'voldikss/vim-floaterm'

" Change an HTML(ish) opening tag and take the closing one along as well
Plug 'AndrewRadev/tagalong.vim'

" The interactive scratchpad for hackers
" Plug 'metakirby5/codi.vim'

" Plug 'honza/vim-snippets'

Plug 'joshdick/onedark.vim'

" Plug 'sheerun/vim-polyglot'

call plug#end()

