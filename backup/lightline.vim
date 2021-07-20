" separator    :   
" subseparator :  
" 'filename': '%<%{LightlineFileName()}'
" icon =  

let g:lightline = {
\   'colorscheme': 'gruvbox',
\   'active': {
\    'left' :[[ 'mode', 'paste' ],
\             [ 'filename' ]],
\    'right':[[ 'trailing' ],
\             [ 'lineinfo' ],
\             [ 'filetype']]
\   },
\   'inactive': {
\       'left' : [[ 'filename' ]],
\       'right': [[ 'lineinfo' ]]
\   },
\   'tab': {
\     'active':   ['tabnum'],
\     'inactive': ['tabnum']
\   },
\   'tabline': {
\       'left': [['buffers']],
\       'right': [['string1']]
\   },
\   'separator': {
\       'left': '', 'right': ''
\   },
\   'subseparator': {
\       'left': '', 'right': ''
\   },
\   'component': {
\     'filename': '%t'
\   },
\   'component_function': {
\     'readonly'     : 'LightlineReadonly',
\     'filetype'     : 'LightlineFiletype',
\     'fileencoding' : 'LightlineFileEncoding',
\     'lineinfo'     : 'LightlineLineInfo',
\     'percent'      : 'LightlinePercent',
\     'mode'         : 'LightlineMode'
\   },
\   'component_expand': {
\     'buffers'   : 'lightline#bufferline#buffers',
\     'string1'   : 'String1',
\     'trailing'  : 'LightlineTrailingWhitespace',
\   },
\   'component_type': {
\     'buffers'  : 'tabsel',
\     'trailing' : 'warning'
\   },
\   'mode_map': {
\     'n':      ' NORMAL',
\     'i':      ' INSERT',
\     'R':      ' REPLACE',
\     'v':      ' VISUAL',
\     'V':      ' V-LINE',
\     "\<C-v>": ' V-BLOCK',
\     'c':      ' COMMAND',
\     's':      ' SELECT',
\     'S':      ' S-LINE',
\     "\<C-s>": ' S-BL0CK',
\     't':      ' TERMINAL',
\   }
\}


function! LightlineFileName()
  let filename = expand('%')
  let modified = &modified ? '' : ''
  if filename ==# ''
    return '[NO NAME]'
  endif
  return filename . ' ' . modified
endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 50 ? (strlen(&filetype) ? &filetype.' '.WebDevIconsGetFileTypeSymbol() : 'no ft') : WebDevIconsGetFileTypeSymbol()
endfunction

function! LightlineLineInfo()
  let current_line = printf('%3s', line('.'))
  let current_col  = printf('%-2s', col('.'))
  let lineinfo     = current_line . ':' . current_col
  return &filetype !=? 'term' ? lineinfo : 'TERMINAL'
endfunction

function! LightlinePercent()
  return printf('%2s', (line('.') * 100 / line('$'))) . '%  '
endfunction

function! LightlineMode()
  return lightline#mode()
endfunction

function! LightlineTrailingWhitespace()
  let status = lightline#trailing_whitespace#component()
  return status == 'trailing' ? '!' : ''
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

function! String1()
  return ' AKMAL'
endfunction

set showtabline=2  " Show tabline, 2 show, 1 hide when only 1 buffer, 0 hide
set guioptions-=e  " Don't use GUI tabline
