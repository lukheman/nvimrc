" separator    :  
" subseparator :  


let g:lightline = {
\   'colorscheme': 'codedark',
\   'active': {
\    'left' :[[ 'mode' ],
\             [ 'readonly', 'gitbranch'],
\             [ 'filename' ]],
\    'right':[[ 'lineinfo' ],
\             [ 'parcent' ],
\             [ 'filetype']]
\   },
\   'tab': {
\     'active':   ['tabnum'],
\     'inactive': ['tabnum']
\   },
\   'tabline': {
\   'left': [['buffers']],
\   'right': [['string1']]
\   },
\   'separator': {
\     'left': '', 'right': ''
\   },
\   'subseparator': {
\   'left': '', 'right': ''
\   },
\   'component': {
\     'filename': '%<%{LightlineFileName()}'
\   },
\   'component_function': {
\     'readonly': 'LightlineReadonly',
\     'gitbranch': 'LightlineFugitive',
\     'filetype': 'LightlineFiletype'
\   },
\   'component_expand': {
\     'buffers':   'lightline#bufferline#buffers',
\     'string1':   'String1'
\   },
\   'component_type': {
\     'buffers': 'tabsel'
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

function! LightlineFugitive()
  let branch = fugitive#head()
  return branch !=# '' ? '' : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 50 ? (strlen(&filetype) ? &filetype.' '.WebDevIconsGetFileTypeSymbol() : 'no ft') : WebDevIconsGetFileTypeSymbol()
endfunction

function! String1()
  return ' AKMAL.ID'
endfunction

function! String2()
  return 'BUFFERS'
endfunction
