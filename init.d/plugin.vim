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
"Plug 'jiangmiao/auto-pairs'

" Auto close parentheses and repeat by dot dot dot...
Plug 'cohama/lexima.vim'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" This plugin provides bufferline functionality for the lightline vim plugin
Plug 'mengelbrecht/lightline-bufferline'

" A Vim plugin which shows a git diff in the sign column
" Plug 'airblade/vim-gitgutter'

" Fugitive is the premier Vim plugin for Git
Plug 'tpope/vim-fugitive'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" Plugin yang untuk pencarian file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" memunculkan garis di setiap tab
Plug 'Yggdroot/indentLine'

" Correct html indent in php files
Plug 'nicklasos/vimphphtml'

" plugin untuk javascripit
"Plug 'pangloss/vim-javascript'

Plug 'liuchengxu/vista.vim'
"Plug 'tpope/gem-ctags'

" A surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Kalender vimscript
"Plug 'mattn/calendar-vim'

" A trailing whitespace component for the lightline vim plugin
Plug 'maximbaz/lightline-trailing-whitespace'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace'

" A Switch between single-line and multiline forms of code
Plug 'AndrewRadev/splitjoin.vim'

" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'


"Plug 'sheerun/vim-polyglot'
call plug#end()
