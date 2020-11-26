call plug#begin('~/.config/nvim/plugged')

" Tema text editor
" Plug 'sainnhe/vim-color-forest-night'
" Plug 'Pandas-ID/vim-pandas-monokai'

" A commentary.vim: comment stuff out
" Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" A file explores
Plug 'preservim/nerdtree'

" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more.
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Callback 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'Yggdroot/indentLine'

Plug 'captbaritone/better-indent-support-for-php-with-html'

" plugin for javascript
Plug 'pangloss/vim-javascript'

call plug#end()
