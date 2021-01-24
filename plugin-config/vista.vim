let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" See all the avaliable executives via `:echo g:vista#executives`." ['ale', 'coc', 'ctags', 'lcn', 'nvim_lsp', 'vim_lsc', 'vim_lsp']
let g:vista_default_executive = 'coc'

" widt vista sidebar
let g:vista_sidebar_width = 30

let g:vista_cursor_delay = 0
let g:vista_update_on_text_changed = 1
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }
