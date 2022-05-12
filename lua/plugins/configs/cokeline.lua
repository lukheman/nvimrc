local ok, cokeline = pcall(require, 'cokeline')
if not ok then return end

local get_hex = require('cokeline/utils').get_hex
local map = require('utils').map

cokeline.setup {
  default_hl = {
    fg = function(buffer)
      return
        buffer.is_focused
        and get_hex('ColorColumn', 'bg')
         or get_hex('Normal', 'fg')
    end,
    bg = function(buffer)
      return
        buffer.is_focused
        and get_hex('Normal', 'fg')
         or get_hex('ColorColumn', 'bg')
    end,
  },
  components = {
    {
      text = function(buffer) return ' ' .. buffer.devicon.icon end,
      fg = function(buffer) return buffer.devicon.color end,
    },
    {
      text = function(buffer) return buffer.unique_prefix end,
      fg = get_hex('Comment', 'fg'),
      style = 'italic',
    },
    {
      text = function(buffer) return buffer.filename .. ' ' end,
    },
    {
      text = '',
      delete_buffer_on_left_click = false,
    },
    {
      text = '',
    }
  },
}

map('n', '<leader>p',   '<Plug>(cokeline-focus-prev)')
map('n', '<leader>n',     '<Plug>(cokeline-focus-next)')
map('n', '<leader>q',     '<cmd>bdelete<cr>')
-- map('n', '<Leader>p', '<Plug>(cokeline-switch-prev)')
-- map('n', '<Leader>n', '<Plug>(cokeline-switch-next)')
