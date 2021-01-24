" my leader key
nnoremap <SPACE> <Nop>
let mapleader      = " "
let maplocalleader = " "

" source nvimrc
nmap <leader>so :source $MYVIMRC<cr>

" another way to esc mode
imap jj <Esc>

" membuka NERDTree
map <C-n> :NERDTreeToggle<CR>
" membuat tab baru
map <C-t> :tabnew<CR>
" menyimpan perubahan pada file
map ss :w! <CR>
" melihat Buffers
map <C-p> :Buffers <CR>
" Mencari file
map <C-f> :Files <CR>

" Berpindah ke buffer selanjutnya
nmap <leader>n :bn <CR>
" Berpindah ke buffer sebelumnya
nmap <leader>b :bp <CR>
" Menutup buffer
nmap <leader>bd :bp<cr>:bd! #<cr>

" Menghilangkan whitespace
nmap <leader>W :StripWhitespace<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g.gaip)
nmap ga <Plug>(EasyAlign)
