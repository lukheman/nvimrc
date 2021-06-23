" Basic
set encoding=UTF-8
set t_Co=256
set nocompatible
syntax enable
filetype plugin indent on

" General
" set clipboard=unnamedplus
set clipboard+=unnamedplus
set hidden
set wildmenu
set wildmode=full
set ttimeoutlen=0             " Beralih mode secara cepat
set autoread                  " Memperbarui tipe file secara berkala

" Interface
colorscheme gruvbox
" set background=dark
" set termguicolors
set incsearch                 " incremental search aka search as       you type
set hlsearch                  " highlight search matches
set smartcase                 " but when the query starts with upper character be case sensitive
set ignorecase
set laststatus=2              " always show the status line
set linespace=0               " don't move the cursor to first non-blank character after some command
set novisualbell              " don't blink
set nu                        " turn on line number on selected line
set relativenumber            " turn on line number
set report=0                  " tell us when anything is changed
set ruler                     " always show current positions along the bottom
set fillchars+=eob:\ ,vert:\| " vertical sparator and en of buffer
set foldmethod=marker
set foldlevel=0               " default unfold when open a file
set shortmess=aAtToO          " shortens messages to avoid 'press a key' prompt
set showcmd                   " show the command being typed
set showmode                  " show current mode
set showmatch                 " show matching brackets
" set scrolloff=3               " keep 10 lines (top/bottom) for scope
set sidescrolloff=8           " keep 5 lines at the size
set cursorline                " visually mark current line
" set showbreak=↪               " indicate wrapped line
hi clear ModeMsg              " disable Color StatusLine on Insert Mode and Visual Mode
highlight clear SignColumn

" menampilkan spasi berupa tanda ·
" set list
set listchars=tab:  ,trail:·,extends:>,precedes:<
" set listchars=tab:\ ,trail:·,extends:>,precedes:<
set nostartofline             " don't move the cursor to first non-blank character after some command
set noshowmode                " Menyemnunyikan mode neovim

" Text Formating
set wrap                      " wrap text
set formatoptions=cqt         " see :help fo-table
set infercase                 " case inferred by default
set shiftround                " round the indent to shiftwidth (when   at 3 spaces, and I hit > go to 4, not 5)
set expandtab                 " no real tabs please!
set shiftwidth=4              " auto-indent amount when using >> <<
set softtabstop=4             " when hitting tab or backspace, how m  any spaces should a tab be (see expandtab)
set tabstop=4                 " real tabs should be 4, and they will   show with set list on
set autoindent
set smartindent
set conceallevel=0
set linebreak

" mengingat posisi terakhir cursor
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

" pengaturan cursor

" highlight Cursor guifg=white guibg=lightskyblue
" highlight iCursor guifg=white guibg=lightskyblue
set guicursor=n-v-c:block " ubah cursor menjadi shape

" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10

set guicursor=
