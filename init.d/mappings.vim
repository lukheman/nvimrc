" -- leader key
nnoremap <SPACE> <Nop>
let mapleader      = " "
let maplocalleader = " "

" -- reload nvimrc
nmap <leader>so :source $MYVIMRC<cr>

" -- save changes
map s :w! <CR>

" -- buffer
nmap <leader>n :bn <CR>
nmap <leader>p :bp <CR>
nmap <leader>bd :bp<cr>:bd! #<cr>
nmap <leader>bw <c-w><c-o>:bw<cr>

" -- whitespace
nmap <leader>w :StripWhitespace<cr>s

" -- easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" -- run python script
autocmd FileType python map <buffer> rr :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
