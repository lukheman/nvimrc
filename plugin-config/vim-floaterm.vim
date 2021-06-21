" let g:floaterm_shell = ''
" let g:floaterm_title = 'floaterm: ($1|$2)'

let g:floaterm_width = 0.9
let g:floaterm_height = 0.4
let g:floaterm_position = 'bottom'

" Navigation
let g:floaterm_keymap_new    = '<leader>fnew'
let g:floaterm_keymap_prev   = '<leader>fp'
let g:floaterm_keymap_next   = '<leader>fn'
let g:floaterm_keymap_toggle = '<leader>ft'

command! FZF FloatermNew fzf
