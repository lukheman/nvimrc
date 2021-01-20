call plug#begin('~/.local/share/nvim/plugged')

" A commentary.vim: comment stuff out
Plug 'preservim/nerdcommenter'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" A file explores
Plug 'preservim/nerdtree'

" Menampilkan glyps/icon
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Callback 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Plugin untuk mengakses git langsung dari text editor
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Plugin yang untuk pencarian file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" memunculkan garis di setiap tab
Plug 'Yggdroot/indentLine'

Plug 'nicklasos/vimphphtml'

" plugin untuk javascripit 
Plug 'pangloss/vim-javascript'

call plug#end()
