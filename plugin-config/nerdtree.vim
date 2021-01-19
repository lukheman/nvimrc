let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let NERDTreeCaseSensitiveSort = 1
let NERDTreeNaturalSort = 1
let NERDTreeShowHidden = 0
let NERDTreeStatusline = 1
let NERDTreeWinSize = 30
let NERDTreeWinSizeMax = 30
let NERDTreeMinimalUI = 1
let NERDTreeMinimalMenu = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

