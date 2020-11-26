"Tampilan
" colorscheme pandas-monokai
" colorscheme forest-night
colorscheme codedark
set termguicolors
set laststatus=2
" Menampilkan nomor baris
set number
" Menampilkan nomor baris secara relative
set relativenumber
" Menampilkan perintah yang dimasukan
set showcmd
" Menyemnunyikan mode neovim
set noshowmode
" Menyorot baris pada cursor
set cursorline

" Beralih mode secara cepat
set ttimeoutlen=0
" Memperbarui tipe file secara berkala
set autoread

set encoding=utf8

" Text formating
" Bungkus text
set wrap
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set conceallevel=0

set showtabline=2

set foldmethod=marker

" menampilkan spasi berupa tanda ·
set list
set listchars=tab:  ,trail:·,extends:>,precedes:<

" mengingat posisi terakhir cursor
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

" mengaktifkan plugin javascript
let g:javascript_plugin_jsdoc = 1

set ttimeoutlen=0
